import 'package:dot_coaching/app/di.dart';
import 'package:dot_coaching/core/core.dart';
import 'package:dot_coaching/utils/utils.dart';
import 'package:elegant_notification/elegant_notification.dart';
import 'package:elegant_notification/resources/arrays.dart';
import 'package:elegant_notification/resources/stacked_options.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:moon_design/moon_design.dart';

extension BuildContextX on BuildContext {
  ThemeData get theme => Theme.of(this);

  Strings? get str => Strings.of(this);

  void openDrawer() => Scaffold.of(this).openDrawer();

  void changeFocus(FocusNode currentFocus, FocusNode? nextFocus) {
    currentFocus.unfocus();
    if (nextFocus != null) {
      FocusScope.of(this).requestFocus(nextFocus);
    }
  }

  void errorToast({
    String? title,
    String? description,
  }) {
    ElegantNotification.error(
      title: TitleSmall(title),
      description: BodySmall(description),
      width: 300.w,
      animationCurve: Curves.easeInOut,
      position: Alignment.topCenter,
      animation: AnimationType.fromTop,
      background: theme.colorScheme.surface,
      borderRadius: BorderRadius.circular(8.r),
      stackedOptions: StackedOptions(
        key: 'top',
        type: StackedType.same,
        itemOffset: const Offset(-5, -5),
      ),
      progressBarPadding: EdgeInsets.all(4.w),
    ).show(this);
  }

  void successToast({
    String? title,
    String? description,
  }) {
    ElegantNotification.success(
      title: TitleSmall(title),
      description: BodySmall(description),
      width: 300.w,
      animationCurve: Curves.easeInOut,
      position: Alignment.topCenter,
      animation: AnimationType.fromTop,
      background: theme.colorScheme.surface,
      borderRadius: BorderRadius.circular(8.r),
      stackedOptions: StackedOptions(
        key: 'top',
        type: StackedType.same,
        itemOffset: const Offset(-5, -5),
      ),
      progressBarPadding: EdgeInsets.all(4.w),
    ).show(this);
  }

  void infoToast({
    String? title,
    String? description,
    Duration duration = const Duration(seconds: 3),
  }) {
    ElegantNotification.info(
      title: TitleSmall(title),
      description: BodySmall(description),
      width: 300.w,
      animationCurve: Curves.easeInOut,
      position: Alignment.topCenter,
      animation: AnimationType.fromTop,
      background: theme.colorScheme.surface,
      borderRadius: BorderRadius.circular(8.r),
      stackedOptions: StackedOptions(
        key: 'top',
        type: StackedType.same,
        itemOffset: const Offset(-5, -5),
      ),
      progressBarPadding: EdgeInsets.all(4.w),
      toastDuration: duration,
    ).show(this);
  }

  void showSnackBar({
    required String message,
    Duration duration = const Duration(seconds: 3),
  }) {
    ScaffoldMessenger.of(this).showSnackBar(
      SnackBar(
        content: Text(message),
        duration: duration,
      ),
    );
  }

  ElegantNotification buildLoaderToast({String? title}) {
    return ElegantNotification.info(
      title: TitleSmall(title),
      description: BlocProvider.value(
        value: sl<LoadingCubit>(),
        child: BlocBuilder<LoadingCubit, LoadingState>(
          builder: (context, state) {
            return Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                BodySmall(
                    '${((state.count ?? 0) / (state.total ?? 1) * 100).toInt()} %'),
                SizedBox(height: 8.h),
                MoonLinearProgress(
                  linearProgressSize: MoonLinearProgressSize.x4s,
                  value: (state.count ?? 0) / (state.total ?? 1),
                ),
              ],
            );
          },
        ),
      ),
      width: 300.w,
      animationCurve: Curves.easeInOut,
      position: Alignment.topCenter,
      animation: AnimationType.fromTop,
      background: theme.colorScheme.surface,
      borderRadius: BorderRadius.circular(8.r),
      toastDuration: const Duration(days: 1),
      stackedOptions: StackedOptions(
        key: 'top',
        type: StackedType.same,
        itemOffset: const Offset(-5, -5),
      ),
      showProgressIndicator: false,
    );
  }
}
