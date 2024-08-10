import 'package:cached_network_image/cached_network_image.dart';
import 'package:dot_coaching/core/core.dart';
import 'package:dot_coaching/feats/feats.dart';
import 'package:dot_coaching/utils/utils.dart';
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
  }) {
    if (MediaExt.imageType.contains(type)) {
      return CachedNetworkImage(
        imageUrl: url.sanitize(),
        fit: fit,
        width: width,
        height: height,
      );
    }
    if (MediaExt.bitmapType.contains(type)) {
      return SvgPicture.network(
        url.sanitize(),
        fit: fit,
        width: width,
        height: height,
      );
    }

    if (MediaExt.videoType.contains(type) && thumbUrl != null) {
      return Stack(
        children: [
          Positioned.fill(
            child: CachedNetworkImage(
              imageUrl: thumbUrl!.sanitize(),
              fit: fit,
              width: width,
              height: height,
            ),
          ),
          Center(
            child: IconButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) {
                    return VideoPlayerDialog(
                      url: url.sanitize(),
                    );
                  },
                );
              },
              icon: Icon(
                Icons.play_circle_fill,
                size: 50,
                color: Colors.white,
              ),
            ),
          ),
        ],
      );
    }

    return const Center(
      child: Text('Unknown media type'),
    );
  }
}

extension MediaEmbedExt on MediaEmbedModel {
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

  Widget determineLoader(BuildContext context,
      {double? width,
      double? height,
      BoxFit fit = BoxFit.cover,
      bool asDialog = true}) {
    if (MediaExt.imageType.contains(type)) {
      return CachedNetworkImage(
        imageUrl: url.sanitize(),
        width: width,
        height: height,
        fit: fit,
      );
    }
    if (MediaExt.bitmapType.contains(type)) {
      return SvgPicture.network(
        url.sanitize(),
        width: width,
        height: height,
        fit: fit,
      );
    }

    if (MediaExt.videoType.contains(type) && thumbUrl != null) {
      if (asDialog) {
        return Stack(
          children: [
            Positioned.fill(
              child: CachedNetworkImage(
                imageUrl: thumbUrl!.sanitize(),
                width: width,
                height: height,
                fit: fit,
              ),
            ),
            Center(
              child: IconButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return VideoPlayerDialog(
                        url: url.sanitize(),
                      );
                    },
                  );
                },
                icon: Icon(
                  Icons.play_circle_fill,
                  size: 50,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        );
      } else {
        return DedicatedVideoPlayer(
          url: url.sanitize(),
          thumbUrl: thumbUrl!.sanitize(),
          width: width,
          height: height,
          fit: fit,
        );
      }
    }

    return const Center(
      child: Text('Unknown media type'),
    );
  }
}
