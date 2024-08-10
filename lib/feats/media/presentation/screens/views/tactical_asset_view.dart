import 'package:dot_coaching/core/core.dart';
import 'package:dot_coaching/feats/feats.dart';
import 'package:dot_coaching/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:oktoast/oktoast.dart';
import 'package:skeletonizer/skeletonizer.dart';

class TacticalAssetView extends StatefulWidget {
  final List<MediaModel> medias;
  final int clubId;
  final bool showUploadButton;
  final Function(MediaModel media)? onTap;
  final bool isLoading;
  final double? width, height;

  const TacticalAssetView({
    super.key,
    required this.medias,
    required this.clubId,
    required this.showUploadButton,
    this.onTap,
    required this.isLoading,
    this.width,
    this.height,
  });

  @override
  State<TacticalAssetView> createState() => _TacticalAssetViewState();
}

class _TacticalAssetViewState extends State<TacticalAssetView> {
  BuildContext? dialogContext;
  @override
  Widget build(BuildContext context) {
    return BlocListener<MediaCubit, MediaState>(
      listener: (context, state) {
        if (state.state == BaseState.loading) {
          if (dialogContext == null) {
            showDialog(
              context: context,
              barrierDismissible: false,
              builder: (ctx) {
                dialogContext = ctx;
                return BlocProvider.value(
                  value: context.read<MediaCubit>(),
                  child: BlocBuilder<MediaCubit, MediaState>(
                    builder: (context, state) {
                      return AlertDialog(
                        content: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            LinearProgressIndicator(
                              value: (state.count ?? 0) / (state.total ?? 1),
                            ),
                            const SizedBox(height: 16),
                            Text(
                              'Uploading: ${((state.count ?? 0) / (state.total ?? 1) * 100).toStringAsFixed(2)}%',
                              style: context.theme.textTheme.bodyLarge,
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                );
              },
            );
          }
        } else if (state.state == BaseState.success ||
            state.state == BaseState.failure) {
          if (dialogContext != null) {
            Navigator.of(dialogContext!).pop();
            dialogContext = null;
          }
        }
      },
      child: Parent(
        floatingActionButton: widget.showUploadButton == true
            ? FloatingButtonExtended(
                onPressed: () {
                  context.read<MediaCubit>().upload(
                    MediaParent.tactical,
                    widget.clubId,
                    onSendProgress: (p0, p1) {
                      if (p0 == p1) {
                        showToast(
                          'Upload success',
                          position: ToastPosition.bottom,
                        );
                      }
                    },
                  );
                },
                text: 'Upload',
                icon: Icon(Icons.upload),
                isLoading: widget.isLoading,
                isDisabled: widget.isLoading,
              )
            : null,
        body: RefreshIndicator(
          onRefresh: () {
            return context.read<MediaCubit>().getAll(
                  parent: MediaParent.tactical,
                  clubId: widget.clubId,
                );
          },
          child: _buildGridMedias(context),
        ),
      ),
    );
  }

  Widget _buildGridMedias(BuildContext context) {
    if (widget.isLoading) {
      final fakeMedias =
          List.generate(6, (index) => MediaModel.fake()).toList();

      return Skeletonizer(
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 8,
            mainAxisSpacing: 8,
            childAspectRatio: (1 / 1.5),
          ),
          itemCount: fakeMedias.length,
          itemBuilder: (context, index) {
            return AssetContainer(
              media: fakeMedias[index],
              onTap: widget.onTap,
              width: widget.width,
              height: widget.height,
            );
          },
        ),
      );
    }

    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 8,
        mainAxisSpacing: 8,
        childAspectRatio: (1 / 1.5),
      ),
      itemCount: widget.medias.length,
      itemBuilder: (context, index) {
        return AssetContainer(
          media: widget.medias[index],
          onTap: widget.onTap,
          width: widget.width,
          height: widget.height,
        );
      },
    );
  }
}
