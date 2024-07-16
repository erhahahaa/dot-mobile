import 'package:dot_coaching/core/core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:oktoast/oktoast.dart';

extension StringExt on String {
  bool isValidEmail() {
    return RegExp(
      r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$',
    ).hasMatch(this);
  }

  bool isValidPhoneNumber() {
    return RegExp(
      r'^8[0-9]{8,15}$',
    ).hasMatch(this);
  }

  String? get capitalizeFirst {
    if (isEmpty) {
      return null;
    }
    return '${this[0].toUpperCase()}${substring(1)}';
  }

  void toToastError(
    BuildContext context, {
    TextAlign? textAlign,
  }) {
    try {
      final title = isEmpty ? "error" : this;

      showToastWidget(
        Chirp(
          text: title,
          color: Theme.of(context).extension<AppColors>()?.error,
          icon: Icon(
            Icons.error,
            color: Colors.white,
            size: 16.sp,
          ),
          padding: EdgeInsets.all(8.w),
          textAlign: textAlign ?? TextAlign.left,
        ),
        dismissOtherToast: true,
        position: ToastPosition.top,
        duration: const Duration(seconds: 3),
      );
    } catch (e) {}
  }

  void toToastSuccess(
    BuildContext context, {
    TextAlign? textAlign,
  }) {
    try {
      final title = isEmpty ? "success" : this;

      //dismiss before show toast

      // showToast(msg)
      showToastWidget(
        Chirp(
          text: title,
          color: Theme.of(context).extension<AppColors>()?.success,
          icon: Icon(
            Icons.check_circle,
            color: Colors.white,
            size: 16.sp,
          ),
          padding: EdgeInsets.all(8.w),
          textAlign: textAlign ?? TextAlign.left,
        ),
        dismissOtherToast: true,
        position: ToastPosition.top,
        duration: const Duration(seconds: 3),
      );
    } catch (e) {}
  }

  void toToastInfo(
    BuildContext context, {
    TextAlign? textAlign,
  }) {
    try {
      final title = isEmpty ? "info" : this;

      //dismiss before show toast

      showToastWidget(
        Chirp(
          text: title,
          color: Theme.of(context).extension<AppColors>()?.info,
          icon: Icon(
            Icons.info,
            color: Colors.white,
            size: 16.sp,
          ),
          padding: EdgeInsets.all(8.w),
          textAlign: textAlign ?? TextAlign.left,
        ),
        dismissOtherToast: true,
        position: ToastPosition.top,
        duration: const Duration(seconds: 3),
      );
    } catch (e) {}
  }

  void toToastLoading(
    BuildContext context, {
    TextAlign? textAlign,
  }) {
    try {
      final title = isEmpty ? "loading" : this;
      //dismiss before show toast

      showToastWidget(
        Chirp(
          text: title,
          color: Theme.of(context).extension<AppColors>()?.info,
          icon: Icon(
            Icons.info,
            color: Colors.white,
            size: 16.sp,
          ),
          padding: EdgeInsets.all(8.w),
          textAlign: textAlign ?? TextAlign.left,
        ),
        dismissOtherToast: true,
        position: ToastPosition.top,
        duration: const Duration(seconds: 3),
      );
    } catch (e) {}
  }
}
