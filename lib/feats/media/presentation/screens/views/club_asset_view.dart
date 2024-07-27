import 'package:dot_coaching/core/core.dart';
import 'package:dot_coaching/feats/feats.dart';
import 'package:flutter/material.dart';

class ClubAssetView extends StatelessWidget {
  final List<MediaModel> medias;
  final Function(MediaModel media)? onTap;

  const ClubAssetView({super.key, required this.medias, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Parent(
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
