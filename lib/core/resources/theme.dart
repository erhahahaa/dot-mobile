import "package:dot_coaching/core/core.dart";
import "package:flutter/material.dart";
import "package:flutter_screenutil/flutter_screenutil.dart";

class MaterialTheme {
  final TextTheme textTheme;

  const MaterialTheme(this.textTheme);

  static ColorScheme lightScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff5868F1),
      surfaceTint: Color(0xff5868F1),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff8a96f8),
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
      surface: Palette.accentDark,
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

  static const lightExtensions = [
    AppColors(
      background: Palette.backgroundLight,
      card: Palette.cardLight,
      subtitle: Palette.subTextLight,
      shadow: Palette.shadowDark,
      green: Palette.greenLight,
      roseWater: Palette.roseWaterLight,
      flamingo: Palette.flamingoLight,
      pink: Palette.pinkLight,
      mauve: Palette.mauveLight,
      maroon: Palette.maroonLight,
      peach: Palette.peachLight,
      yellow: Palette.yellowLight,
      teal: Palette.tealLight,
      sapphire: Palette.sapphireLight,
      sky: Palette.skyLight,
      blue: Palette.blueLight,
      lavender: Palette.lavenderLight,
      red: Palette.redLight,
      text: Palette.textLight,
      subText: Palette.subTextLight,
    ),
  ];

  ThemeData light() {
    return theme(lightScheme(), lightExtensions);
  }

  static ColorScheme darkScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xff5868F1),
      surfaceTint: Color(0xff5868F1),
      onPrimary: Color(0xffc2c7ff),
      primaryContainer: Color(0xff3d4dd7),
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

  static const darkExtensions = [
    AppColors(
      background: Palette.backgroundDark,
      card: Palette.cardDark,
      subtitle: Palette.subTextDark,
      shadow: Palette.shadowDark,
      green: Palette.greenDark,
      roseWater: Palette.roseWaterDark,
      flamingo: Palette.flamingoDark,
      pink: Palette.pinkDark,
      mauve: Palette.mauveDark,
      maroon: Palette.maroonDark,
      peach: Palette.peachDark,
      yellow: Palette.yellowDark,
      teal: Palette.tealDark,
      sapphire: Palette.sapphireDark,
      sky: Palette.skyDark,
      blue: Palette.blueDark,
      lavender: Palette.lavenderDark,
      red: Palette.redDark,
      text: Palette.textDark,
      subText: Palette.subTextDark,
    ),
  ];

  ThemeData dark() {
    return theme(darkScheme(), darkExtensions);
  }

  ThemeData theme(
    ColorScheme colorScheme,
    Iterable<ThemeExtension<dynamic>>? extensions,
  ) =>
      ThemeData(
        useMaterial3: true,
        brightness: colorScheme.brightness,
        colorScheme: colorScheme,
        textTheme: textTheme.apply(
          bodyColor: colorScheme.onSurface,
          displayColor: colorScheme.onSurface,
        ),
        scaffoldBackgroundColor: colorScheme.surface,
        canvasColor: colorScheme.surface,
        cardColor: colorScheme.surface,
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
            backgroundColor: WidgetStateProperty.all<Color>(
              Palette.primaryLight,
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
        extensions: extensions,
      );
}

class AppColors extends ThemeExtension<AppColors> {
  final Color? background;
  final Color? card;
  final Color? buttonText;
  final Color? subtitle;
  final Color? shadow;
  final Color? green;
  final Color? roseWater;
  final Color? flamingo;
  final Color? pink;
  final Color? mauve;
  final Color? maroon;
  final Color? peach;
  final Color? yellow;
  final Color? teal;
  final Color? sky;
  final Color? sapphire;
  final Color? blue;
  final Color? lavender;
  final Color? red;
  final Color? text;
  final Color? subText;

  const AppColors({
    this.background,
    this.card,
    this.buttonText,
    this.subtitle,
    this.shadow,
    this.green,
    this.roseWater,
    this.flamingo,
    this.pink,
    this.mauve,
    this.maroon,
    this.peach,
    this.yellow,
    this.teal,
    this.sapphire,
    this.sky,
    this.blue,
    this.lavender,
    this.red,
    this.text,
    this.subText,
  });

  @override
  ThemeExtension<AppColors> copyWith({
    Color? background,
    Color? card,
    Color? buttonText,
    Color? subtitle,
    Color? shadow,
    Color? green,
    Color? roseWater,
    Color? flamingo,
    Color? pink,
    Color? mauve,
    Color? maroon,
    Color? peach,
    Color? yellow,
    Color? teal,
    Color? sky,
    Color? sapphire,
    Color? blue,
    Color? lavender,
    Color? red,
    Color? text,
    Color? subText,
  }) {
    return AppColors(
      background: background ?? this.background,
      card: card ?? this.card,
      buttonText: buttonText ?? this.buttonText,
      subtitle: subtitle ?? this.subtitle,
      shadow: shadow ?? this.shadow,
      green: green ?? this.green,
      roseWater: roseWater ?? this.roseWater,
      flamingo: flamingo ?? this.flamingo,
      pink: pink ?? this.pink,
      mauve: mauve ?? this.mauve,
      maroon: maroon ?? this.maroon,
      peach: peach ?? this.peach,
      yellow: yellow ?? this.yellow,
      teal: teal ?? this.teal,
      sky: sky ?? this.sky,
      sapphire: sapphire ?? this.sapphire,
      blue: blue ?? this.blue,
      lavender: lavender ?? this.lavender,
      red: red ?? this.red,
      text: text ?? this.text,
      subText: subText ?? this.subText,
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
      background: Color.lerp(background, other.background, t),
      card: Color.lerp(card, other.card, t),
      buttonText: Color.lerp(buttonText, other.buttonText, t),
      subtitle: Color.lerp(subtitle, other.subtitle, t),
      shadow: Color.lerp(shadow, other.shadow, t),
      green: Color.lerp(green, other.green, t),
      roseWater: Color.lerp(roseWater, other.roseWater, t),
      flamingo: Color.lerp(flamingo, other.flamingo, t),
      pink: Color.lerp(pink, other.pink, t),
      mauve: Color.lerp(mauve, other.mauve, t),
      maroon: Color.lerp(maroon, other.maroon, t),
      peach: Color.lerp(peach, other.peach, t),
      yellow: Color.lerp(yellow, other.yellow, t),
      teal: Color.lerp(teal, other.teal, t),
      sapphire: Color.lerp(sapphire, other.sapphire, t),
      blue: Color.lerp(blue, other.blue, t),
      lavender: Color.lerp(lavender, other.lavender, t),
      sky: Color.lerp(sky, other.sky, t),
      red: Color.lerp(red, other.red, t),
      text: Color.lerp(text, other.text, t),
      subText: Color.lerp(subText, other.subText, t),
    );
  }
}
