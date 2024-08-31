import 'package:dot_coaching/features/feature.dart';

extension StringExercise on String? {
  ExerciseRepetitionUnit get toRepitionUnit {
    switch (this) {
      case 'rep':
      case 'Rep':
        return ExerciseRepetitionUnit.rep;
      default:
        return ExerciseRepetitionUnit.rep;
    }
  }

  ExerciseSetsUnit get toSetsUnit {
    switch (this) {
      case 'set':
      case 'Set':
        return ExerciseSetsUnit.set;
      default:
        return ExerciseSetsUnit.set;
    }
  }

  ExerciseRestUnit get toRestUnit {
    switch (this) {
      case 'sec':
      case 'Sec':
      case 'Second':
        return ExerciseRestUnit.sec;
      case 'min':
      case 'Min':
      case 'Minute':
        return ExerciseRestUnit.min;
      case 'hour':
      case 'Hour':
        return ExerciseRestUnit.hour;
      default:
        return ExerciseRestUnit.sec;
    }
  }

  ExerciseTempoUnit get toTempoUnit {
    switch (this) {
      case 'bpm':
      case 'BPM':
        return ExerciseTempoUnit.bpm;
      case 'mpm':
      case 'MPM':
        return ExerciseTempoUnit.mpm;
      case 'mph':
      case 'MPH':
        return ExerciseTempoUnit.mph;
      case 'kph':
      case 'KPH':
        return ExerciseTempoUnit.kph;
      case 'sec':
      case 'Sec':
      case 'Second':
        return ExerciseTempoUnit.sec;
      default:
        return ExerciseTempoUnit.bpm;
    }
  }

  ExerciseIntensityUnit get toIntesityUnit {
    switch (this) {
      case 'rpe':
      case 'RPE':
        return ExerciseIntensityUnit.rpe;
      case 'rir':
      case 'RIR':
        return ExerciseIntensityUnit.rir;
      case 'rm':
      case 'RM':
        return ExerciseIntensityUnit.rm;
      case 'kg':
      case 'KG':
        return ExerciseIntensityUnit.kg;
      case 'lbs':
      case 'LBS':
        return ExerciseIntensityUnit.lbs;
      default:
        return ExerciseIntensityUnit.rpe;
    }
  }
}
