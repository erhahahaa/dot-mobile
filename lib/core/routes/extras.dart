// import 'dart:convert';

// import 'package:dot_coaching/feats/feats.dart';
// import 'package:dot_coaching/utils/helpers/logger.dart';
// import 'package:flutter/widgets.dart';

// class DotExtraCodec extends Codec<Object?, Object?> {
//   const DotExtraCodec();

//   @override
//   Converter<Object?, Object?> get encoder => const DotExtraEncoder();

//   @override
//   Converter<Object?, Object?> get decoder => const DotExtraDecoder();
// }

// class DotExtraEncoder extends Converter<Object?, Object?> {
//   const DotExtraEncoder();

//   @override
//   Object? convert(Object? input) {
//     log.f("DotExtraEncoder: $input");
//     if (input == null) return null;
//     if (input is Map<String, dynamic>) {
//       if (input['route'] == 'club') {
//         return {
//           'route': 'club',
//           'club': input['club']?.toJson(),
//         };
//       }

//       if (input['route'] == 'program') {
//         return {
//           'route': 'program',
//           'club': input['club']?.toJson(),
//           'program': input['program']?.toJson(),
//           'exercises': input['exercises']?.map((e) => e.toJson()).toList(),
//         };
//       }

//       if (input['route'] == 'exam') {
//         return {
//           'route': 'exam',
//           'club': input['club']?.toJson(),
//           'exam': input['exam']?.toJson(),
//           'questions': input['questions']?.map((e) => e.toJson()).toList(),
//         };
//       }

//       if (input['route'] == 'tactical') {
//         return {
//           'route': 'tactical',
//           'club': input['club']?.toJson(),
//           'tactical': input['tactical']?.toJson(),
//           'screenSize': {
//             'width': input['screenSize']?.width,
//             'height': input['screenSize']?.height,
//           },
//           'aspectRatio': input['aspectRatio'],
//         };
//       }

//       if (input['route'] == 'media') {
//         return {
//           'route': 'media',
//           'club': input['club']?.toJson(),
//         };
//       }
//     }

//     // throw FormatException('Unable to parse input: $input');
//     return input;
//   }
// }

// class DotExtraDecoder extends Converter<Object?, Object?> {
//   const DotExtraDecoder();

//   @override
//   Object? convert(Object? input) {
//     if (input == null) return null;
//     if (input is Map<String, dynamic>) {
//       if (input['route'] == 'club') {
//         return {
//           'route': 'club',
//           'club': ClubModel.fromJson(input['club']),
//         };
//       }

//       if (input['route'] == 'program') {
//         return {
//           'route': 'program',
//           'club': ClubModel.fromJson(input['club']),
//           'program': ProgramModel.fromJson(input['program']),
//           'exercises': input['exercises']
//               ?.map((e) => ProgramExerciseModel.fromJson(e))
//               .toList(),
//         };
//       }

//       if (input['route'] == 'exam') {
//         return {
//           'route': 'exam',
//           'club': ClubModel.fromJson(input['club']),
//           'exam': ExamModel.fromJson(input['exam']),
//           'questions': input['questions']
//               ?.map((e) => QuestionModel.fromJson(e))
//               .toList(),
//         };
//       }

//       if (input['route'] == 'tactical') {
//         return {
//           'route': 'tactical',
//           'club': ClubModel.fromJson(input['club']),
//           'tactical': TacticalModel.fromJson(input['tactical']),
//           'screenSize': Size(
//             input['screenSize']['width'],
//             input['screenSize']['height'],
//           ),
//           'aspectRatio': input['aspectRatio'],
//         };
//       }

//       if (input['route'] == 'media') {
//         return {
//           'route': 'media',
//           'club': ClubModel.fromJson(input['club']),
//         };
//       }
//     }

//     throw FormatException('Unable to parse input: $input');
//     return input;
//   }
// }
