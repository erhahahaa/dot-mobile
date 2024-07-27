// import 'package:dot_coaching/core/resources/palette.dart';
// import 'package:dot_coaching/utils/utils.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';

// class DotTheme {
//   final TextTheme textTheme;

//   DotTheme(this.textTheme);

//   ThemeData light(BuildContext context) => ThemeData(
//         useMaterial3: true,
//         primaryColor: Palette.primaryLight,
//         disabledColor: Palette.shadowLight,
//         hintColor: Palette.subTextLight,
//         cardColor: Palette.cardLight,
//         scaffoldBackgroundColor: Palette.backgroundLight,
//         colorScheme: ColorScheme.light().copyWith(
//           primary: Palette.primaryLight,
//         ),
//         textTheme: textTheme.apply(
//           bodyColor: context.theme.colorScheme.onSurface,
//           displayColor: context.theme.colorScheme.onSurface,
//         ),
//         elevatedButtonTheme: ElevatedButtonThemeData(
//           style: ButtonStyle(
//             backgroundColor: WidgetStateProperty.all<Color>(
//               context.theme.colorScheme.primary,
//             ),
//             textStyle: WidgetStateProperty.all<TextStyle>(
//               textTheme.titleMedium!.copyWith(
//                 color: context.theme.colorScheme.onPrimary,
//               ),
//             ),
//             shape: WidgetStateProperty.all<OutlinedBorder>(
//               RoundedRectangleBorder(
//                 borderRadius: BorderRadius.circular(8.r),
//               ),
//             ),
//           ),
//         ),
//         brightness: Brightness.light,
//         iconTheme: const IconThemeData(color: Palette.primaryLight),
//         visualDensity: VisualDensity.adaptivePlatformDensity,
//         extensions: const <ThemeExtension<dynamic>>[
//           AppColors(
//             background: Palette.backgroundLight,
//             card: Palette.cardLight,
//             subtitle: Palette.subTextLight,
//             shadow: Palette.shadowDark,
//             green: Palette.greenLight,
//             roseWater: Palette.roseWaterLight,
//             flamingo: Palette.flamingoLight,
//             pink: Palette.pinkLight,
//             mauve: Palette.mauveLight,
//             maroon: Palette.maroonLight,
//             peach: Palette.peachLight,
//             yellow: Palette.yellowLight,
//             teal: Palette.tealLight,
//             sapphire: Palette.sapphireLight,
//             sky: Palette.skyLight,
//             blue: Palette.blueLight,
//             lavender: Palette.lavenderLight,
//             red: Palette.redLight,
//             text: Palette.textLight,
//             subText: Palette.subTextLight,
//           ),
//         ],
//       );

//   ThemeData dark(BuildContext context) => ThemeData(
//         useMaterial3: true,
//         brightness: Brightness.dark,
//         colorScheme: ColorScheme.dark().copyWith(
//           primary: Palette.primaryDark,
//         ),
//         textTheme: textTheme.apply(
//           bodyColor: context.theme.colorScheme.onSurface,
//           displayColor: context.theme.colorScheme.onSurface,
//         ),
//         scaffoldBackgroundColor: Palette.backgroundDark,
//         primaryColor: Palette.primaryDark,
//         disabledColor: Palette.shadowDark,
//         hintColor: Palette.subTextDark,
//         cardColor: Palette.cardDark,
//         elevatedButtonTheme: ElevatedButtonThemeData(
//           style: ButtonStyle(
//             backgroundColor: WidgetStateProperty.all<Color>(
//               context.theme.colorScheme.primary,
//             ),
//             textStyle: WidgetStateProperty.all<TextStyle>(
//               textTheme.titleMedium!.copyWith(
//                 color: context.theme.colorScheme.onPrimary,
//               ),
//             ),
//             shape: WidgetStateProperty.all<OutlinedBorder>(
//               RoundedRectangleBorder(
//                 borderRadius: BorderRadius.circular(8.r),
//               ),
//             ),
//           ),
//         ),
//         iconTheme: const IconThemeData(color: Palette.primaryDark),
//         visualDensity: VisualDensity.adaptivePlatformDensity,
//         extensions: const <ThemeExtension<dynamic>>[
//           AppColors(
//             background: Palette.backgroundDark,
//             card: Palette.cardDark,
//             subtitle: Palette.subTextDark,
//             shadow: Palette.shadowDark,
//             green: Palette.greenDark,
//             roseWater: Palette.roseWaterDark,
//             flamingo: Palette.flamingoDark,
//             pink: Palette.pinkDark,
//             mauve: Palette.mauveDark,
//             maroon: Palette.maroonDark,
//             peach: Palette.peachDark,
//             yellow: Palette.yellowDark,
//             teal: Palette.tealDark,
//             sapphire: Palette.sapphireDark,
//             sky: Palette.skyDark,
//             blue: Palette.blueDark,
//             lavender: Palette.lavenderDark,
//             red: Palette.redDark,
//             text: Palette.textDark,
//             subText: Palette.subTextDark,
//           ),
//         ],
//       );

//   ThemeData theme(ColorScheme colorScheme) => ThemeData();
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
//   final Color? text;
//   final Color? subText;

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
//     this.text,
//     this.subText,
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
//     Color? text,
//     Color? subText,
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
//       text: text ?? this.text,
//       subText: subText ?? this.subText,
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
//       text: Color.lerp(text, other.text, t),
//       subText: Color.lerp(subText, other.subText, t),
//     );
//   }
// }
