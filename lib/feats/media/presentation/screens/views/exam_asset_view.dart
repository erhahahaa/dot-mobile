import 'package:dot_coaching/core/core.dart';
import 'package:dot_coaching/feats/feats.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:oktoast/oktoast.dart';
import 'package:skeletonizer/skeletonizer.dart';

class ExamAssetView extends StatefulWidget {
  final List<MediaModel> medias;
  final int clubId;
  final bool showUploadButton;
  final bool isLoading;
  final Function(MediaModel media)? onTap;
  final double? width, height;

  const ExamAssetView({
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
  State<ExamAssetView> createState() => _ExamAssetViewState();
}

class _ExamAssetViewState extends State<ExamAssetView> {
  @override
  Widget build(BuildContext context) {
    return Parent(
      floatingActionButton: widget.showUploadButton == true
          ? FloatingButtonExtended(
              onPressed: () {
                context.read<MediaCubit>().upload(
                  MediaParent.exam,
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
                parent: MediaParent.exam,
                clubId: widget.clubId,
              );
        },
        child: _buildGridMedias(context),
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
