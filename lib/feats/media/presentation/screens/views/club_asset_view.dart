import 'package:dot_coaching/core/core.dart';
import 'package:dot_coaching/feats/feats.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:skeletonizer/skeletonizer.dart';

class ClubAssetView extends StatelessWidget {
  final List<MediaModel> medias;
  final bool isLoading;
  final int clubId;
  final Function(MediaModel media)? onTap;

  const ClubAssetView({
    super.key,
    required this.medias,
    this.onTap,
    required this.isLoading,
    required this.clubId,
  });

  @override
  Widget build(BuildContext context) {
    return Parent(
      body: RefreshIndicator(
        onRefresh: () {
          return context.read<MediaCubit>().getAll(
                parent: MediaParent.club,
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
            return AssetContainer(media: fakeMedias[index], onTap: onTap);
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
        return AssetContainer(media: medias[index], onTap: onTap);
      },
    );
  }
}
