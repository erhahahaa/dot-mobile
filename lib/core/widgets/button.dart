import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Button extends StatelessWidget {
  final String text;
  final Widget? icon;
  final Function()? onPressed;
  final bool? isDisabled;
  final bool? isLoading;
  final bool? isFullWidth;
  final Color? backgroundColor;
  final TextStyle? textStyle;
  final double? height;
  const Button({
    super.key,
    required this.text,
    this.icon,
    this.onPressed,
    this.isDisabled = false,
    this.isLoading = false,
    this.isFullWidth = true,
    this.backgroundColor,
    this.textStyle,
    this.height,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: isFullWidth! ? double.infinity : null,
      height: height ?? 48.h,
      child: ElevatedButton(
        style: Theme.of(context).elevatedButtonTheme.style?.copyWith(
              backgroundColor: WidgetStateProperty.all<Color>(
                // backgroundColor ?? Theme.of(context).primaryColor,
                isLoading! || isDisabled!
                    ? Colors.grey
                    : backgroundColor ?? Theme.of(context).primaryColor,
              ),
            ),
        onPressed: isDisabled! || isLoading! ? null : onPressed,
        child: isLoading!
            ? const SizedBox(
                height: 24,
                width: 24,
                child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                ),
              )
            : Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  if (icon != null) icon!,
                  if (icon != null) const SizedBox(width: 8),
                  Text(
                    text,
                    style: textStyle ??
                        Theme.of(context).textTheme.bodyLarge?.copyWith(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                            ),
                  ),
                ],
              ),
      ),
    );
  }
}
