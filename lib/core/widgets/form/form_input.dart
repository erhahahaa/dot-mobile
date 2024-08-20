import 'package:dot_coaching/utils/extensions/context.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:moon_design/moon_design.dart';

class FormInput extends StatelessWidget {
  final TextEditingController controller;
  final FocusNode currentFocus;
  final FocusNode? nextFocus;
  final bool enabled;
  final AutovalidateMode? autovalidateMode;
  final List<String>? autoFillHints;
  final bool? obsecureText;
  final TextInputType? keyboardType;
  final TextInputAction? textInputAction;
  final TextAlign? textAlign;
  final List<TextInputFormatter>? inputFormatters;
  final String? hintText;
  final double? height;
  final double? width;
  final String? Function(String?)? validator;
  final void Function(String)? onChanged;
  final void Function()? onTap;
  final Widget? leading;
  final Widget? trailing;
  final Color? backgroundColor;
  final TapRegionCallback? onTapOutside;

  const FormInput({
    super.key,
    required this.controller,
    required this.currentFocus,
    this.nextFocus,
    this.enabled = true,
    this.autovalidateMode,
    this.autoFillHints,
    this.obsecureText,
    this.keyboardType,
    this.textInputAction,
    this.textAlign,
    this.inputFormatters,
    this.hintText,
    this.height,
    this.width,
    this.validator,
    this.onChanged,
    this.onTap,
    this.leading,
    this.trailing,
    this.backgroundColor,
    this.onTapOutside,
  });

  @override
  Widget build(BuildContext context) {
    return MoonFormTextInput(
      key: key,
      autovalidateMode: autovalidateMode ?? AutovalidateMode.onUserInteraction,
      autofillHints: autoFillHints,
      enabled: enabled,
      obscureText: obsecureText ?? false,
      focusNode: currentFocus,
      keyboardType: keyboardType ?? TextInputType.text,
      controller: controller,
      textInputAction: textInputAction,
      textAlign: textAlign ?? TextAlign.start,
      inputFormatters: inputFormatters,
      hintText: hintText,
      height: height ?? 42.h,
      width: width ?? double.infinity,
      validator: validator,
      onChanged: onChanged,
      onTap: onTap,
      leading: leading != null
          ? Row(
              children: [
                leading!,
                const VerticalDivider(),
              ],
            )
          : null,
      trailing: trailing,
      backgroundColor: backgroundColor ?? context.theme.colorScheme.surface,
      onTapOutside: onTapOutside ?? (ev) => currentFocus.unfocus(),
      onSubmitted: (_) {
        context.changeFocus(currentFocus, nextFocus);
      },
    );
  }
}
