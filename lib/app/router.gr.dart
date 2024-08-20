// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i44;
import 'package:dot_coaching/features/auth/ui/screens/sign_in_screen.dart'
    as _i40;
import 'package:dot_coaching/features/auth/ui/screens/sign_up_screen.dart'
    as _i41;
import 'package:dot_coaching/features/auth/ui/screens/splash_screen.dart'
    as _i42;
import 'package:dot_coaching/features/club/ui/screens/athlete_detail_club_screen.dart'
    as _i2;
import 'package:dot_coaching/features/club/ui/screens/athlete_list_club_screen.dart'
    as _i9;
import 'package:dot_coaching/features/club/ui/screens/coach_detail_club_screen.dart'
    as _i17;
import 'package:dot_coaching/features/club/ui/screens/coach_list_club_screen.dart'
    as _i24;
import 'package:dot_coaching/features/club/ui/screens/coach_upsert_club_screen.dart'
    as _i32;
import 'package:dot_coaching/features/evaluation/ui/screens/athlete_detail_evaluation_screen.dart'
    as _i3;
import 'package:dot_coaching/features/evaluation/ui/screens/athlete_list_evaluation_screen.dart'
    as _i10;
import 'package:dot_coaching/features/evaluation/ui/screens/coach_detail_evaluation_screen.dart'
    as _i18;
import 'package:dot_coaching/features/evaluation/ui/screens/coach_list_evaluation_screen.dart'
    as _i25;
import 'package:dot_coaching/features/evaluation/ui/screens/coach_upsert_evaluation_screen.dart'
    as _i33;
import 'package:dot_coaching/features/exam/ui/screens/athlete_detail_exam_screen.dart'
    as _i4;
import 'package:dot_coaching/features/exam/ui/screens/athlete_list_exam_screen.dart'
    as _i11;
import 'package:dot_coaching/features/exam/ui/screens/coach_detail_exam_screen.dart'
    as _i19;
import 'package:dot_coaching/features/exam/ui/screens/coach_list_exam_screen.dart'
    as _i26;
import 'package:dot_coaching/features/exam/ui/screens/coach_upsert_exam_screen.dart'
    as _i34;
import 'package:dot_coaching/features/exercise/ui/screens/athlete_detail_exercise_screen.dart'
    as _i5;
import 'package:dot_coaching/features/exercise/ui/screens/athlete_list_exercise_screen.dart'
    as _i12;
import 'package:dot_coaching/features/exercise/ui/screens/coach_detail_exercise_screen.dart'
    as _i20;
import 'package:dot_coaching/features/exercise/ui/screens/coach_list_exercise_screen.dart'
    as _i27;
import 'package:dot_coaching/features/exercise/ui/screens/coach_upsert_exercise_screen.dart'
    as _i35;
import 'package:dot_coaching/features/general/ui/screens/athlete_dashboard_screen.dart'
    as _i1;
import 'package:dot_coaching/features/general/ui/screens/coach_dashboard_screen.dart'
    as _i16;
import 'package:dot_coaching/features/media/ui/screens/coach_list_media_screen.dart'
    as _i28;
import 'package:dot_coaching/features/program/ui/screens/athlete_detail_program_screen.dart'
    as _i6;
import 'package:dot_coaching/features/program/ui/screens/athlete_list_program_screen.dart'
    as _i13;
import 'package:dot_coaching/features/program/ui/screens/coach_detail_program_screen.dart'
    as _i21;
import 'package:dot_coaching/features/program/ui/screens/coach_list_program_screen.dart'
    as _i29;
import 'package:dot_coaching/features/program/ui/screens/coach_upsert_program_screen.dart'
    as _i36;
import 'package:dot_coaching/features/question/ui/screens/athlete_detail_question_screen.dart'
    as _i7;
import 'package:dot_coaching/features/question/ui/screens/athlete_list_question_screen.dart'
    as _i14;
import 'package:dot_coaching/features/question/ui/screens/coach_detail_question_screen.dart'
    as _i22;
import 'package:dot_coaching/features/question/ui/screens/coach_list_question_screen.dart'
    as _i30;
