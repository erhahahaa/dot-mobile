import 'dart:io';

import 'package:dot_coaching/app/di.dart';
import 'package:dot_coaching/core/core.dart';
import 'package:dot_coaching/features/feature.dart';
import 'package:dot_coaching/utils/utils.dart';
import 'package:elegant_notification/elegant_notification.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:moon_design/moon_design.dart';
import 'package:skeletonizer/skeletonizer.dart';

class MediaView<
    ReaderBloc extends StateStreamable<ReaderState>,
    ReaderState extends BlocStateRead<MediaModel>,
    WriterBloc extends StateStreamable<WriterState>,
    WriterState extends BlocStateWrite<MediaModel>> extends StatefulWidget {
  final ClubModel? club;
  final void Function(File file) onUpload;
  final void Function(MediaModel item) onSuccess;
  final void Function(MediaModel item)? onDownload;

  const MediaView(
    this.club, {
    super.key,
    required this.onUpload,
    required this.onSuccess,
    this.onDownload,
  });

  @override
  State<MediaView> createState() =>
      _MediaViewState<ReaderBloc, ReaderState, WriterBloc, WriterState>();
}

class _MediaViewState<
    ReaderBloc extends StateStreamable<ReaderState>,
    ReaderState extends BlocStateRead<MediaModel>,
    WriterBloc extends StateStreamable<WriterState>,
    WriterState extends BlocStateWrite<MediaModel>> extends State<MediaView> {
  ElegantNotification? toast;

  bool isToastShowing = false;
  bool isDownloading = false;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    toast ??= context.buildUploadToast();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: [
        BlocListener<WriterBloc, WriterState>(
          listener: (context, state) {
            state.whenOrNull(
              success: (item) {
                toast?.dismiss();
                context.read<LoadingCubit>().stopLoading();
                context.successToast(
                  title: 'Success',
                  description: 'Media uploaded successfully',
                );
                widget.onSuccess(item);
              },
              failure: (error) {
                toast?.dismiss();
                context.read<LoadingCubit>().stopLoading();
                context.errorToast(
                  title: 'Error',
                  description: error,
                );
              },
              loading: (count, total) {
                if (count != null && total != null) {
                  context.read<LoadingCubit>().startLoading(
                        count: count,
                        total: total,
                      );
                }
              },
            );
          },
        ),
        BlocListener<LoadingCubit, LoadingState>(
          listener: (context, state) {
            if (state.isLoading == true) {
              if (!isToastShowing) {
                setState(() {
                  isToastShowing = true;
                });
                toast?.show(context);
              }
            }
            if (state.isLoading == false) {
              if (isToastShowing) {
                setState(() {
                  isToastShowing = false;
                });
                toast?.dismiss();
              }
            }
          },
        ),
        BlocListener<ReaderBloc, ReaderState>(
          listener: (context, state) {
            state.whenOrNull(
              success: (_, __, selected) {
                if (isDownloading) {
                  Log.info('Media downloaded successfully');
                  const dir = '/Download/DayOfTraining';

                  context.successToast(
                    title: 'Success',
                    description: 'Saved at $dir/${selected?.name}',
                  );
                  setState(() {
                    isDownloading = false;
                  });
                }
              },
              failure: (error) {
                context.errorToast(
                  title: 'Error',
                  description: error,
                );
              },
            );
          },
        ),
      ],
      child: ParentWithSearchAndScrollController(
        builder: (child, search, scroll, showScrollToTopButton) {
          return Parent(
            floatingActionButton: BlocBuilder<LoadingCubit, LoadingState>(
              builder: (context, state) {
                return FloatingActionButtonExtended(
                  isLoading: state.isLoading == true,
                  onPressed: () async {
                    final res = await sl<FilePickerService>().picker.pickFiles(
                          allowMultiple: false,
                          allowedExtensions: ['jpg', 'jpeg', 'png', 'mp4'],
                          type: FileType.custom,
                        );
                    if (!context.mounted) return;
                    if (res == null) {
                      context.errorToast(
                        title: 'Error',
                        description: 'No file selected',
                      );
                      return;
                    }
                    final file = File(res.files.single.path!);

                    widget.onUpload(file);
                  },
                  label: const BodySmall('Upload'),
                  icon: const Icon(Icons.upload),
                );
              },
            ),
            body: Padding(
              padding: EdgeInsets.all(8.w),
              child: BlocBuilder<ReaderBloc, ReaderState>(
                builder: (context, state) {
                  return state.maybeWhen(
                    success: (_, filteredItems, __) {
                      return GridViewBuilder(
                        items: filteredItems,
                        scrollController: scroll,
                        itemBuilder: (context, item) {
                          return _buildMediaItem(
                            context,
                            item,
                            widget.onDownload,
                          );
                        },
                      );
                    },
                    orElse: () {
                      final fakeMedias =
                          List.generate(10, (index) => MediaModel.fake());

                      return GridViewBuilder(
                        items: fakeMedias,
                        scrollController: scroll,
                        itemBuilder: (context, item) => Skeletonizer(
                          child: _buildMediaItem(
                            context,
                            item,
                            widget.onDownload,
                          ),
                        ),
                      );
                    },
                  );
                },
              ),
            ),
          );
        },
      ),
    );
  }

  Widget _buildMediaItem(
    BuildContext context,
    MediaModel media,
    void Function(MediaModel item)? onDownload,
  ) {
    return GridViewBuilderTile(
      titleText: media.name,
      imageUrl: media.thumbUrl ?? media.url,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          MoonButton.icon(
            icon: const Icon(MoonIcons.generic_download_24_light),
            onTap: () {
              if (onDownload != null) {
                setState(() {
                  isDownloading = true;
                });
                Log.error('Download media: ${media.name}');
                onDownload(media);
              }
            },
          ),
          MoonButton.icon(
            icon: const Icon(MoonIcons.generic_about_24_light),
            onTap: () {
              showAdaptiveDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    title: const Text('Asset Info'),
                    content: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        BodySmall('Name: ${media.name}'),
                        BodySmall('Type: ${media.type.value}'),
                        BodySmall('Size: ${media.fileSize}'),
                        Row(
                          children: [
                            Expanded(child: BodySmall('URL: ${media.url}')),
                            InkWell(
                              child: const Icon(
                                Icons.copy,
                              ),
                              onTap: () {
                                media.url.toClipboard();
                                MoonToast.show(
                                  context,
                                  leading: Icon(
                                    MoonIcons.generic_check_rounded_24_light,
                                    color: context.moonColors?.hit,
                                  ),
                                  label: const BodySmall('URL copied'),
                                );
                              },
                            )
                          ],
                        )
                      ],
                    ),
                    actions: [
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: const Text('Close'),
                      ),
                    ],
                  );
                },
              );
            },
          ),
        ],
      ),
    );
  }
}
