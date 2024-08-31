import 'package:cached_network_image/cached_network_image.dart';
import 'package:dot_coaching/core/core.dart';
import 'package:dot_coaching/features/feature.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';

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
    bool useThumb = true,
  }) {
    if (MediaExt.imageType.contains(type)) {
      return GestureDetector(
        onTap: () {
          showDialog(
            context: context,
            builder: (ctx) {
              return Dialog(
                insetPadding: EdgeInsets.zero,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Row(
                      children: [
                        Gap(8.w),
                        TitleMedium(name),
                        Spacer(),
                        IconButton(
                          onPressed: () {
                            Navigator.pop(ctx);
                          },
                          icon: const Icon(Icons.close),
                        ),
                        Gap(8.w),
                      ],
                    ),
                    CachedNetworkImage(
                      imageUrl: useThumb ? thumbUrl ?? url : url,
                      fit: fit,
                      width: 0.95.sw,
                      height: 0.9.sh,
                    ),
                  ],
                ),
              );
            },
          );
        },
        child: CachedNetworkImage(
          imageUrl: useThumb ? thumbUrl ?? url : url,
          fit: fit,
          width: width,
          height: height,
        ),
      );
    }
    if (MediaExt.bitmapType.contains(type)) {
      return GestureDetector(
        onTap: () {
          showDialog(
            context: context,
            builder: (ctx) {
              return Dialog(
                insetPadding: EdgeInsets.zero,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Row(
                      children: [
                        Gap(8.w),
                        TitleMedium(name),
                        Spacer(),
                        IconButton(
                          onPressed: () {
                            Navigator.pop(ctx);
                          },
                          icon: const Icon(Icons.close),
                        ),
                        Gap(8.w),
                      ],
                    ),
                    SvgPicture.network(
                      useThumb ? thumbUrl ?? url : url,
                      fit: fit,
                      width: 0.95.sw,
                      height: 0.9.sh,
                    ),
                  ],
                ),
              );
            },
          );
        },
        child: SvgPicture.network(
          useThumb ? thumbUrl ?? url : url,
          fit: fit,
          width: width,
          height: height,
        ),
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