import 'package:dot_coaching/features/question/ui/screens/coach_upsert_question_screen.dart'
    as _i37;
import 'package:dot_coaching/features/tactical/ui/screens/athlete_detail_tactical_screen.dart'
    as _i8;
import 'package:dot_coaching/features/tactical/ui/screens/athlete_list_tactical_screen.dart'
    as _i15;
import 'package:dot_coaching/features/tactical/ui/screens/coach_detail_tactical_screen.dart'
    as _i23;
import 'package:dot_coaching/features/tactical/ui/screens/coach_list_tactical_screen.dart'
    as _i31;
import 'package:dot_coaching/features/tactical/ui/screens/coach_upsert_tactical_screen.dart'
    as _i38;
import 'package:dot_coaching/features/user/ui/screens/profile_screen.dart'
    as _i39;
import 'package:dot_coaching/features/user/ui/screens/update_profile_screen.dart'
    as _i43;
import 'package:flutter/material.dart' as _i45;

/// generated route for
/// [_i1.AthleteDashboardScreen]
class AthleteDashboardRoute extends _i44.PageRouteInfo<void> {
  const AthleteDashboardRoute({List<_i44.PageRouteInfo>? children})
      : super(
          AthleteDashboardRoute.name,
          initialChildren: children,
        );

  static const String name = 'AthleteDashboardRoute';

  static _i44.PageInfo page = _i44.PageInfo(
    name,
    builder: (data) {
      return _i44.WrappedRoute(child: const _i1.AthleteDashboardScreen());
    },
  );
}

/// generated route for
/// [_i2.AthleteDetailClubScreen]
class AthleteDetailClubRoute
    extends _i44.PageRouteInfo<AthleteDetailClubRouteArgs> {
  AthleteDetailClubRoute({
    _i45.Key? key,
    required int id,
    List<_i44.PageRouteInfo>? children,
  }) : super(
          AthleteDetailClubRoute.name,
          args: AthleteDetailClubRouteArgs(
            key: key,
            id: id,
          ),
          rawPathParams: {'id': id},
          initialChildren: children,
        );

  static const String name = 'AthleteDetailClubRoute';

  static _i44.PageInfo page = _i44.PageInfo(
    name,
    builder: (data) {
      final pathParams = data.inheritedPathParams;
      final args = data.argsAs<AthleteDetailClubRouteArgs>(
          orElse: () =>
              AthleteDetailClubRouteArgs(id: pathParams.getInt('id')));
      return _i2.AthleteDetailClubScreen(
        key: args.key,
        id: args.id,
      );
    },
  );
}

class AthleteDetailClubRouteArgs {
  const AthleteDetailClubRouteArgs({
    this.key,
    required this.id,
  });

  final _i45.Key? key;

  final int id;

  @override
  String toString() {
    return 'AthleteDetailClubRouteArgs{key: $key, id: $id}';
  }
}

/// generated route for
/// [_i3.AthleteDetailEvaluationScreen]
class AthleteDetailEvaluationRoute extends _i44.PageRouteInfo<void> {
  const AthleteDetailEvaluationRoute({List<_i44.PageRouteInfo>? children})
      : super(
          AthleteDetailEvaluationRoute.name,
          initialChildren: children,
        );

  static const String name = 'AthleteDetailEvaluationRoute';

  static _i44.PageInfo page = _i44.PageInfo(
    name,
    builder: (data) {
      return const _i3.AthleteDetailEvaluationScreen();
    },
  );
}

/// generated route for
/// [_i4.AthleteDetailExamScreen]
class AthleteDetailExamRoute extends _i44.PageRouteInfo<void> {
  const AthleteDetailExamRoute({List<_i44.PageRouteInfo>? children})
      : super(
          AthleteDetailExamRoute.name,
          initialChildren: children,
        );

  static const String name = 'AthleteDetailExamRoute';

  static _i44.PageInfo page = _i44.PageInfo(
    name,
    builder: (data) {
      return const _i4.AthleteDetailExamScreen();
    },
  );
}

/// generated route for
/// [_i5.AthleteDetailExerciseScreen]
class AthleteDetailExerciseRoute extends _i44.PageRouteInfo<void> {
  const AthleteDetailExerciseRoute({List<_i44.PageRouteInfo>? children})
      : super(
          AthleteDetailExerciseRoute.name,
          initialChildren: children,
        );

