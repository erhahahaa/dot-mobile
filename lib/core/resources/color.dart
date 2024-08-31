import 'package:flutter/material.dart';

class AppColors extends ThemeExtension<AppColors> {
  final Color? eightCardColor;
  final Color? containerWrapperColor;

  const AppColors({
    this.eightCardColor,
    this.containerWrapperColor,
  });

  @override
  ThemeExtension<AppColors> copyWith() {
    return AppColors(
      eightCardColor: eightCardColor,
      containerWrapperColor: containerWrapperColor,
    );
  }

  @override
  ThemeExtension<AppColors> lerp(
    covariant ThemeExtension<AppColors>? other,
    double t,
  ) {
    if (other is! AppColors) return this;

    return AppColors(
      eightCardColor: Color.lerp(
        eightCardColor,
        other.eightCardColor,
        t,
      ),
      containerWrapperColor: Color.lerp(
        containerWrapperColor,
        other.containerWrapperColor,
        t,
      ),
    );
  }
}
