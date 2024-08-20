import 'package:flutter/material.dart';

class AppColors extends ThemeExtension<AppColors> {
  final Color? input;

  const AppColors({
    this.input,
  });

  @override
  ThemeExtension<AppColors> copyWith() {
    return AppColors(
      input: input,
    );
  }

  @override
  ThemeExtension<AppColors> lerp(
    covariant ThemeExtension<AppColors>? other,
    double t,
  ) {
    if (other is! AppColors) return this;

    return AppColors(
      input: Color.lerp(input, other.input, t),
    );
  }
}
