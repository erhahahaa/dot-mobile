import 'package:dot_coaching/features/feature.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:isar/isar.dart';

@injectable
class IsarService {
  late Isar isar;

  static const List<IsarGeneratedSchema> schemas = [
    UserEntitySchema,
    UserPreferencesEntitySchema,
    ClubEntitySchema,
    ProgramEntitySchema,
    ExerciseEntitySchema,
    ExamEntitySchema,
    QuestionEntitySchema,
    EvaluationEntitySchema,
    TacticalEntitySchema,
    MediaEntitySchema,
    NotificationDataEntitySchema,
  ];

  IsarService({required String path}) {
    isar = _createIsar(path);
  }

  // @PostConstruct(preResolve: true)
  // Future<Isar?> initIsar() async {
  //   if (kIsWeb) return null;
  //   isar ??= await _createIsar();
  //   return isar;
  // }

  // @disposeMethod
  // void dispose() {
  //   if (isar != null) {
  //     isar?.close();
  //   }
  // }

  Isar _createIsar(String path) {
    if (path.isEmpty) {
      return Isar.open(
        schemas: schemas,
        directory: Isar.sqliteInMemory,
        engine: IsarEngine.sqlite,
      );
    } else {
      return Isar.open(
        schemas: schemas,
        inspector: kDebugMode,
        directory: path,
      );
    }
  }
}
