// import 'package:dot_coaching/core/core.dart';
// import 'package:dot_coaching/core/resources/resources.dart';
// import 'package:flutter/material.dart';

// ThemeData lightTheme(BuildContext ctx) {
//   final theme = Theme.of(ctx);
//   final textTheme = theme.textTheme;

//   return ThemeData(
//     useMaterial3: true,
//     primaryColor: Palette.primaryLight,
//     scaffoldBackgroundColor: Palette.backgroundLight,
//     colorScheme: const ColorScheme.light(
//       primary: Palette.primaryLight,
//       secondary: Palette.accentLight,
//       surface: Palette.backgroundLight,
//       brightness: Brightness.light,
//     ),
//     textTheme: TextTheme(
//       displayLarge: textTheme.displayLarge?.copyWith(
//         color: Palette.textLight,
//         fontSize: Dimens.displayLarge,
//       ),
//       displayMedium: textTheme.displayMedium?.copyWith(
//         color: Palette.textLight,
//         fontSize: Dimens.displayMedium,
//       ),
//       displaySmall: textTheme.displaySmall?.copyWith(
//         color: Palette.textLight,
//         fontSize: Dimens.displaySmall,
//       ),
//       headlineLarge: textTheme.headlineLarge?.copyWith(
//         color: Palette.textLight,
//         fontSize: Dimens.headingLarge,
//       ),
//       headlineMedium: textTheme.headlineMedium?.copyWith(
//         color: Palette.textLight,
//         fontSize: Dimens.headingMedium,
//       ),
//       headlineSmall: textTheme.headlineSmall?.copyWith(
//         color: Palette.textLight,
//         fontSize: Dimens.headingSmall,
//       ),
//       titleLarge: textTheme.titleLarge?.copyWith(
//         color: Palette.textLight,
//         fontSize: Dimens.titleLarge,
//       ),
//       titleMedium: textTheme.titleMedium?.copyWith(
//         color: Palette.textLight,
//         fontSize: Dimens.titleMedium,
//       ),
//       titleSmall: textTheme.titleSmall?.copyWith(
//         color: Palette.textLight,
//         fontSize: Dimens.titleSmall,
//       ),
//       bodyLarge: textTheme.bodyLarge?.copyWith(
//         color: Palette.textLight,
//         fontSize: Dimens.bodyLarge,
//       ),
//       bodyMedium: textTheme.bodyMedium?.copyWith(
//         color: Palette.textLight,
//         fontSize: Dimens.bodyMedium,
//       ),
//       bodySmall: textTheme.bodySmall?.copyWith(
//         color: Palette.textLight,
//         fontSize: Dimens.bodySmall,
//       ),
//     ),
//     navigationBarTheme: const NavigationBarThemeData(
//       backgroundColor: Palette.backgroundLight,
//       indicatorColor: Palette.accentLight,
//     ),
//     elevatedButtonTheme: ElevatedButtonThemeData(
//       style: ElevatedButton.styleFrom(
//         backgroundColor: Palette.accentLight,
//         shape: RoundedRectangleBorder(
//           borderRadius: BorderRadius.circular(Dimens.borderRadiusMedium),
//         ),
//       ),
//     ),
//     brightness: Brightness.light,
//     iconTheme: const IconThemeData(color: Palette.primaryLight),
//     visualDensity: VisualDensity.adaptivePlatformDensity,
//     extensions: const <ThemeExtension<dynamic>>[
//       AppColors(
//         background: Palette.backgroundLight,
//         card: Palette.cardLight,
//         subtitle: Palette.subTextLight,
//         shadow: Palette.shadowDark,
//         green: Palette.greenLight,
//         roseWater: Palette.roseWaterLight,
//         flamingo: Palette.flamingoLight,
//         pink: Palette.pinkLight,
//         mauve: Palette.mauveLight,
//         maroon: Palette.maroonLight,
//         peach: Palette.peachLight,
//         yellow: Palette.yellowLight,
//         teal: Palette.tealLight,
//         sapphire: Palette.sapphireLight,
//         sky: Palette.skyLight,
//         blue: Palette.blueLight,
//         lavender: Palette.lavenderLight,
//         red: Palette.redLight,
//       ),
//     ],
//   );
// }

