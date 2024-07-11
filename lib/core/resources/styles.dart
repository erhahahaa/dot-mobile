import 'package:dot_coaching/core/core.dart';
import 'package:dot_coaching/core/resources/resources.dart';
import 'package:flutter/material.dart';

ThemeData lightTheme(BuildContext ctx) {
  final theme = Theme.of(ctx);
  final textTheme = theme.textTheme;

  return ThemeData(
    useMaterial3: true,
    primaryColor: Palette.primaryColorLight,
    scaffoldBackgroundColor: Palette.backgroundColorLight,
    colorScheme: const ColorScheme.light(
      primary: Palette.primaryColorLight,
      secondary: Palette.accentColorLight,
      surface: Palette.backgroundColorLight,
      brightness: Brightness.light,
    ),
    textTheme: TextTheme(
      displayLarge: textTheme.displayLarge?.copyWith(
        color: Palette.primaryTextColorLight,
        fontSize: Dimens.displayLarge,
      ),
      displayMedium: textTheme.displayMedium?.copyWith(
        color: Palette.primaryTextColorLight,
        fontSize: Dimens.displayMedium,
      ),
      displaySmall: textTheme.displaySmall?.copyWith(
        color: Palette.primaryTextColorLight,
        fontSize: Dimens.displaySmall,
      ),
      headlineLarge: textTheme.headlineLarge?.copyWith(
        color: Palette.primaryTextColorLight,
        fontSize: Dimens.headingLarge,
      ),
      headlineMedium: textTheme.headlineMedium?.copyWith(
        color: Palette.primaryTextColorLight,
        fontSize: Dimens.headingMedium,
      ),
      headlineSmall: textTheme.headlineSmall?.copyWith(
        color: Palette.primaryTextColorLight,
        fontSize: Dimens.headingSmall,
      ),
      titleLarge: textTheme.titleLarge?.copyWith(
        color: Palette.primaryTextColorLight,
        fontSize: Dimens.titleLarge,
      ),
      titleMedium: textTheme.titleMedium?.copyWith(
        color: Palette.primaryTextColorLight,
        fontSize: Dimens.titleMedium,
      ),
      titleSmall: textTheme.titleSmall?.copyWith(
        color: Palette.primaryTextColorLight,
        fontSize: Dimens.titleSmall,
      ),
      bodyLarge: textTheme.bodyLarge?.copyWith(
        color: Palette.primaryTextColorLight,
        fontSize: Dimens.bodyLarge,
      ),
      bodyMedium: textTheme.bodyMedium?.copyWith(
        color: Palette.primaryTextColorLight,
        fontSize: Dimens.bodyMedium,
      ),
      bodySmall: textTheme.bodySmall?.copyWith(
        color: Palette.primaryTextColorLight,
        fontSize: Dimens.bodySmall,
      ),
    ),
    navigationBarTheme: const NavigationBarThemeData(
      backgroundColor: Palette.backgroundColorLight,
      indicatorColor: Palette.accentColorLight,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: Palette.accentColorLight,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(Dimens.borderRadiusMedium),
        ),
      ),
    ),
    brightness: Brightness.light,
    iconTheme: const IconThemeData(color: Palette.primaryColorLight),
    visualDensity: VisualDensity.adaptivePlatformDensity,
    extensions: const <ThemeExtension<dynamic>>[
      AppColors(
        error: Palette.errorColorLight,
        success: Palette.successColorLight,
        warning: Palette.warningColorLight,
        info: Palette.infoColorLight,
      ),
    ],
  );
}

