import "package:flutter/material.dart";
import "package:flutter_screenutil/flutter_screenutil.dart";

class MaterialTheme {
  final TextTheme textTheme;

  const MaterialTheme(this.textTheme);

  static ColorScheme lightScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff2c3dc8),
      surfaceTint: Color(0xff3d4dd7),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff5666ef),
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xff8c5006),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xfffcac60),
      onSecondaryContainer: Color(0xff4a2700),
      tertiary: Color(0xff006c52),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff5ff7c7),
      onTertiaryContainer: Color(0xff00503c),
      error: Color(0xffba1a1a),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffffdad6),
      onErrorContainer: Color(0xff410002),
      surface: Color(0xfffbf8ff),
      onSurface: Color(0xff1a1b23),
      onSurfaceVariant: Color(0xff454654),
      outline: Color(0xff757686),
      outlineVariant: Color(0xffc5c5d7),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff2f3038),
      inversePrimary: Color(0xffbdc2ff),
      primaryFixed: Color(0xffdfe0ff),
      onPrimaryFixed: Color(0xff000964),
      primaryFixedDim: Color(0xffbdc2ff),
      onPrimaryFixedVariant: Color(0xff2031bf),
      secondaryFixed: Color(0xffffdcc0),
      onSecondaryFixed: Color(0xff2d1600),
      secondaryFixedDim: Color(0xffffb876),
      onSecondaryFixedVariant: Color(0xff6b3b00),
      tertiaryFixed: Color(0xff64fbcb),
      onTertiaryFixed: Color(0xff002117),
      tertiaryFixedDim: Color(0xff40deb0),
      onTertiaryFixedVariant: Color(0xff00513d),
      surfaceDim: Color(0xffdad9e4),
      surfaceBright: Color(0xfffbf8ff),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfff4f2fe),
      surfaceContainer: Color(0xffefecf8),
      surfaceContainerHigh: Color(0xffe9e7f3),
      surfaceContainerHighest: Color(0xffe3e1ed),
    );
  }

  ThemeData light() {
    return theme(lightScheme());
  }

  static ColorScheme darkScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xffbdc2ff),
      surfaceTint: Color(0xffbdc2ff),
      onPrimary: Color(0xff00149e),
      primaryContainer: Color(0xff4e5ee7),
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xffffcea5),
      onSecondary: Color(0xff4b2800),
      secondaryContainer: Color(0xffea9d53),
      onSecondaryContainer: Color(0xff391c00),
      tertiary: Color(0xfffcfffb),
      onTertiary: Color(0xff003829),
      tertiaryContainer: Color(0xff52ecbc),
      onTertiaryContainer: Color(0xff004836),
      error: Color(0xffffb4ab),
      onError: Color(0xff690005),
      errorContainer: Color(0xff93000a),
      onErrorContainer: Color(0xffffdad6),
      surface: Color(0xff12131b),
      onSurface: Color(0xffe3e1ed),
      onSurfaceVariant: Color(0xffc5c5d7),
      outline: Color(0xff8f8fa0),
      outlineVariant: Color(0xff454654),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffe3e1ed),
      inversePrimary: Color(0xff3d4dd7),
      primaryFixed: Color(0xffdfe0ff),
      onPrimaryFixed: Color(0xff000964),
      primaryFixedDim: Color(0xffbdc2ff),
      onPrimaryFixedVariant: Color(0xff2031bf),
      secondaryFixed: Color(0xffffdcc0),
      onSecondaryFixed: Color(0xff2d1600),
      secondaryFixedDim: Color(0xffffb876),
      onSecondaryFixedVariant: Color(0xff6b3b00),
      tertiaryFixed: Color(0xff64fbcb),
      onTertiaryFixed: Color(0xff002117),
      tertiaryFixedDim: Color(0xff40deb0),
      onTertiaryFixedVariant: Color(0xff00513d),
      surfaceDim: Color(0xff12131b),
      surfaceBright: Color(0xff383841),
      surfaceContainerLowest: Color(0xff0d0e15),
      surfaceContainerLow: Color(0xff1a1b23),
      surfaceContainer: Color(0xff1e1f27),
      surfaceContainerHigh: Color(0xff292932),
      surfaceContainerHighest: Color(0xff34343d),
    );
  }

  ThemeData dark() {
    return theme(darkScheme());
  }

  ThemeData theme(ColorScheme colorScheme) => ThemeData(
        useMaterial3: true,
        brightness: colorScheme.brightness,
        colorScheme: colorScheme,
        textTheme: textTheme.apply(
          bodyColor: colorScheme.onSurface,
          displayColor: colorScheme.onSurface,
        ),
        scaffoldBackgroundColor: colorScheme.surface,
        canvasColor: colorScheme.surface,
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
            backgroundColor: WidgetStateProperty.all<Color>(
              colorScheme.primary,
            ),
            textStyle: WidgetStateProperty.all<TextStyle>(
              textTheme.titleMedium!.copyWith(
                color: colorScheme.onPrimary,
              ),
            ),
            shape: WidgetStateProperty.all<OutlinedBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.r),
              ),
            ),
          ),
        ),
      );

  /// Purple
  static const purple = ExtendedColor(
    seed: Color(0xff763ad8),
    value: Color(0xff763ad8),
    light: ColorFamily(
      color: Color(0xff6019c1),
      onColor: Color(0xffffffff),
      colorContainer: Color(0xff854ce8),
      onColorContainer: Color(0xffffffff),
    ),
    dark: ColorFamily(
      color: Color(0xffd4bbff),
      onColor: Color(0xff40008c),
      colorContainer: Color(0xff6d2fcf),
      onColorContainer: Color(0xfffffeff),
    ),
  );

  /// Teal
  static const teal = ExtendedColor(
    seed: Color(0xff009bcc),
    value: Color(0xff009bcc),
    light: ColorFamily(
      color: Color(0xff006687),
      onColor: Color(0xffffffff),
      colorContainer: Color(0xff29a9da),
      onColorContainer: Color(0xff00111a),
    ),
    dark: ColorFamily(
      color: Color(0xff74d1ff),
      onColor: Color(0xff003548),
      colorContainer: Color(0xff007ea6),
      onColorContainer: Color(0xffffffff),
    ),
  );

  /// Green
  static const green = ExtendedColor(
    seed: Color(0xff28aa64),
    value: Color(0xff28aa64),
    light: ColorFamily(
      color: Color(0xff006d3b),
      onColor: Color(0xffffffff),
      colorContainer: Color(0xff3ab770),
      onColorContainer: Color(0xff001b0b),
    ),
    dark: ColorFamily(
      color: Color(0xff64dd91),
      onColor: Color(0xff00391c),
      colorContainer: Color(0xff00864a),
      onColorContainer: Color(0xffffffff),
    ),
  );

  List<ExtendedColor> get extendedColors => [
        purple,
        teal,
        green,
      ];
}