// ThemeData darkTheme(BuildContext ctx) {
//   final theme = Theme.of(ctx);
//   final textTheme = theme.textTheme;

//   return ThemeData(
//     useMaterial3: true,
//     primaryColor: Palette.primaryDark,
//     scaffoldBackgroundColor: Palette.backgroundDark,
//     colorScheme: const ColorScheme.dark(
//       primary: Palette.primaryDark,
//       secondary: Palette.accentDark,
//       surface: Palette.backgroundDark,
//       brightness: Brightness.dark,
//     ),
//     textTheme: TextTheme(
//       displayLarge: textTheme.displayLarge?.copyWith(
//         color: Palette.tealDark,
//         fontSize: Dimens.displayLarge,
//       ),
//       displayMedium: textTheme.displayMedium?.copyWith(
//         color: Palette.tealDark,
//         fontSize: Dimens.displayMedium,
//       ),
//       displaySmall: textTheme.displaySmall?.copyWith(
//         color: Palette.tealDark,
//         fontSize: Dimens.displaySmall,
//       ),
//       headlineLarge: textTheme.headlineLarge?.copyWith(
//         color: Palette.tealDark,
//         fontSize: Dimens.headingLarge,
//       ),
//       headlineMedium: textTheme.headlineMedium?.copyWith(
//         color: Palette.tealDark,
//         fontSize: Dimens.headingMedium,
//       ),
//       headlineSmall: textTheme.headlineSmall?.copyWith(
//         color: Palette.tealDark,
//         fontSize: Dimens.headingSmall,
//       ),
//       titleLarge: textTheme.titleLarge?.copyWith(
//         color: Palette.tealDark,
//         fontSize: Dimens.titleLarge,
//       ),
//       titleMedium: textTheme.titleMedium?.copyWith(
//         color: Palette.tealDark,
//         fontSize: Dimens.titleMedium,
//       ),
//       titleSmall: textTheme.titleSmall?.copyWith(
//         color: Palette.tealDark,
//         fontSize: Dimens.titleSmall,
//       ),
//       bodyLarge: textTheme.bodyLarge?.copyWith(
//         color: Palette.tealDark,
//         fontSize: Dimens.bodyLarge,
//       ),
//       bodyMedium: textTheme.bodyMedium?.copyWith(
//         color: Palette.tealDark,
//         fontSize: Dimens.bodyMedium,
//       ),
//       bodySmall: textTheme.bodySmall?.copyWith(
//         color: Palette.tealDark,
//         fontSize: Dimens.bodySmall,
//       ),
//     ),
//     navigationBarTheme: const NavigationBarThemeData(
//       backgroundColor: Palette.backgroundDark,
//       indicatorColor: Palette.accentDark,
//     ),
//     elevatedButtonTheme: ElevatedButtonThemeData(
//       style: ElevatedButton.styleFrom(
//         backgroundColor: Palette.accentDark,
//         shape: RoundedRectangleBorder(
//           borderRadius: BorderRadius.circular(Dimens.borderRadiusMedium),
//         ),
//       ),
//     ),
//     brightness: Brightness.dark,
//     iconTheme: const IconThemeData(color: Palette.primaryDark),
//     visualDensity: VisualDensity.adaptivePlatformDensity,
//     extensions: const <ThemeExtension<dynamic>>[
//       AppColors(
//         background: Palette.backgroundDark,
//         card: Palette.cardDark,
//         subtitle: Palette.subTextDark,
//         shadow: Palette.shadowDark,
//         green: Palette.greenDark,
//         roseWater: Palette.roseWaterDark,
//         flamingo: Palette.flamingoDark,
//         pink: Palette.pinkDark,
//         mauve: Palette.mauveDark,
//         maroon: Palette.maroonDark,
//         peach: Palette.peachDark,
//         yellow: Palette.yellowDark,
//         teal: Palette.tealDark,
//         sapphire: Palette.sapphireDark,
//         sky: Palette.skyDark,
//         blue: Palette.blueDark,
//         lavender: Palette.lavenderDark,
//         red: Palette.redDark,
//       ),
//     ],
//   );
// }

