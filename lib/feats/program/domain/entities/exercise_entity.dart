import 'package:dot_coaching/feats/feats.dart';
import 'package:isar/isar.dart';

part 'exercise_entity.g.dart';

enum ProgramRepitionUnit { rep }

extension ProgramRepitionUnitExtension on ProgramRepitionUnit {
  String get name {
    switch (this) {
      case ProgramRepitionUnit.rep:
        return 'Rep';
      default:
        return 'Rep';
    }
  }

  String get value {
    switch (this) {
      case ProgramRepitionUnit.rep:
      default:
        return 'reps';
    }
  }
}

enum ProgramSetsUnit { set }

extension ProgramSetsUnitExtension on ProgramSetsUnit {
  String get name {
    switch (this) {
      case ProgramSetsUnit.set:
        return 'Set';
      default:
        return 'Set';
    }
  }

  String get value {
    switch (this) {
      case ProgramSetsUnit.set:
      default:
        return 'sets';
    }
  }
}

enum ProgramRestUnit { sec, min, hour }

extension ProgramRestUnitExtension on ProgramRestUnit {
  String get name {
    switch (this) {
      case ProgramRestUnit.sec:
        return 'Second';
      case ProgramRestUnit.min:
        return 'Minute';
      case ProgramRestUnit.hour:
        return 'Hour';
      default:
        return 'Second';
    }
  }

  String get value {
    switch (this) {
      case ProgramRestUnit.sec:
        return 'sec';
      case ProgramRestUnit.min:
        return 'min';
      case ProgramRestUnit.hour:
        return 'hour';
      default:
        return 'sec';
    }
  }
}

enum ProgramTempoUnit { mpm, mph, bpm, kph, sec }

extension ProgramTempoUnitExtension on ProgramTempoUnit {
  String get name {
    switch (this) {
      case ProgramTempoUnit.bpm:
        return 'BPM';
      case ProgramTempoUnit.mpm:
        return 'MPM';
      case ProgramTempoUnit.mph:
        return 'MPH';
      case ProgramTempoUnit.kph:
        return 'KPH';
      case ProgramTempoUnit.sec:
        return 'Second';
      default:
        return 'BPM';
    }
  }

  String get value {
    switch (this) {
      case ProgramTempoUnit.bpm:
        return 'bpm';
      case ProgramTempoUnit.mpm:
        return 'mpm';
      case ProgramTempoUnit.mph:
        return 'mph';
      case ProgramTempoUnit.kph:
        return 'kph';
      case ProgramTempoUnit.sec:
        return 'sec';
      default:
        return 'bpm';
    }
  }
}

enum ProgramIntensityUnit { rpe, rir, rm, kg, lbs }

extension ProgramIntensityUnitExtension on ProgramIntensityUnit {
  String get name {
    switch (this) {
      case ProgramIntensityUnit.rpe:
        return 'RPE';
      case ProgramIntensityUnit.rir:
        return 'RIR';
      case ProgramIntensityUnit.rm:
        return 'RM';
      case ProgramIntensityUnit.kg:
        return 'KG';
      case ProgramIntensityUnit.lbs:
        return 'LBS';
      default:
        return 'RPE';
    }
  }

  String get value {
    switch (this) {
      case ProgramIntensityUnit.rpe:
        return 'rpe';
      case ProgramIntensityUnit.rir:
        return 'rir';
      case ProgramIntensityUnit.rm:
        return 'rm';
      case ProgramIntensityUnit.kg:
        return 'kg';
      case ProgramIntensityUnit.lbs:
        return 'lbs';
      default:
        return 'rpe';
    }
  }
}

@collection
class ProgramExerciseEntity {
  Id id = Isar.autoIncrement;
  int programId;
  int? mediaId;
  int order;
  String name;
  String? description;
  ProgramUnitValueEntity? repetition;
  ProgramUnitValueEntity? sets;
  ProgramUnitValueEntity? rest;
  ProgramUnitValueEntity? tempo;
  ProgramUnitValueEntity? intensity;
  MediaEmbedEntity? media;
  DateTime? createdAt;
  DateTime? updatedAt;

  // n:1 relationship
  final program = IsarLink<ProgramEntity>();

  ProgramExerciseEntity({
    this.id = Isar.autoIncrement,
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
class ProgramUnitValueEntity {
  String? unit;
  int value;

  ProgramUnitValueEntity({
    this.unit,
    this.value = 0,
  });
}
