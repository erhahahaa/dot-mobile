import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:moon_design/moon_design.dart';

class FloatingActionButtonExtended extends StatelessWidget {
  final bool isLoading;
  final VoidCallback? onPressed;
  final Widget label, icon;
  final String? heroTag;
  const FloatingActionButtonExtended({
    super.key,
    required this.isLoading,
    this.onPressed,
    required this.label,
    required this.icon,
    this.heroTag,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton.extended(
      heroTag: heroTag ?? Random().nextInt(100000).toString(),
      onPressed: isLoading ? null : onPressed,
      label: isLoading
          ? MoonCircularLoader(
              color: Colors.white,
              sizeValue: 24.w,
            )
          : label,
      backgroundColor: isLoading ? Colors.grey : null,
      icon: isLoading ? null : icon,
    );
  }
}