// class AppColors extends ThemeExtension<AppColors> {
//   final Color? background;
//   final Color? card;
//   final Color? buttonText;
//   final Color? subtitle;
//   final Color? shadow;
//   final Color? green;
//   final Color? roseWater;
//   final Color? flamingo;
//   final Color? pink;
//   final Color? mauve;
//   final Color? maroon;
//   final Color? peach;
//   final Color? yellow;
//   final Color? teal;
//   final Color? sky;
//   final Color? sapphire;
//   final Color? blue;
//   final Color? lavender;
//   final Color? red;

//   const AppColors({
//     this.background,
//     this.card,
//     this.buttonText,
//     this.subtitle,
//     this.shadow,
//     this.green,
//     this.roseWater,
//     this.flamingo,
//     this.pink,
//     this.mauve,
//     this.maroon,
//     this.peach,
//     this.yellow,
//     this.teal,
//     this.sapphire,
//     this.sky,
//     this.blue,
//     this.lavender,
//     this.red,
//   });

//   @override
//   ThemeExtension<AppColors> copyWith({
//     Color? background,
//     Color? card,
//     Color? buttonText,
//     Color? subtitle,
//     Color? shadow,
//     Color? green,
//     Color? roseWater,
//     Color? flamingo,
//     Color? pink,
//     Color? mauve,
//     Color? maroon,
//     Color? peach,
//     Color? yellow,
//     Color? teal,
//     Color? sky,
//     Color? sapphire,
//     Color? blue,
//     Color? lavender,
//     Color? red,
//   }) {
//     return AppColors(
//       background: background ?? this.background,
//       card: card ?? this.card,
//       buttonText: buttonText ?? this.buttonText,
//       subtitle: subtitle ?? this.subtitle,
//       shadow: shadow ?? this.shadow,
//       green: green ?? this.green,
//       roseWater: roseWater ?? this.roseWater,
//       flamingo: flamingo ?? this.flamingo,
//       pink: pink ?? this.pink,
//       mauve: mauve ?? this.mauve,
//       maroon: maroon ?? this.maroon,
//       peach: peach ?? this.peach,
//       yellow: yellow ?? this.yellow,
//       teal: teal ?? this.teal,
//       sky: sky ?? this.sky,
//       sapphire: sapphire ?? this.sapphire,
//       blue: blue ?? this.blue,
//       lavender: lavender ?? this.lavender,
//       red: red ?? this.red,
//     );
//   }

//   @override
//   ThemeExtension<AppColors> lerp(
//     covariant ThemeExtension<AppColors>? other,
//     double t,
//   ) {
//     if (other is! AppColors) {
//       return this;
//     }
//     return AppColors(
//       background: Color.lerp(background, other.background, t),
//       card: Color.lerp(card, other.card, t),
//       buttonText: Color.lerp(buttonText, other.buttonText, t),
//       subtitle: Color.lerp(subtitle, other.subtitle, t),
//       shadow: Color.lerp(shadow, other.shadow, t),
//       green: Color.lerp(green, other.green, t),
//       roseWater: Color.lerp(roseWater, other.roseWater, t),
//       flamingo: Color.lerp(flamingo, other.flamingo, t),
//       pink: Color.lerp(pink, other.pink, t),
//       mauve: Color.lerp(mauve, other.mauve, t),
//       maroon: Color.lerp(maroon, other.maroon, t),
//       peach: Color.lerp(peach, other.peach, t),
//       yellow: Color.lerp(yellow, other.yellow, t),
//       teal: Color.lerp(teal, other.teal, t),
//       sapphire: Color.lerp(sapphire, other.sapphire, t),
//       blue: Color.lerp(blue, other.blue, t),
//       lavender: Color.lerp(lavender, other.lavender, t),
//       sky: Color.lerp(sky, other.sky, t),
//       red: Color.lerp(red, other.red, t),
//     );
//   }
// }