  static const String name = 'AthleteDetailExerciseRoute';

  static _i44.PageInfo page = _i44.PageInfo(
    name,
    builder: (data) {
      return const _i5.AthleteDetailExerciseScreen();
    },
  );
}

/// generated route for
/// [_i6.AthleteDetailProgramScreen]
class AthleteDetailProgramRoute extends _i44.PageRouteInfo<void> {
  const AthleteDetailProgramRoute({List<_i44.PageRouteInfo>? children})
      : super(
          AthleteDetailProgramRoute.name,
          initialChildren: children,
        );

  static const String name = 'AthleteDetailProgramRoute';

  static _i44.PageInfo page = _i44.PageInfo(
    name,
    builder: (data) {
      return const _i6.AthleteDetailProgramScreen();
    },
  );
}

/// generated route for
/// [_i7.AthleteDetailQuestionScreen]
class AthleteDetailQuestionRoute extends _i44.PageRouteInfo<void> {
  const AthleteDetailQuestionRoute({List<_i44.PageRouteInfo>? children})
      : super(
          AthleteDetailQuestionRoute.name,
          initialChildren: children,
        );

  static const String name = 'AthleteDetailQuestionRoute';

  static _i44.PageInfo page = _i44.PageInfo(
    name,
    builder: (data) {
      return const _i7.AthleteDetailQuestionScreen();
    },
  );
}

/// generated route for
/// [_i8.AthleteDetailTacticalScreen]
class AthleteDetailTacticalRoute extends _i44.PageRouteInfo<void> {
  const AthleteDetailTacticalRoute({List<_i44.PageRouteInfo>? children})
      : super(
          AthleteDetailTacticalRoute.name,
          initialChildren: children,
        );

  static const String name = 'AthleteDetailTacticalRoute';

  static _i44.PageInfo page = _i44.PageInfo(
    name,
    builder: (data) {
      return const _i8.AthleteDetailTacticalScreen();
    },
  );
}

/// generated route for
/// [_i9.AthleteListClubScreen]
class AthleteListClubRoute extends _i44.PageRouteInfo<void> {
  const AthleteListClubRoute({List<_i44.PageRouteInfo>? children})
      : super(
          AthleteListClubRoute.name,
          initialChildren: children,
        );

  static const String name = 'AthleteListClubRoute';

  static _i44.PageInfo page = _i44.PageInfo(
    name,
    builder: (data) {
      return const _i9.AthleteListClubScreen();
    },
  );
}

/// generated route for
/// [_i10.AthleteListEvaluationScreen]
class AthleteListEvaluationRoute extends _i44.PageRouteInfo<void> {
  const AthleteListEvaluationRoute({List<_i44.PageRouteInfo>? children})
      : super(
          AthleteListEvaluationRoute.name,
          initialChildren: children,
        );

  static const String name = 'AthleteListEvaluationRoute';

  static _i44.PageInfo page = _i44.PageInfo(
    name,
    builder: (data) {
      return const _i10.AthleteListEvaluationScreen();
    },
  );
}

/// generated route for
/// [_i11.AthleteListExamScreen]
class AthleteListExamRoute extends _i44.PageRouteInfo<void> {
  const AthleteListExamRoute({List<_i44.PageRouteInfo>? children})
      : super(
          AthleteListExamRoute.name,
          initialChildren: children,
        );

  static const String name = 'AthleteListExamRoute';

  static _i44.PageInfo page = _i44.PageInfo(
    name,
    builder: (data) {
      return const _i11.AthleteListExamScreen();
    },
  );
}

/// generated route for
/// [_i12.AthleteListExerciseScreen]
class AthleteListExerciseRoute extends _i44.PageRouteInfo<void> {
  const AthleteListExerciseRoute({List<_i44.PageRouteInfo>? children})
      : super(
          AthleteListExerciseRoute.name,
          initialChildren: children,
        );

  static const String name = 'AthleteListExerciseRoute';