ThemeData darkTheme(BuildContext ctx) {
  final theme = Theme.of(ctx);
  final textTheme = theme.textTheme;

  return ThemeData(
    useMaterial3: true,
    primaryColor: Palette.primaryColorDark,
    scaffoldBackgroundColor: Palette.backgroundColorDark,
    colorScheme: const ColorScheme.dark(
      primary: Palette.primaryColorDark,
      secondary: Palette.accentColorDark,
      surface: Palette.backgroundColorDark,
      brightness: Brightness.dark,
    ),
    textTheme: TextTheme(
      displayLarge: textTheme.displayLarge?.copyWith(
        color: Palette.primaryTextColorDark,
        fontSize: Dimens.displayLarge,
      ),
      displayMedium: textTheme.displayMedium?.copyWith(
        color: Palette.primaryTextColorDark,
        fontSize: Dimens.displayMedium,
      ),
      displaySmall: textTheme.displaySmall?.copyWith(
        color: Palette.primaryTextColorDark,
        fontSize: Dimens.displaySmall,
      ),
      headlineLarge: textTheme.headlineLarge?.copyWith(
        color: Palette.primaryTextColorDark,
        fontSize: Dimens.headingLarge,
      ),
      headlineMedium: textTheme.headlineMedium?.copyWith(
        color: Palette.primaryTextColorDark,
        fontSize: Dimens.headingMedium,
      ),
      headlineSmall: textTheme.headlineSmall?.copyWith(
        color: Palette.primaryTextColorDark,
        fontSize: Dimens.headingSmall,
      ),
      titleLarge: textTheme.titleLarge?.copyWith(
        color: Palette.primaryTextColorDark,
        fontSize: Dimens.titleLarge,
      ),
      titleMedium: textTheme.titleMedium?.copyWith(
        color: Palette.primaryTextColorDark,
        fontSize: Dimens.titleMedium,
      ),
      titleSmall: textTheme.titleSmall?.copyWith(
        color: Palette.primaryTextColorDark,
        fontSize: Dimens.titleSmall,
      ),
      bodyLarge: textTheme.bodyLarge?.copyWith(
        color: Palette.primaryTextColorDark,
        fontSize: Dimens.bodyLarge,
      ),
      bodyMedium: textTheme.bodyMedium?.copyWith(
        color: Palette.primaryTextColorDark,
        fontSize: Dimens.bodyMedium,
      ),
      bodySmall: textTheme.bodySmall?.copyWith(
        color: Palette.primaryTextColorDark,
        fontSize: Dimens.bodySmall,
      ),
    ),
    navigationBarTheme: const NavigationBarThemeData(
      backgroundColor: Palette.backgroundColorDark,
      indicatorColor: Palette.accentColorDark,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: Palette.accentColorDark,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(Dimens.borderRadiusMedium),
        ),
      ),
    ),
    brightness: Brightness.dark,
    iconTheme: const IconThemeData(color: Palette.primaryColorDark),
    visualDensity: VisualDensity.adaptivePlatformDensity,
    extensions: const <ThemeExtension<dynamic>>[
      AppColors(
        error: Palette.errorColorDark,
        success: Palette.successColorDark,
        warning: Palette.warningColorDark,
        info: Palette.infoColorDark,
        accent: Palette.accentColorDark,
      ),
    ],
  );
}

class AppColors extends ThemeExtension<AppColors> {
  final Color? error;
  final Color? success;
  final Color? warning;
  final Color? info;
  final Color? accent;

  const AppColors({
    this.error,
    this.success,
    this.warning,
    this.info,
    this.accent,
  });

  @override
  ThemeExtension<AppColors> copyWith({
    Color? error,
    Color? success,
    Color? warning,
    Color? info,
    Color? accent,
  }) {
    return AppColors(
      error: error ?? this.error,
      success: success ?? this.success,
      warning: warning ?? this.warning,
      info: info ?? this.info,
      accent: accent ?? this.accent,
    );
  }

  @override
  ThemeExtension<AppColors> lerp(
    covariant ThemeExtension<AppColors>? other,
    double t,
  ) {
    if (other is! AppColors) {
      return this;
    }
    return AppColors(
      error: Color.lerp(error, other.error, t),
      success: Color.lerp(success, other.success, t),
      warning: Color.lerp(warning, other.warning, t),
      info: Color.lerp(info, other.info, t),
      accent: Color.lerp(accent, other.accent, t),
    );
  }
}
