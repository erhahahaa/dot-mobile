import 'dart:async';

import 'package:dot_coaching/feats/feats.dart';
import 'package:flutter/foundation.dart';
import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';

class IsarClient {
  late Isar _isar;

  Isar get isar => _isar;

  IsarCollection<UserEntity> get users => _isar.userEntitys;
  IsarCollection<UserPreferencesEntity> get userPreferences =>
      _isar.userPreferencesEntitys;
  IsarCollection<ClubEntity> get clubs => _isar.clubEntitys;
  IsarCollection<ProgramEntity> get programs => _isar.programEntitys;
  IsarCollection<ProgramExerciseEntity> get programExercises =>
      _isar.programExerciseEntitys;
  IsarCollection<ExamEntity> get exams => _isar.examEntitys;
  IsarCollection<QuestionEntity> get questions => _isar.questionEntitys;
  IsarCollection<EvaluationEntity> get evaluations => _isar.evaluationEntitys;
  IsarCollection<TacticalEntity> get tacticals => _isar.tacticalEntitys;
  IsarCollection<MediaEntity> get medias => _isar.mediaEntitys;

  IsarClient();

  Future<void> initIsar() async {
    if (Isar.getInstance() == null) {
      _isar = await _createIsar();
    } else {
      _isar = Isar.getInstance()!;
    }
  }

  Future<Isar> _createIsar() async {
    final dir = await getApplicationDocumentsDirectory();
    return await Isar.open(
      [
        UserEntitySchema,
        UserPreferencesEntitySchema,
        ClubEntitySchema,
        ProgramEntitySchema,
        ProgramExerciseEntitySchema,
        ExamEntitySchema,
        QuestionEntitySchema,
        EvaluationEntitySchema,
        TacticalEntitySchema,
        MediaEntitySchema,
      ],
      inspector: kDebugMode,
      directory: dir.path,
    );
  }
}
