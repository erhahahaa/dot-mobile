import 'package:dot_coaching/core/core.dart';
import 'package:flutter/services.dart';

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

  String get capitalize {
    if (isEmpty) {
      return this;
    }
    return split(' ').map((e) => e.capitalizeFirst!).join(' ');
  }

  // void toToastError(
  //   BuildContext context, {
  //   TextAlign? textAlign,
  // }) {
  //   try {
  //     final title = isEmpty ? "error" : this;

  //     showToastWidget(
  //       Chirp(
  //         text: title,
  //         color: Theme.of(context).colorScheme.error,
  //         icon: Icon(
  //           Icons.error,
  //           color: Colors.white,
  //           size: 16.sp,
  //         ),
  //         padding: EdgeInsets.all(8.w),
  //         textAlign: textAlign ?? TextAlign.left,
  //       ),
  //       dismissOtherToast: true,
  //       position: ToastPosition.top,
  //       duration: const Duration(seconds: 3),
  //     );
  //   } catch (e) {
  //     log.e('ERROR [TOAST] ERR :\n$e');
  //   }
  // }

  // void toToastSuccess(
  //   BuildContext context, {
  //   TextAlign? textAlign,
  // }) {
  //   try {
  //     final title = isEmpty ? "success" : this;

  //     showToastWidget(
  //       Chirp(
  //         text: title,
  //         color: context.theme.extension<AppColors>()?.green ?? Colors.green,
  //         icon: Icon(
  //           Icons.check_circle,
  //           color: Colors.white,
  //           size: 16.sp,
  //         ),
  //         padding: EdgeInsets.all(8.w),
  //         textAlign: textAlign ?? TextAlign.left,
  //       ),
  //       dismissOtherToast: true,
  //       position: ToastPosition.top,
  //       duration: const Duration(seconds: 3),
  //     );
  //   } catch (e) {
  //     log.e('SUCCESS [TOAST] ERR :\n$e');
  //   }
  // }

  // void toToastInfo(
  //   BuildContext context, {
  //   TextAlign? textAlign,
  // }) {
  //   try {
  //     final title = isEmpty ? "info" : this;

  //     showToastWidget(
  //       Chirp(
  //         text: title,
  //         color: context.theme.primaryColor,
  //         icon: Icon(
  //           Icons.info,
  //           color: Colors.white,
  //           size: 16.sp,
  //         ),
  //         padding: EdgeInsets.all(8.w),
  //         textAlign: textAlign ?? TextAlign.left,
  //       ),
  //       dismissOtherToast: true,
  //       position: ToastPosition.top,
  //       duration: const Duration(seconds: 3),
  //     );
  //   } catch (e) {
  //     log.e('INFO [TOAST] ERR :\n$e');
  //   }
  // }

  // void toToastLoading(
  //   BuildContext context, {
  //   TextAlign? textAlign,
  // }) {
  //   try {
  //     final title = isEmpty ? "loading" : this;

  //     showToastWidget(
  //       Chirp(
  //         text: title,
  //         color: context.theme.shadowColor,
  //         icon: Icon(
  //           Icons.info,
  //           color: Colors.white,
  //           size: 16.sp,
  //         ),
  //         padding: EdgeInsets.all(8.w),
  //         textAlign: textAlign ?? TextAlign.left,
  //       ),
  //       dismissOtherToast: true,
  //       position: ToastPosition.top,
  //       duration: const Duration(seconds: 3),
  //     );
  //   } catch (e) {
  //     log.e('LOADING [TOAST] ERR :\n$e');
  //   }
  // }

  String sanitize() {
    if (contains('http://127.0.0.1')) {
      final baseUrl = ListAPI.BASE_URL.split(':3000').first;
      return replaceAll('http://127.0.0.1', baseUrl);
    }
    return this;
  }

  String maxChar({int? length}) {
    if (length == null) {
      return this;
    }
    if (this.length <= length) {
      return this;
    }
    return '${substring(0, length)}...';
  }

  void toClipboard() async {
    await Clipboard.setData(ClipboardData(text: this));
  }
}
