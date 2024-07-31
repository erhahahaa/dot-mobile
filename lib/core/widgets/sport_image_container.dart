import 'dart:io';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:dot_coaching/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SportImageContainer extends StatelessWidget {
  final String? imageUrl;
  final double? width;
  final double? height;
  final BoxFit? fit;
  final BorderRadius? borderRadius;
  final void Function()? onPressed;
  final File? file;

  const SportImageContainer({
    super.key,
    this.imageUrl,
    this.width,
    this.height,
    this.fit,
    this.borderRadius,
    this.onPressed,
    this.file,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        if (file != null) ...[
          Image.file(
            file!,
            width: width ?? 150.w,
            height: height ?? 100.w,
            fit: fit ?? BoxFit.cover,
          ),
        ] else ...[
          CachedNetworkImage(
            imageUrl: sportImage(imageUrl),
            width: width ?? 150.w,
            height: height ?? 100.w,
            imageBuilder: (context, imageProvider) => Container(
              width: width ?? 150.w,
              height: height ?? 100.w,
              decoration: BoxDecoration(
                borderRadius: borderRadius ?? BorderRadius.circular(12.r),
                image: DecorationImage(
                  image: imageProvider,
                  fit: fit ?? BoxFit.cover,
                  colorFilter: ColorFilter.mode(
                    Colors.black.withOpacity(0.2),
                    BlendMode.darken,
                  ),
                ),
              ),
            ),
            placeholder: (context, url) => CircularProgressIndicator(),
            errorWidget: (context, url, error) => Icon(Icons.error),
          ),
        ],
        Positioned(
          bottom: 16.w,
          right: 16.w,
          child: Container(
            width: 48.w,
            height: 48.w,
            decoration: BoxDecoration(
              color: context.theme.colorScheme.surface,
              shape: BoxShape.circle,
            ),
            child: Center(
                child: IconButton(
              onPressed: onPressed,
              icon: Icon(
                Icons.photo_camera,
                size: 24.w,
                color: context.theme.colorScheme.primary,
              ),
            )),
          ),
        ),
      ],
    );
  }
}
