import 'package:dot_coaching/core/core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Chirp extends StatelessWidget {
  final String text;
  final Color? color;
  final TextStyle? style;
  final Widget? icon;
  final EdgeInsetsGeometry? padding;
  final Widget? spacer;
  final TextAlign textAlign;
  const Chirp({
    super.key,
    required this.text,
    this.color = Palette.primaryColorLight,
    this.style,
    this.icon,
    this.padding,
    this.spacer,
    this.textAlign = TextAlign.left,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding ??
          EdgeInsets.symmetric(
            horizontal: 8.w,
            vertical: 4.h,
          ),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(
          30.r,
        ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (icon != null) icon!,
          if (icon != null) spacer ?? SizedBox(width: 8.w),
          Text(
            text,
            style: style ??
                Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color: Colors.white,
                    ),
            textAlign: textAlign,
            overflow: TextOverflow.ellipsis,
            maxLines: 2,
          ),
        ],
      ),
    );
  }
}
