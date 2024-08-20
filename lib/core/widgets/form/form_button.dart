import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:moon_design/moon_design.dart';

class FormButton extends StatelessWidget {
  final String? text;
  final void Function()? onTap;
  final bool isLoading;
  final MoonButtonSize? buttonSize;
  final Widget? leading;
  final Widget? trailing;
  final double? width;

  const FormButton({
    super.key,
    required this.text,
    this.onTap,
    required this.isLoading,
    this.buttonSize,
    this.leading,
    this.trailing,
    this.width,
  });

  @override
  Widget build(BuildContext context) {
    return MoonFilledButton(
      width: width ?? double.infinity,
      buttonSize: buttonSize ?? MoonButtonSize.md,
      onTap: isLoading ? null : onTap,
      label: Row(
        children: [
          AnimatedSwitcher(
            duration: const Duration(milliseconds: 300),
            transitionBuilder: (Widget child, Animation<double> animation) {
              return FadeTransition(
                opacity: animation,
                child: ScaleTransition(
                  scale: animation,
                  child: child,
                ),
              );
            },
            child: isLoading
                ? Row(
                    key: ValueKey<bool>(isLoading),
                    children: [
                      SizedBox(
                        width: 14.w,
                        height: 14.w,
                        child: const MoonCircularLoader(
                          circularLoaderSize: MoonCircularLoaderSize.sm,
                          color: Colors.white,
                        ),
                      ),
                      Gap(8.w),
                    ],
                  )
                : Text(
                    key: ValueKey<bool>(isLoading),
                    text ?? 'Unassigned',
                  ),
          ),
        ],
      ),
      leading: leading,
      trailing: trailing,
    );
  }
}