  static _i44.PageInfo page = _i44.PageInfo(
    name,
    builder: (data) {
      return const _i12.AthleteListExerciseScreen();
    },
  );
}

/// generated route for
/// [_i13.AthleteListProgramScreen]
class AthleteListProgramRoute extends _i44.PageRouteInfo<void> {
  const AthleteListProgramRoute({List<_i44.PageRouteInfo>? children})
      : super(
          AthleteListProgramRoute.name,
          initialChildren: children,
        );

  static const String name = 'AthleteListProgramRoute';

  static _i44.PageInfo page = _i44.PageInfo(
    name,
    builder: (data) {
      return const _i13.AthleteListProgramScreen();
    },
  );
}

/// generated route for
/// [_i14.AthleteListQuestionScreen]
class AthleteListQuestionRoute extends _i44.PageRouteInfo<void> {
  const AthleteListQuestionRoute({List<_i44.PageRouteInfo>? children})
      : super(
          AthleteListQuestionRoute.name,
          initialChildren: children,
        );

  static const String name = 'AthleteListQuestionRoute';

  static _i44.PageInfo page = _i44.PageInfo(
    name,
    builder: (data) {
      return const _i14.AthleteListQuestionScreen();
    },
  );
}

/// generated route for
/// [_i15.AthleteListTacticalScreen]
class AthleteListTacticalRoute extends _i44.PageRouteInfo<void> {
  const AthleteListTacticalRoute({List<_i44.PageRouteInfo>? children})
      : super(
          AthleteListTacticalRoute.name,
          initialChildren: children,
        );

  static const String name = 'AthleteListTacticalRoute';

  static _i44.PageInfo page = _i44.PageInfo(
    name,
    builder: (data) {
      return const _i15.AthleteListTacticalScreen();
    },
  );
}

/// generated route for
/// [_i16.CoachDashboardScreen]
class CoachDashboardRoute extends _i44.PageRouteInfo<void> {
  const CoachDashboardRoute({List<_i44.PageRouteInfo>? children})
      : super(
          CoachDashboardRoute.name,
          initialChildren: children,
        );

  static const String name = 'CoachDashboardRoute';

  static _i44.PageInfo page = _i44.PageInfo(
    name,
    builder: (data) {
      return _i44.WrappedRoute(child: const _i16.CoachDashboardScreen());
    },
  );
}

/// generated route for
/// [_i17.CoachDetailClubScreen]
class CoachDetailClubRoute extends _i44.PageRouteInfo<void> {
  const CoachDetailClubRoute({List<_i44.PageRouteInfo>? children})
      : super(
          CoachDetailClubRoute.name,
          initialChildren: children,
        );

  static const String name = 'CoachDetailClubRoute';

  static _i44.PageInfo page = _i44.PageInfo(
    name,
    builder: (data) {
      return const _i17.CoachDetailClubScreen();
    },
  );
}

/// generated route for
/// [_i18.CoachDetailEvaluationScreen]
class CoachDetailEvaluationRoute extends _i44.PageRouteInfo<void> {
  const CoachDetailEvaluationRoute({List<_i44.PageRouteInfo>? children})
      : super(
          CoachDetailEvaluationRoute.name,
          initialChildren: children,
        );

  static const String name = 'CoachDetailEvaluationRoute';

  static _i44.PageInfo page = _i44.PageInfo(
    name,
    builder: (data) {
      return const _i18.CoachDetailEvaluationScreen();
    },
  );
}

/// generated route for
/// [_i19.CoachDetailExamScreen]
class CoachDetailExamRoute extends _i44.PageRouteInfo<void> {
  const CoachDetailExamRoute({List<_i44.PageRouteInfo>? children})
      : super(
          CoachDetailExamRoute.name,
          initialChildren: children,
        );

  static const String name = 'CoachDetailExamRoute';

  static _i44.PageInfo page = _i44.PageInfo(
    name,
    builder: (data) {
      return const _i19.CoachDetailExamScreen();
    },
  );
}

/// generated route for
/// [_i20.CoachDetailExerciseScreen]
class CoachDetailExerciseRoute extends _i44.PageRouteInfo<void> {
  const CoachDetailExerciseRoute({List<_i44.PageRouteInfo>? children})
      : super(
          CoachDetailExerciseRoute.name,
          initialChildren: children,
        );

