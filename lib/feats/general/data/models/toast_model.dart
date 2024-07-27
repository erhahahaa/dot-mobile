import 'package:dot_coaching/core/core.dart';
import 'package:dot_coaching/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:oktoast/oktoast.dart';

enum ToastType { error, success, info, warning }

extension ToastTypeExt on ToastType {
  Color color(BuildContext context) {
    final thm = context.theme;
    switch (this) {
      case ToastType.error:
        return thm.extension<AppColors>()?.red ?? Colors.red;
      case ToastType.success:
        return thm.extension<AppColors>()?.green ?? Colors.green;
      case ToastType.info:
        return thm.extension<AppColors>()?.blue ?? Colors.blue;
      case ToastType.warning:
        return thm.extension<AppColors>()?.yellow ?? Colors.yellow;
    }
  }

  IconData icon(BuildContext context) {
    switch (this) {
      case ToastType.error:
        return Icons.error;
      case ToastType.success:
        return Icons.check_circle;
      case ToastType.info:
        return Icons.info;
      case ToastType.warning:
        return Icons.warning;
    }
  }

  String get title {
    switch (this) {
      case ToastType.error:
        return 'Error';
      case ToastType.success:
        return 'Success';
      case ToastType.info:
        return 'Info';
      case ToastType.warning:
        return 'Warning';
    }
  }
}

class ToastModel {
  // final String title;
  final String? message;
  final ToastType type;

  ToastModel({required this.message, required this.type});
}

extension ToastModelExt on ToastModel {
  void fire(BuildContext context) {
    try {
      showToastWidget(
        context: context,
        Toast(
          title: type.title,
          message: message ?? type.title,
          icon: type.icon(context),
          color: type.color(context),
          theme: context.theme,
          isDarkMode: context.isDarkMode,
        ),
        dismissOtherToast: true,
        position: ToastPosition(
          align: Alignment.topCenter,
          offset: 30.h,
        ),
        duration: const Duration(seconds: 3),
      );
    } catch (e) {
      log.e('ERROR [TOAST] ERR :\n$e');
    }
  }
}
