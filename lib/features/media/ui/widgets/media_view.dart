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
    ReaderState extends BlocReadState<MediaModel>,
    WriterBloc extends StateStreamable<WriterState>,
    WriterState extends BlocWriteState<MediaModel>> extends StatefulWidget {
  final void Function(File file) onUpload;
  final void Function(MediaModel item) onSuccess;
  final void Function(MediaModel item)? onDownload;
  final void Function(MediaModel item)? onTap;
  final List<String> allowedExtensions;

  const MediaView({
    super.key,
    required this.onUpload,
    required this.onSuccess,
    this.onDownload,
    this.onTap,
    this.allowedExtensions = const ['jpg', 'jpeg', 'png', 'mp4'],
  });

  @override
  State<MediaView> createState() =>
      _MediaViewState<ReaderBloc, ReaderState, WriterBloc, WriterState>();
}

class _MediaViewState<
        ReaderBloc extends StateStreamable<ReaderState>,
        ReaderState extends BlocReadState<MediaModel>,
        WriterBloc extends StateStreamable<WriterState>,
        WriterState extends BlocWriteState<MediaModel>>
    extends BaseState<MediaView> {
  ElegantNotification? uploadToast;
  ElegantNotification? downloadToast;

  bool showUploadToast = false;
  bool showDownloadToast = false;

  bool isUploading = false;
  bool isDownloading = false;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    uploadToast ??=
        context.buildLoaderToast(title: context.str?.uploadingAssets);
    downloadToast ??=
        context.buildLoaderToast(title: context.str?.downloadingAssets);
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: [
        BlocListener<ReaderBloc, ReaderState>(
          listener: (context, state) {
            state.whenOrNull(
              loading: (count, total) {
                if (count != null && total != null) {
                  context.read<LoadingCubit>().startLoading(
                        count: count,
                        total: total,
                      );
                }
              },
              success: (_, __, selected) {
                if (showDownloadToast) {
                  downloadToast?.dismiss();
                  context.read<LoadingCubit>().stopLoading();
                  const dir = '/Download/DayOfTraining';

                  context.successToast(
                    title: context.str?.success,
                    description: 'Saved at $dir/${selected?.name}',
                  );
                  setState(() {
                    showDownloadToast = false;
                    isDownloading = false;
                    downloadToast = context.buildLoaderToast(
                        title: context.str?.downloadingAssets);
                  });
                }
              },
              failure: (error) {
                downloadToast?.dismiss();
                context.read<LoadingCubit>().stopLoading();
                context.errorToast(
                  title: context.str?.error,
                  description: error,
                );
                setState(() {
                  showDownloadToast = false;
                  isDownloading = false;
                  downloadToast = context.buildLoaderToast(
                      title: context.str?.downloadingAssets);
                });
              },
            );
          },
        ),
        BlocListener<WriterBloc, WriterState>(
          listener: (context, state) {
            state.whenOrNull(
              loading: (count, total) {
                if (count != null && total != null) {
                  context.read<LoadingCubit>().startLoading(
                        count: count,
                        total: total,
                      );
                }
                if (count != null && total != null && count == total) {
                  context.infoToast(
                    title: context.str?.processing,
                    description: context.str?.pleaseWaitAssetIsBeingProcessed,
                  );
                }
              },
              success: (item) {
                uploadToast?.dismiss();
                context.read<LoadingCubit>().stopLoading();
                context.successToast(
                  title: context.str?.success,
                  description: context.str?.assetUploadSuccess,
                );
                widget.onSuccess(item);
                setState(() {
                  showUploadToast = false;
                  isUploading = false;
                  downloadToast = context.buildLoaderToast(
                      title: context.str?.downloadingAssets);
                });
              },
              failure: (error) {
                uploadToast?.dismiss();
                context.read<LoadingCubit>().stopLoading();
                context.errorToast(
                  title: context.str?.error,
                  description: error,
                );
                setState(() {
                  showUploadToast = false;
                  isUploading = false;
                  downloadToast = context.buildLoaderToast(
                      title: context.str?.downloadingAssets);
                });
              },
            );
          },
        ),
        BlocListener<LoadingCubit, LoadingState>(
          listener: (context, state) {
            if (state.isLoading == true) {
              if (showUploadToast && !isUploading) {
                setState(() {
                  isUploading = true;
                });
                uploadToast?.show(context);
              }

              if (showDownloadToast && !isDownloading) {
                setState(() {
                  isDownloading = true;
                });
                downloadToast?.show(context);
              }
            }
            if (state.isLoading == false) {
              setState(() {
                showUploadToast = false;
                showDownloadToast = false;
              });
              if (showUploadToast) {
                uploadToast?.dismiss();
              }
              if (showDownloadToast) {
                downloadToast?.dismiss();
              }
            }
          },
        ),
      ],
      child: Parent(
        floatingActionButton: BlocBuilder<LoadingCubit, LoadingState>(
          builder: (context, state) {
            return FloatingActionButtonExtended(
              isLoading: state.isLoading == true,
              onPressed: () async {
                final res = await sl<FilePickerService>().picker.pickFiles(
                      allowMultiple: false,
                      allowedExtensions: widget.allowedExtensions,
                      type: FileType.custom,
                    );
                if (!context.mounted) return;
                if (res == null) {
                  context.errorToast(
                    title: context.str?.error,
                    description: context.str?.noFileSelected,
                  );
                  return;
                }
                final file = File(res.files.single.path!);
                setState(() {
                  showUploadToast = true;
                });
                widget.onUpload(file);
              },
              label: BodySmall(context.str?.upload),
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
                  if (filteredItems.isEmpty) {
                    return SizedBox(
                      height: 55.h,
                      child: ErrorAlert(context.str?.assetsIsEmpty),
                    );
                  }
                  return GridViewBuilder(
                    items: filteredItems,
                    scrollController: scrollController,
                    itemBuilder: (context, item) {
                      return _buildMediaItem(
                        context,
                        item,
                        onDownload: widget.onDownload,
                        onTap: widget.onTap,
                      );
                    },
                  );
                },
                orElse: () {
                  final fakeMedias =
                      List.generate(10, (index) => MediaModel.fake());

                  return GridViewBuilder(
                    items: fakeMedias,
                    scrollController: scrollController,
                    itemBuilder: (context, item) => Skeletonizer(
                      child: _buildMediaItem(
                        context,
                        item,
                        onDownload: widget.onDownload,
                        onTap: widget.onTap,
                      ),
                    ),
                  );
                },
              );
            },
          ),
        ),
      ),
    );
  }

  Widget _buildMediaItem(
    BuildContext context,
    MediaModel media, {
    void Function(MediaModel item)? onDownload,
    void Function(MediaModel item)? onTap,
  }) {
    return GridViewBuilderTile(
      titleText: media.name,
      media: media.determineLoader(context, width: 150.h, height: 150.h),
      onTap: () {
        if (onTap != null) {
          onTap(media);
        }
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          MoonButton.icon(
            icon: const Icon(MoonIcons.generic_download_24_light),
            onTap: () {
              if (onDownload != null) {
                setState(() {
                  showDownloadToast = true;
                });
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
                    title: Text(context.str?.assetInfo ?? 'Asset Info'),
                    content: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        BodySmall('${context.str?.name}: ${media.name}'),
                        BodySmall('${context.str?.type}: ${media.type.value}'),
                        BodySmall('${context.str?.size}: ${media.fileSize}'),
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
                                  label: BodySmall(context.str?.urlCopied),
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
                        child: Text(context.str?.close ?? 'Close'),
                      ),
                    ],
                  );
                },
              );
            },
          ),
          if (onTap != null) ...[
            MoonButton.icon(
              icon: const Icon(MoonIcons.generic_check_alternative_24_light),
              onTap: () => onTap(media),
            ),
          ]
        ],
      ),
    );
  }
}
