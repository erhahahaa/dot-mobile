import 'package:cached_network_image/cached_network_image.dart';
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

  Widget determineLoader({double? width, double? height}) {
    if (MediaExt.imageType.contains(type)) {
      return CachedNetworkImage(
        imageUrl: url.sanitize(),
        width: width,
      );
    }
    if (MediaExt.bitmapType.contains(type)) {
      return SvgPicture.network(
        url.sanitize(),
        width: width,
      );
    }

    return const Center(
      child: Text('Unknown media type'),
    );
  }
}
