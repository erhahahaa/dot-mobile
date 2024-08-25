import 'dart:io';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:dot_coaching/core/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget imageFallback(File? image, String? url) {
  Widget imageWidget;
  if (image != null) {
    imageWidget = Image.file(image);
  } else if (url != null) {
    imageWidget = CachedNetworkImage(
      imageUrl: url,
      width: 150.w,
      height: 150.w,
      imageBuilder: (context, imageProvider) => Container(
        width: 150.w,
        height: 150.w,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          image: DecorationImage(
            image: imageProvider,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  } else {
    imageWidget = Assets.images.placeholder.placeholder.image();
  }

  return ClipOval(
    child: imageWidget,
  );
}