  static const String name = 'CoachDetailExerciseRoute';

  static _i44.PageInfo page = _i44.PageInfo(
    name,
    builder: (data) {
      return const _i20.CoachDetailExerciseScreen();
    },
  );
}

/// generated route for
/// [_i21.CoachDetailProgramScreen]
class CoachDetailProgramRoute extends _i44.PageRouteInfo<void> {
  const CoachDetailProgramRoute({List<_i44.PageRouteInfo>? children})
      : super(
          CoachDetailProgramRoute.name,
          initialChildren: children,
        );

  static const String name = 'CoachDetailProgramRoute';

  static _i44.PageInfo page = _i44.PageInfo(
    name,
    builder: (data) {
      return const _i21.CoachDetailProgramScreen();
    },
  );
}

/// generated route for
/// [_i22.CoachDetailQuestionScreen]
class CoachDetailQuestionRoute extends _i44.PageRouteInfo<void> {
  const CoachDetailQuestionRoute({List<_i44.PageRouteInfo>? children})
      : super(
          CoachDetailQuestionRoute.name,
          initialChildren: children,
        );

  static const String name = 'CoachDetailQuestionRoute';

  static _i44.PageInfo page = _i44.PageInfo(
    name,
    builder: (data) {
      return const _i22.CoachDetailQuestionScreen();
    },
  );
}

/// generated route for
/// [_i23.CoachDetailTacticalScreen]
class CoachDetailTacticalRoute extends _i44.PageRouteInfo<void> {
  const CoachDetailTacticalRoute({List<_i44.PageRouteInfo>? children})
      : super(
          CoachDetailTacticalRoute.name,
          initialChildren: children,
        );

  static const String name = 'CoachDetailTacticalRoute';

  static _i44.PageInfo page = _i44.PageInfo(
    name,
    builder: (data) {
      return const _i23.CoachDetailTacticalScreen();
    },
  );
}

/// generated route for
/// [_i24.CoachListClubScreen]
class CoachListClubRoute extends _i44.PageRouteInfo<void> {
  const CoachListClubRoute({List<_i44.PageRouteInfo>? children})
      : super(
          CoachListClubRoute.name,
          initialChildren: children,
        );

  static const String name = 'CoachListClubRoute';

  static _i44.PageInfo page = _i44.PageInfo(
    name,
    builder: (data) {
      return const _i24.CoachListClubScreen();
    },
  );
}

/// generated route for
/// [_i25.CoachListEvaluationScreen]
class CoachListEvaluationRoute extends _i44.PageRouteInfo<void> {
  const CoachListEvaluationRoute({List<_i44.PageRouteInfo>? children})
      : super(
          CoachListEvaluationRoute.name,
          initialChildren: children,
        );

  static const String name = 'CoachListEvaluationRoute';

  static _i44.PageInfo page = _i44.PageInfo(
    name,
    builder: (data) {
      return const _i25.CoachListEvaluationScreen();
    },
  );
}

/// generated route for
/// [_i26.CoachListExamScreen]
class CoachListExamRoute extends _i44.PageRouteInfo<void> {
  const CoachListExamRoute({List<_i44.PageRouteInfo>? children})
      : super(
          CoachListExamRoute.name,
          initialChildren: children,
        );

  static const String name = 'CoachListExamRoute';

  static _i44.PageInfo page = _i44.PageInfo(
    name,
    builder: (data) {
      return const _i26.CoachListExamScreen();
    },
  );
}

/// generated route for
/// [_i27.CoachListExerciseScreen]
class CoachListExerciseRoute extends _i44.PageRouteInfo<void> {
  const CoachListExerciseRoute({List<_i44.PageRouteInfo>? children})
      : super(
          CoachListExerciseRoute.name,
          initialChildren: children,
        );

  static const String name = 'CoachListExerciseRoute';

  static _i44.PageInfo page = _i44.PageInfo(
    name,
    builder: (data) {
      return const _i27.CoachListExerciseScreen();
    },
  );
}

