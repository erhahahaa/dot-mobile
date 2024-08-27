import 'package:dot_coaching/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:moon_design/moon_design.dart';

class FormTextArea extends StatelessWidget {
  final TextEditingController controller;
  final FocusNode currentFocus;
  final FocusNode? nextFocus;
  final bool? enabled;
  final AutovalidateMode? autovalidateMode;
  final List<String>? autoFillHints;
  final bool? readOnly;
  final TextInputAction? textInputAction;
  final TextAlign? textAlign;
  final List<TextInputFormatter>? inputFormatters;
  final String? hintText;
  final double? height;
  final String? Function(String?)? validator;
  final void Function(String)? onChanged;
  final void Function(String)? onSubmitted;
  final void Function()? onTap;
  final Color? backgroundColor, activeBorderColor;
  final TapRegionCallback? onTapOutside;
  final BorderRadiusGeometry? borderRadius;

  const FormTextArea({
    super.key,
    required this.controller,
    required this.currentFocus,
    this.nextFocus,
    this.enabled,
    this.autovalidateMode,
    this.autoFillHints,
    this.readOnly,
    this.textInputAction,
    this.textAlign,
    this.inputFormatters,
    this.hintText,
    this.height,
    this.validator,
    this.onChanged,
    this.onSubmitted,
    this.onTap,
    this.backgroundColor,
    this.activeBorderColor,
    this.onTapOutside,
    this.borderRadius,
  });

  @override
  Widget build(BuildContext context) {
    return MoonTextArea(
      key: key,
      autovalidateMode: autovalidateMode ?? AutovalidateMode.onUserInteraction,
      autofillHints: autoFillHints,
      enabled: enabled ?? true,
      focusNode: currentFocus,
      controller: controller,
      textInputAction: textInputAction,
      textAlign: textAlign ?? TextAlign.start,
      inputFormatters: inputFormatters,
      hintText: hintText,
      height: height ?? 0.2.sh,
      validator: validator,
      onChanged: onChanged,
      readOnly: readOnly ?? false,
      onTap: onTap,
      borderRadius: borderRadius,
      backgroundColor: backgroundColor ?? context.theme.colorScheme.surface,
      activeBorderColor: activeBorderColor,
      onTapOutside: onTapOutside ?? (ev) => currentFocus.unfocus(),
      onSubmitted: (value) {
        if (onSubmitted != null) onSubmitted!(value);
        context.changeFocus(currentFocus, nextFocus);
      },
    );
  }
}
