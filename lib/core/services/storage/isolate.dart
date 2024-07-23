// // import 'dart:isolate';

// // import 'package:dot_coaching/feats/feats.dart';
// // import 'package:flutter/foundation.dart';
// // import 'package:isar/isar.dart';
// // import 'package:path_provider/path_provider.dart';

// // class IsarIsolate<T> {
// //   final Future<T> Function() callback;
// //   final bool readOperation;
// //   IsarIsolate(this.callback, {this.readOperation = true});

// //   Future<T> execute() async {
// //     final port = ReceivePort();
// //     await Isolate.spawn(_isarExecutor, port.sendPort);

// //     final result = await port.first as T;
// //     port.close(); // Close the port after receiving the result
// //     return result;
// //   }

// //   Future<void> _isarExecutor(SendPort sendPort) async {
// //     final dir = await getApplicationDocumentsDirectory();
// //     final isar = await Isar.open(
// //       [
// //         UserEntitySchema,
// //         ClubEntitySchema,
// //         ProgramEntitySchema,
// //         ProgramExerciseEntitySchema,
// //         ExamEntitySchema,
// //         QuestionEntitySchema,
// //         TacticalEntitySchema,
// //       ],
// //       inspector: kDebugMode,
// //       directory: dir.path,
// //     );

// //     try {
// //       final result = readOperation
// //           ? await isar.txn(callback)
// //           : await isar.writeTxn(callback);
// //       Isolate.exit(sendPort, result);
// //     } catch (e) {
// //       Isolate.exit(sendPort, e);
// //     }
// //   }
// // }

// import 'package:dartz/dartz.dart';
// import 'package:dot_coaching/feats/feats.dart';
// import 'package:flutter/foundation.dart';
// import 'package:flutter/services.dart';
// import 'package:isar/isar.dart';
// import 'package:path_provider/path_provider.dart';

// Future putClubs(Tuple2<RootIsolateToken,List<ClubModel>> params) async {
//   BackgroundIsolateBinaryMessenger.ensureInitialized(params.value1);
//   Isar isar;
//   if (Isar.getInstance() == null) {
//     final dir = await getApplicationDocumentsDirectory();
//     isar = await Isar.open(
//       [
//         UserEntitySchema,
//         ClubEntitySchema,
//         ProgramEntitySchema,
//         ProgramExerciseEntitySchema,
//         ExamEntitySchema,
//         QuestionEntitySchema,
//         TacticalEntitySchema,
//       ],
//       inspector: kDebugMode,
//       directory: dir.path,
//     );
//   } else {
//     isar = Isar.getInstance()!;
//   }

//   isar.writeTxnSync(() {
//     isar.clubEntitys.clearSync();
//     for (final club in params.value2) {
//       isar.clubEntitys.putSync(club.toEntity());
//     }
//   });
// }
