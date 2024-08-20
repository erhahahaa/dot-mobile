import 'dart:async';

import 'package:dot_coaching/features/feature.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';

@lazySingleton
class IsarService {
  Isar? isar;

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

  IsarService();

  @PostConstruct(preResolve: true)
  Future<Isar?> initIsar() async {
    if (kIsWeb) return null;
    isar ??= await _createIsar();
    return isar;
  }

  @disposeMethod
  void dispose() {
    if (isar != null) {
      isar?.close();
    }
  }

  Future<Isar?> _createIsar() async {
    if (kIsWeb) return null;
    final dir = await getApplicationDocumentsDirectory();
    return Isar.open(
      schemas: schemas,
      inspector: kDebugMode,
      directory: dir.path,
    );
  }
}