class AppColors extends ThemeExtension<AppColors> {
  final ColorFamily? purple;
  final ColorFamily? teal;
  final ColorFamily? green;

  const AppColors({this.purple, this.teal, this.green});

  @override
  ThemeExtension<AppColors> copyWith({
    ColorFamily? purple,
    ColorFamily? teal,
    ColorFamily? green,
  }) =>
      AppColors(
        purple: purple ?? this.purple,
        teal: teal ?? this.teal,
        green: green ?? this.green,
      );

  @override
  ThemeExtension<AppColors> lerp(
    covariant ThemeExtension<AppColors>? other,
    double t,
  ) {
    if (other is! AppColors) return this;

    return AppColors(
      purple: ColorFamily(
        color: Color.lerp(purple!.color, other.purple!.color, t)!,
        onColor: Color.lerp(purple!.onColor, other.purple!.onColor, t)!,
        colorContainer: Color.lerp(
            purple!.colorContainer, other.purple!.colorContainer, t)!,
        onColorContainer: Color.lerp(
          purple!.onColorContainer,
          other.purple!.onColorContainer,
          t,
        )!,
      ),
      teal: ColorFamily(
        color: Color.lerp(teal!.color, other.teal!.color, t)!,
        onColor: Color.lerp(teal!.onColor, other.teal!.onColor, t)!,
        colorContainer:
            Color.lerp(teal!.colorContainer, other.teal!.colorContainer, t)!,
        onColorContainer: Color.lerp(
          teal!.onColorContainer,
          other.teal!.onColorContainer,
          t,
        )!,
      ),
      green: ColorFamily(
        color: Color.lerp(green!.color, other.green!.color, t)!,
        onColor: Color.lerp(green!.onColor, other.green!.onColor, t)!,
        colorContainer:
            Color.lerp(green!.colorContainer, other.green!.colorContainer, t)!,
        onColorContainer: Color.lerp(
          green!.onColorContainer,
          other.green!.onColorContainer,
          t,
        )!,
      ),
    );
  }
}

class ExtendedColor {
  final Color seed, value;
  final ColorFamily light;
  final ColorFamily dark;

  const ExtendedColor({
    required this.seed,
    required this.value,
    required this.light,
    required this.dark,
  });
}

class ColorFamily {
  const ColorFamily({
    required this.color,
    required this.onColor,
    required this.colorContainer,
    required this.onColorContainer,
  });

  final Color color;
  final Color onColor;
  final Color colorContainer;
  final Color onColorContainer;
}
