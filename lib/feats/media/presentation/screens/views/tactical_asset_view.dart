import 'package:dot_coaching/core/core.dart';
import 'package:dot_coaching/feats/feats.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:skeletonizer/skeletonizer.dart';

class TacticalAssetView extends StatelessWidget {
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
  Widget build(BuildContext context) {
    return Parent(
      floatingActionButton: showUploadButton == true
          ? FloatingButtonExtended(
              onPressed: () {
                context.read<MediaCubit>().upload(
                      MediaParent.tactical,
                      clubId,
                    );
              },
              icon: const Icon(Icons.upload),
              text: 'Upload',
              isDisabled: isLoading,
              isLoading: isLoading,
            )
          : null,
      body: RefreshIndicator(
        onRefresh: () {
          return context.read<MediaCubit>().getAll(
                parent: MediaParent.tactical,
                clubId: clubId,
              );
        },
        child: _buildGridMedias(context),
      ),
    );
  }

  Widget _buildGridMedias(BuildContext context) {
    if (isLoading) {
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
              onTap: onTap,
              width: width,
              height: height,
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
      itemCount: medias.length,
      itemBuilder: (context, index) {
        return AssetContainer(
          media: medias[index],
          onTap: onTap,
          width: width,
          height: height,
        );
      },
    );
  }
}
