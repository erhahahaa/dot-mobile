import 'package:dot_coaching/core/core.dart';
import 'package:dot_coaching/feats/feats.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ExerciseAssetView extends StatelessWidget {
  final List<MediaModel> medias;
  final int clubId;
  final bool showUploadButton;
  final Function(MediaModel media)? onTap;

  const ExerciseAssetView({
    super.key,
    required this.medias,
    required this.clubId,
    required this.showUploadButton,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Parent(
      floatingActionButton: showUploadButton == true
          ? FloatingActionButton.extended(
              onPressed: () {
                context.read<MediaCubit>().upload(
                      MediaParent.exam,
                      clubId,
                    );
              },
              label: const Row(
                children: [
                  Icon(Icons.upload),
                  Text('Upload'),
                ],
              ),
            )
          : null,
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 8,
          mainAxisSpacing: 8,
          childAspectRatio: (1 / 1.2),
        ),
        itemCount: medias.length,
        itemBuilder: (context, index) {
          return AssetContainer(media: medias[index], onTap: onTap);
        },
      ),
    );
  }
}
