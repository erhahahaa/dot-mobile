import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AddItemButton extends StatelessWidget {
  final VoidCallback? onTap;
  final String text;
  final EdgeInsetsGeometry? padding;

  const AddItemButton({
    super.key,
    this.onTap,
    required this.text,
    this.padding,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding ?? EdgeInsets.only(bottom: 512.h),
      child: InkWell(
        onTap: onTap,
        child: DottedBorder(
          borderType: BorderType.RRect,
          radius: Radius.circular(12.r),
          padding: EdgeInsets.all(6.w),
          strokeWidth: 2,
          color: Colors.blue,
          dashPattern: [12.w, 6.w],
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16.r),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.add,
                  color: Colors.blue,
                  size: 24.sp,
                ),
                SizedBox(width: 8.w),
                Text(
                  text,
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
