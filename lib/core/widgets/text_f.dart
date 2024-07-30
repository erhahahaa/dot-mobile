import 'package:dot_coaching/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextF extends StatefulWidget {
  final FocusNode? currFocusNode;
  final FocusNode? nextFocusNode;
  final String? hintText;
  final String? hint;
  final Function(String)? validator;
  final Function(String)? onChanged;
  final Function? onTap;
  final TextInputType? keyboardType;
  final TextInputAction? textInputAction;
  final TextEditingController? controller;
  final bool? obscureText;
  final int? maxLines;
  final int? minLines;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final TextAlign? textAlign;
  final bool? enabled;
  final List<TextInputFormatter>? inputFormatters;
  final bool isHintVisible;
  final String? prefixText;
  final Iterable<String>? autofillHints;
  final String? semanticsLabel;
  final Color? fillColor;
  final InputDecoration? decoration;

  const TextF({
    super.key,
    this.currFocusNode,
    this.nextFocusNode,
    this.hintText,
    this.hint,
    this.validator,
    this.onChanged,
    this.onTap,
    this.keyboardType,
    this.textInputAction,
    this.controller,
    this.obscureText,
    this.maxLines,
    this.minLines,
    this.suffixIcon,
    this.prefixIcon,
    this.isHintVisible = true,
    this.textAlign,
    this.enabled,
    this.inputFormatters,
    this.prefixText,
    this.autofillHints,
    this.semanticsLabel,
    this.fillColor,
    this.decoration,
  });

  @override
  State<TextF> createState() => _TextFState();
}

class _TextFState extends State<TextF> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Visibility(
            visible: widget.isHintVisible,
            child: Padding(
              padding: EdgeInsets.only(
                left: 12.w,
              ),
              child: Text(
                widget.hint ?? '',
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            ),
          ),
          widget.isHintVisible == true ? SizedBox(height: 4.h) : Container(),
          Semantics(
            label: widget.semanticsLabel,
            child: TextFormField(
              key: widget.key,
              readOnly: widget.enabled == false,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              autofillHints: widget.autofillHints,
              enabled: widget.enabled,
              obscureText: widget.obscureText ?? false,
              focusNode: widget.currFocusNode,
              keyboardType: widget.keyboardType,
              controller: widget.controller,
              textInputAction: widget.textInputAction,
              textAlign: widget.textAlign ?? TextAlign.start,
              minLines: widget.minLines ?? 1,
              maxLines: widget.maxLines ?? 10,
              inputFormatters: widget.inputFormatters,
              textAlignVertical: TextAlignVertical.center,
              style: Theme.of(context).textTheme.bodyMedium,
              cursorColor: const Color(0xff4c4f69),
              decoration: widget.decoration ??
                  InputDecoration(
                    prefixText: widget.prefixText,
                    alignLabelWithHint: true,
                    filled: true,
                    fillColor: context.theme.colorScheme.surface,
                    isDense: true,
                    hintText: widget.hintText,
                    hintStyle: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          color: Theme.of(context).hintColor,
                        ),
                    suffixIcon: widget.suffixIcon,
                    prefixIcon: SizedBox(
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: 16.w,
                            ),
                            child: widget.prefixIcon,
                          ),
                          // vertical line,
                          Container(
                            width: 1,
                            height: 24.h,
                            color: Colors.grey,
                          ),
                          SizedBox(width: 16.w)
                        ],
                      ),
                    ),
                    prefixIconConstraints: BoxConstraints(
                      minHeight: 24.h,
                      minWidth: 24.h,
                    ),
                    contentPadding: EdgeInsets.symmetric(
                      horizontal: 12.w,
                      vertical: 16.h,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(
                        4.r,
                      ),
                      borderSide: BorderSide(
                        color: context.isDarkMode
                            ? Colors.grey[700]!
                            : Colors.grey[300]!,
                      ),
                    ),
                    disabledBorder: OutlineInputBorder(
                      gapPadding: 0,
                      borderRadius: BorderRadius.circular(
                        4.r,
                      ),
                      borderSide: BorderSide(
                        color: context.isDarkMode
                            ? Colors.grey[700]!
                            : Colors.grey[300]!,
                      ),
                    ),
                    errorStyle: Theme.of(context).textTheme.bodySmall?.copyWith(
                          color: Theme.of(context).colorScheme.error,
                        ),
                    focusedErrorBorder: OutlineInputBorder(
                      gapPadding: 0,
                      borderRadius: BorderRadius.circular(4.r),
                      borderSide: BorderSide(
                        color: Theme.of(context).colorScheme.error,
                      ),
                    ),
                    errorBorder: OutlineInputBorder(
                      gapPadding: 0,
                      borderRadius: BorderRadius.circular(4.r),
                      borderSide: BorderSide(
                        color: Theme.of(context).colorScheme.error,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      gapPadding: 0,
                      borderRadius: BorderRadius.circular(4.r),
                      borderSide: BorderSide(
                        color: Theme.of(context).colorScheme.primary,
                      ),
                    ),
                  ),
              validator: widget.validator as String? Function(String?)?,
              onChanged: widget.onChanged,
              onTap: widget.onTap as void Function()?,
              onFieldSubmitted: (value) {
                setState(() {
                  fieldFocusChange(
                    context,
                    widget.currFocusNode ?? FocusNode(),
                    widget.nextFocusNode,
                  );
                });
              },
            ),
          ),
        ],
      ),
    );
  }

}
