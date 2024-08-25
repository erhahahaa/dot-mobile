import 'package:dot_coaching/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ImagePickerWidget extends StatelessWidget {
  final void Function()? onTap;
  final Widget? firstChild;
  final Widget? image;
  const ImagePickerWidget({super.key, this.onTap, this.firstChild, this.image});

  @override
  Widget build(BuildContext context) {
    final theme = context.theme;
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 150,
        width: 150,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
            width: 3.w,
            color: theme.iconTheme.color ?? Colors.red,
          ),
        ),
        child: Stack(
          fit: StackFit.expand,
          clipBehavior: Clip.none,
          children: [
            firstChild ?? Container(),
            Positioned(
              right: -8,
              bottom: 0,
              child: SizedBox(
                height: 46,
                width: 46,
                child: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: theme.colorScheme.onPrimaryContainer,
                    border: Border.all(width: 3.w),
                  ),
                  child: Icon(
                    Icons.camera_alt,
                    color: theme.scaffoldBackgroundColor,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
