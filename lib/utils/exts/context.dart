import 'package:dot_coaching/core/core.dart';
import 'package:flutter/material.dart';

extension ContextExtensions on BuildContext {
  bool get isDarkMode => Theme.of(this).brightness == Brightness.dark;

  ThemeData get theme => Theme.of(this);

  Strings? get str => Strings.of(this);
}
