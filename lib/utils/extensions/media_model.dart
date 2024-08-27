import 'package:cached_network_image/cached_network_image.dart';
import 'package:dot_coaching/core/core.dart';
import 'package:dot_coaching/features/feature.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

extension MediaExt on MediaModel {
  static const imageType = [
    MediaType.imageJpeg,
    MediaType.imageJpg,
    MediaType.imagePng,
  ];
  static const bitmapType = [
    MediaType.imageSvgXml,
  ];

  static const videoType = [
    MediaType.videoMp4,
  ];

  Widget determineLoader(
    BuildContext context, {
    double? width,
    double? height,
    BoxFit fit = BoxFit.cover,
    bool asDialog = true,
  }) {
    if (MediaExt.imageType.contains(type)) {
      return CachedNetworkImage(
        imageUrl: thumbUrl ?? url,
        fit: fit,
        width: width,
        height: height,
      );
    }
    if (MediaExt.bitmapType.contains(type)) {
      return SvgPicture.network(
        thumbUrl ?? url,
        fit: fit,
        width: width,
        height: height,
      );
    }

    if (MediaExt.videoType.contains(type) && thumbUrl != null) {
      if (!asDialog) {
        return DedicatedVideoPlayer(
          url: url,
          thumbUrl: thumbUrl ?? AppConstants.SPORT_IMAGE,
          width: width,
          height: height,
          fit: fit,
        );
      }
      return CachedNetworkImage(
        imageUrl: thumbUrl!,
        fit: fit,
        width: width,
        height: height,
        // add play button
        imageBuilder: (context, imageProvider) {
          return Container(
            width: width,
            height: height,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: imageProvider,
                fit: fit,
              ),
            ),
            child: Center(
              child: IconButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return VideoPlayerDialog(
                        url: url,
                        name: name,
                      );
                    },
                  );
                },
                icon: const Icon(
                  Icons.play_circle_fill,
                  size: 50,
                  color: Colors.white,
                ),
              ),
            ),
          );
        },
      );
    }

    return const Center(
      child: Text('Unknown media type'),
    );
  }
}
