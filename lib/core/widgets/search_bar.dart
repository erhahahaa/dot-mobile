import 'package:flutter/material.dart';
import 'package:moon_design/moon_design.dart';

class MySearchBar extends StatelessWidget {
  final Color? backgroundColor;
  final void Function(String? value) onChanged;
  final double? width, height;
  final Widget? leading, trailing;
  final String? hintText;
  final TextEditingController controller;

  const MySearchBar({
    super.key,
    this.backgroundColor,
    required this.onChanged,
    this.width,
    this.height,
    this.leading,
    this.trailing,
    this.hintText,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return MoonTextInput(
      key: key,
      width: width,
      height: height,
      hintText: hintText,
      controller: controller,
      leading: leading ?? const Icon(MoonIcons.generic_search_24_light),
      trailing: trailing,
      backgroundColor:
          backgroundColor ?? context.moonColors?.beerus.withOpacity(0.038),
      onChanged: onChanged,
    );
  }
}