/// generated route for
/// [_i28.CoachListMediaScreen]
class CoachListMediaRoute extends _i44.PageRouteInfo<void> {
  const CoachListMediaRoute({List<_i44.PageRouteInfo>? children})
      : super(
          CoachListMediaRoute.name,
          initialChildren: children,
        );

  static const String name = 'CoachListMediaRoute';

  static _i44.PageInfo page = _i44.PageInfo(
    name,
    builder: (data) {
      return const _i28.CoachListMediaScreen();
    },
  );
}

/// generated route for
/// [_i29.CoachListProgramScreen]
class CoachListProgramRoute extends _i44.PageRouteInfo<void> {
  const CoachListProgramRoute({List<_i44.PageRouteInfo>? children})
      : super(
          CoachListProgramRoute.name,
          initialChildren: children,
        );

  static const String name = 'CoachListProgramRoute';

  static _i44.PageInfo page = _i44.PageInfo(
    name,
    builder: (data) {
      return const _i29.CoachListProgramScreen();
    },
  );
}

/// generated route for
/// [_i30.CoachListQuestionScreen]
class CoachListQuestionRoute extends _i44.PageRouteInfo<void> {
  const CoachListQuestionRoute({List<_i44.PageRouteInfo>? children})
      : super(
          CoachListQuestionRoute.name,
          initialChildren: children,
        );

  static const String name = 'CoachListQuestionRoute';

  static _i44.PageInfo page = _i44.PageInfo(
    name,
    builder: (data) {
      return const _i30.CoachListQuestionScreen();
    },
  );
}

/// generated route for
/// [_i31.CoachListTacticalScreen]
class CoachListTacticalRoute extends _i44.PageRouteInfo<void> {
  const CoachListTacticalRoute({List<_i44.PageRouteInfo>? children})
      : super(
          CoachListTacticalRoute.name,
          initialChildren: children,
        );

  static const String name = 'CoachListTacticalRoute';

  static _i44.PageInfo page = _i44.PageInfo(
    name,
    builder: (data) {
      return const _i31.CoachListTacticalScreen();
    },
  );
}

/// generated route for
/// [_i32.CoachUpsertClubScreen]
class CoachUpsertClubRoute extends _i44.PageRouteInfo<void> {
  const CoachUpsertClubRoute({List<_i44.PageRouteInfo>? children})
      : super(
          CoachUpsertClubRoute.name,
          initialChildren: children,
        );

  static const String name = 'CoachUpsertClubRoute';

  static _i44.PageInfo page = _i44.PageInfo(
    name,
    builder: (data) {
      return const _i32.CoachUpsertClubScreen();
    },
  );
}

/// generated route for
/// [_i33.CoachUpsertEvaluationScreen]
class CoachUpsertEvaluationRoute extends _i44.PageRouteInfo<void> {
  const CoachUpsertEvaluationRoute({List<_i44.PageRouteInfo>? children})
      : super(
          CoachUpsertEvaluationRoute.name,
          initialChildren: children,
        );

  static const String name = 'CoachUpsertEvaluationRoute';

  static _i44.PageInfo page = _i44.PageInfo(
    name,
    builder: (data) {
      return const _i33.CoachUpsertEvaluationScreen();
    },
  );
}

/// generated route for
/// [_i34.CoachUpsertExamScreen]
class CoachUpsertExamRoute extends _i44.PageRouteInfo<void> {
  const CoachUpsertExamRoute({List<_i44.PageRouteInfo>? children})
      : super(
          CoachUpsertExamRoute.name,
          initialChildren: children,
        );

  static const String name = 'CoachUpsertExamRoute';

  static _i44.PageInfo page = _i44.PageInfo(
    name,
    builder: (data) {
      return const _i34.CoachUpsertExamScreen();
    },
  );
}

/// generated route for
/// [_i35.CoachUpsertExerciseScreen]
class CoachUpsertExerciseRoute extends _i44.PageRouteInfo<void> {
  const CoachUpsertExerciseRoute({List<_i44.PageRouteInfo>? children})
      : super(
          CoachUpsertExerciseRoute.name,
          initialChildren: children,
        );

  static const String name = 'CoachUpsertExerciseRoute';

