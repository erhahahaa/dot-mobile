import 'package:dot_coaching/features/feature.dart';
import 'package:isar/isar.dart';

part 'exercise_entity.g.dart';

enum ExerciseRestUnit { sec, min, hour }

enum ExerciseSetsUnit { set }

enum ExerciseRepetitionUnit { rep }

enum ExerciseTempoUnit { mpm, mph, bpm, kph, sec }

enum ExerciseIntensityUnit { rpe, rir, rm, kg, lbs }

@Collection(accessor: 'exercises')
class ExerciseEntity {
  final int id;
  final int programId;
  final int? mediaId;
  final int order;
  final String name;
  final String? description;
  @enumValue
  final ExerciseUnitValueEntity? repetition;
  @enumValue
  final ExerciseUnitValueEntity? sets;
  @enumValue
  final ExerciseUnitValueEntity? rest;
  @enumValue
  final ExerciseUnitValueEntity? tempo;
  @enumValue
  final ExerciseUnitValueEntity? intensity;
  final MediaEmbedEntity? media;
  final DateTime? createdAt;
  final DateTime? updatedAt;

  const ExerciseEntity({
    this.id = 0,
    this.programId = 0,
    this.mediaId,
    this.order = 0,
    this.name = 'DOT Exercise 0',
    this.description,
    this.repetition,
    this.sets,
    this.rest,
    this.tempo,
    this.intensity,
    this.media,
    this.createdAt,
    this.updatedAt,
  });
}

@embedded
class ExerciseUnitValueEntity {
  final String? unit;
  final int value;

  const ExerciseUnitValueEntity({
    this.unit,
    this.value = 0,
  });
}

extension ExerciseRepetitionUnitExtension on ExerciseRepetitionUnit {
  String get name {
    switch (this) {
      case ExerciseRepetitionUnit.rep:
        return 'Rep';
      default:
        return 'Rep';
    }
  }

  String get value {
    switch (this) {
      case ExerciseRepetitionUnit.rep:
      default:
        return 'reps';
    }
  }
}

extension ExerciseSetsUnitExtension on ExerciseSetsUnit {
  String get name {
    switch (this) {
      case ExerciseSetsUnit.set:
        return 'Set';
      default:
        return 'Set';
    }
  }

  String get value {
    switch (this) {
      case ExerciseSetsUnit.set:
      default:
        return 'sets';
    }
  }
}

extension ExerciseRestUnitExtension on ExerciseRestUnit {
  String get name {
    switch (this) {
      case ExerciseRestUnit.sec:
        return 'Second';
      case ExerciseRestUnit.min:
        return 'Minute';
      case ExerciseRestUnit.hour:
        return 'Hour';
      default:
        return 'Second';
    }
  }

  String get value {
    switch (this) {
      case ExerciseRestUnit.sec:
        return 'sec';
      case ExerciseRestUnit.min:
        return 'min';
      case ExerciseRestUnit.hour:
        return 'hour';
      default:
        return 'sec';
    }
  }
}

extension ExerciseTempoUnitExtension on ExerciseTempoUnit {
  String get name {
    switch (this) {
      case ExerciseTempoUnit.bpm:
        return 'BPM';
      case ExerciseTempoUnit.mpm:
        return 'MPM';
      case ExerciseTempoUnit.mph:
        return 'MPH';
      case ExerciseTempoUnit.kph:
        return 'KPH';
      case ExerciseTempoUnit.sec:
        return 'Second';
      default:
        return 'BPM';
    }
  }

  String get value {
    switch (this) {
      case ExerciseTempoUnit.bpm:
        return 'bpm';
      case ExerciseTempoUnit.mpm:
        return 'mpm';
      case ExerciseTempoUnit.mph:
        return 'mph';
      case ExerciseTempoUnit.kph:
        return 'kph';
      case ExerciseTempoUnit.sec:
        return 'sec';
      default:
        return 'bpm';
    }
  }
}

extension ExerciseIntensityUnitExtension on ExerciseIntensityUnit {
  String get name {
    switch (this) {
      case ExerciseIntensityUnit.rpe:
        return 'RPE';
      case ExerciseIntensityUnit.rir:
        return 'RIR';
      case ExerciseIntensityUnit.rm:
        return 'RM';
      case ExerciseIntensityUnit.kg:
        return 'KG';
      case ExerciseIntensityUnit.lbs:
        return 'LBS';
      default:
        return 'RPE';
    }
  }

  String get value {
    switch (this) {
      case ExerciseIntensityUnit.rpe:
        return 'rpe';
      case ExerciseIntensityUnit.rir:
        return 'rir';
      case ExerciseIntensityUnit.rm:
        return 'rm';
      case ExerciseIntensityUnit.kg:
        return 'kg';
      case ExerciseIntensityUnit.lbs:
        return 'lbs';
      default:
        return 'rpe';
    }
  }
}
