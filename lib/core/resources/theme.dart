import 'package:dot_coaching/core/core.dart';
import 'package:flutter/material.dart';
import 'package:moon_design/moon_design.dart';

final class DotTheme {
  static final typography = MoonTypography.typography.copyWith(
    heading: MoonTypography.typography.heading.apply(
      fontFamily: FontFamily.montserrat,
      fontWeightDelta: -1,
      fontVariations: [const FontVariation('wght', 500)],
    ),
    body: MoonTypography.typography.body.apply(
      fontFamily: FontFamily.montserrat,
      fontWeightDelta: 0,
      fontVariations: [const FontVariation('wght', 400)],
    ),
  );

  ThemeData lightTheme() {
    final lightTokens = MoonTokens.light.copyWith(
      colors: mdsLightColors,
      typography: typography,
    );

    return ThemeData.light(useMaterial3: true).copyWith(
      cardColor: Palette.CARD_LIGHT,
      primaryColor: Palette.PRIMARY,
      extensions: <ThemeExtension<dynamic>>[
        MoonTheme(tokens: lightTokens),
        const AppColors(
          eightCardColor: Palette.CARD_LIGHT,
          containerWrapperColor: Palette.BG_LIGHT,
        ),
      ],
    );
  }

  ThemeData darkTheme() {
    final darkTokens = MoonTokens.dark.copyWith(
      colors: mdsDarkColors,
      typography: typography,
    );

    return ThemeData.dark(useMaterial3: true).copyWith(
      cardColor: Palette.CARD_DARK,
      primaryColor: Palette.PRIMARY,
      extensions: <ThemeExtension<dynamic>>[
        MoonTheme(tokens: darkTokens),
        const AppColors(
          eightCardColor: Palette.CARD_DARK,
          containerWrapperColor: Palette.BG_DARK,
        )
      ],
    );
  }
}