  static _i44.PageInfo page = _i44.PageInfo(
    name,
    builder: (data) {
      return const _i35.CoachUpsertExerciseScreen();
    },
  );
}

/// generated route for
/// [_i36.CoachUpsertProgramScreen]
class CoachUpsertProgramRoute extends _i44.PageRouteInfo<void> {
  const CoachUpsertProgramRoute({List<_i44.PageRouteInfo>? children})
      : super(
          CoachUpsertProgramRoute.name,
          initialChildren: children,
        );

  static const String name = 'CoachUpsertProgramRoute';

  static _i44.PageInfo page = _i44.PageInfo(
    name,
    builder: (data) {
      return const _i36.CoachUpsertProgramScreen();
    },
  );
}

/// generated route for
/// [_i37.CoachUpsertQuestionScreen]
class CoachUpsertQuestionRoute extends _i44.PageRouteInfo<void> {
  const CoachUpsertQuestionRoute({List<_i44.PageRouteInfo>? children})
      : super(
          CoachUpsertQuestionRoute.name,
          initialChildren: children,
        );

  static const String name = 'CoachUpsertQuestionRoute';

  static _i44.PageInfo page = _i44.PageInfo(
    name,
    builder: (data) {
      return const _i37.CoachUpsertQuestionScreen();
    },
  );
}

/// generated route for
/// [_i38.CoachUpsertTacticalScreen]
class CoachUpsertTacticalRoute extends _i44.PageRouteInfo<void> {
  const CoachUpsertTacticalRoute({List<_i44.PageRouteInfo>? children})
      : super(
          CoachUpsertTacticalRoute.name,
          initialChildren: children,
        );

  static const String name = 'CoachUpsertTacticalRoute';

  static _i44.PageInfo page = _i44.PageInfo(
    name,
    builder: (data) {
      return const _i38.CoachUpsertTacticalScreen();
    },
  );
}

/// generated route for
/// [_i39.ProfileScreen]
class ProfileRoute extends _i44.PageRouteInfo<void> {
  const ProfileRoute({List<_i44.PageRouteInfo>? children})
      : super(
          ProfileRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProfileRoute';

  static _i44.PageInfo page = _i44.PageInfo(
    name,
    builder: (data) {
      return const _i39.ProfileScreen();
    },
  );
}

/// generated route for
/// [_i40.SignInScreen]
class SignInRoute extends _i44.PageRouteInfo<void> {
  const SignInRoute({List<_i44.PageRouteInfo>? children})
      : super(
          SignInRoute.name,
          initialChildren: children,
        );

  static const String name = 'SignInRoute';

  static _i44.PageInfo page = _i44.PageInfo(
    name,
    builder: (data) {
      return const _i40.SignInScreen();
    },
  );
}

/// generated route for
/// [_i41.SignUpScreen]
class SignUpRoute extends _i44.PageRouteInfo<void> {
  const SignUpRoute({List<_i44.PageRouteInfo>? children})
      : super(
          SignUpRoute.name,
          initialChildren: children,
        );

  static const String name = 'SignUpRoute';

  static _i44.PageInfo page = _i44.PageInfo(
    name,
    builder: (data) {
      return const _i41.SignUpScreen();
    },
  );
}

/// generated route for
/// [_i42.SplashScreen]
class SplashRoute extends _i44.PageRouteInfo<void> {
  const SplashRoute({List<_i44.PageRouteInfo>? children})
      : super(
          SplashRoute.name,
          initialChildren: children,
        );

  static const String name = 'SplashRoute';

  static _i44.PageInfo page = _i44.PageInfo(
    name,
    builder: (data) {
      return const _i42.SplashScreen();
    },
  );
}

/// generated route for
/// [_i43.UpdateProfileScreen]
class UpdateProfileRoute extends _i44.PageRouteInfo<void> {
  const UpdateProfileRoute({List<_i44.PageRouteInfo>? children})
      : super(
          UpdateProfileRoute.name,
          initialChildren: children,
        );

  static const String name = 'UpdateProfileRoute';

  static _i44.PageInfo page = _i44.PageInfo(
    name,
    builder: (data) {
      return const _i43.UpdateProfileScreen();
    },
  );
}
