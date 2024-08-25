// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i35;
import 'package:dot_coaching/features/auth/ui/screens/sign_in_screen.dart'
    as _i23;
import 'package:dot_coaching/features/auth/ui/screens/sign_up_screen.dart'
    as _i24;
import 'package:dot_coaching/features/auth/ui/screens/splash_screen.dart'
    as _i25;
import 'package:dot_coaching/features/club/ui/screens/club_shell_screen.dart'
    as _i1;
import 'package:dot_coaching/features/club/ui/screens/detail_club_screen.dart'
    as _i3;
import 'package:dot_coaching/features/club/ui/screens/list_club_screen.dart'
    as _i12;
import 'package:dot_coaching/features/club/ui/screens/upsert_club_screen.dart'
    as _i28;
import 'package:dot_coaching/features/evaluation/ui/screens/detail_evaluation_screen.dart'
    as _i4;
import 'package:dot_coaching/features/evaluation/ui/screens/evaluation_shell_screen.dart'
    as _i10;
import 'package:dot_coaching/features/evaluation/ui/screens/list_evaluation_screen.dart'
    as _i13;
import 'package:dot_coaching/features/evaluation/ui/screens/upsert_evaluation_screen.dart'
    as _i29;
import 'package:dot_coaching/features/exam/ui/screens/detail_exam_screen.dart'
    as _i5;
import 'package:dot_coaching/features/exam/ui/screens/list_exam_screen.dart'
    as _i14;
import 'package:dot_coaching/features/exam/ui/screens/upsert_exam_screen.dart'
    as _i30;
import 'package:dot_coaching/features/exercise/ui/screens/detail_exercise_screen.dart'
    as _i6;
import 'package:dot_coaching/features/exercise/ui/screens/exercise_shell_screen.dart'
    as _i11;
import 'package:dot_coaching/features/exercise/ui/screens/list_exercise_screen.dart'
    as _i15;
import 'package:dot_coaching/features/exercise/ui/screens/upsert_exercise_screen.dart'
    as _i31;
import 'package:dot_coaching/features/feature.dart';
import 'package:dot_coaching/features/general/ui/screens/dashboard_screen.dart'
    as _i2;
import 'package:dot_coaching/features/media/ui/screens/list_media_screen.dart'
    as _i16;
import 'package:dot_coaching/features/program/ui/screens/detail_program_screen.dart'
    as _i7;
import 'package:dot_coaching/features/program/ui/screens/list_program_screen.dart'
    as _i17;
import 'package:dot_coaching/features/program/ui/screens/program_shell_screen.dart'
    as _i21;
import 'package:dot_coaching/features/program/ui/screens/upsert_program_screen.dart'
    as _i32;
import 'package:dot_coaching/features/question/ui/screens/detail_question_screen.dart'
    as _i8;
import 'package:dot_coaching/features/question/ui/screens/list_question_screen.dart'
    as _i18;
import 'package:dot_coaching/features/question/ui/screens/question_shell_screen.dart'
    as _i22;
import 'package:dot_coaching/features/question/ui/screens/upsert_question_screen.dart'
    as _i33;
import 'package:dot_coaching/features/tactical/ui/screens/detail_tactical_screen.dart'
    as _i9;
import 'package:dot_coaching/features/tactical/ui/screens/list_tactical_screen.dart'
    as _i19;
import 'package:dot_coaching/features/tactical/ui/screens/tactical_shell_screen.dart'
    as _i26;
import 'package:dot_coaching/features/tactical/ui/screens/upsert_tactical_screen.dart'
    as _i34;
import 'package:dot_coaching/features/user/ui/screens/profile_screen.dart'
    as _i20;
import 'package:dot_coaching/features/user/ui/screens/update_profile_screen.dart'
    as _i27;
import 'package:flutter/material.dart' as _i36;

/// generated route for
/// [_i1.ClubShellScreen]
class ClubShellRoute extends _i35.PageRouteInfo<ClubShellRouteArgs> {
  ClubShellRoute({
    _i36.Key? key,
    required int id,
    List<_i35.PageRouteInfo>? children,
  }) : super(
          ClubShellRoute.name,
          args: ClubShellRouteArgs(
            key: key,
            id: id,
          ),
          rawPathParams: {'id': id},
          initialChildren: children,
        );

  static const String name = 'ClubShellRoute';

  static _i35.PageInfo page = _i35.PageInfo(
    name,
    builder: (data) {
      final pathParams = data.inheritedPathParams;
      final args = data.argsAs<ClubShellRouteArgs>(
          orElse: () => ClubShellRouteArgs(id: pathParams.getInt('id')));
      return _i35.WrappedRoute(
          child: _i1.ClubShellScreen(
        key: args.key,
        id: args.id,
      ));
    },
  );
}

class ClubShellRouteArgs {
  const ClubShellRouteArgs({
    this.key,
    required this.id,
  });

  final _i36.Key? key;

  final int id;

  @override
  String toString() {
    return 'ClubShellRouteArgs{key: $key, id: $id}';
  }
}

/// generated route for
/// [_i2.DashboardScreen]
class DashboardRoute extends _i35.PageRouteInfo<void> {
  const DashboardRoute({List<_i35.PageRouteInfo>? children})
      : super(
          DashboardRoute.name,
          initialChildren: children,
        );

  static const String name = 'DashboardRoute';

  static _i35.PageInfo page = _i35.PageInfo(
    name,
    builder: (data) {
      return _i35.WrappedRoute(child: const _i2.DashboardScreen());
    },
  );
}

/// generated route for
/// [_i3.DetailClubScreen]
class DetailClubRoute extends _i35.PageRouteInfo<DetailClubRouteArgs> {
  DetailClubRoute({
    _i36.Key? key,
    required int clubId,
    List<_i35.PageRouteInfo>? children,
  }) : super(
          DetailClubRoute.name,
          args: DetailClubRouteArgs(
            key: key,
            clubId: clubId,
          ),
          rawPathParams: {'clubId': clubId},
          initialChildren: children,
        );

  static const String name = 'DetailClubRoute';

  static _i35.PageInfo page = _i35.PageInfo(
    name,
    builder: (data) {
      final pathParams = data.inheritedPathParams;
      final args = data.argsAs<DetailClubRouteArgs>(
          orElse: () =>
              DetailClubRouteArgs(clubId: pathParams.getInt('clubId')));
      return _i3.DetailClubScreen(
        key: args.key,
        clubId: args.clubId,
      );
    },
  );
}

class DetailClubRouteArgs {
  const DetailClubRouteArgs({
    this.key,
    required this.clubId,
  });

  final _i36.Key? key;

  final int clubId;

  @override
  String toString() {
    return 'DetailClubRouteArgs{key: $key, clubId: $clubId}';
  }
}

/// generated route for
/// [_i4.DetailEvaluationScreen]
class DetailEvaluationRoute
    extends _i35.PageRouteInfo<DetailEvaluationRouteArgs> {
  DetailEvaluationRoute({
    _i36.Key? key,
    required int evaluationId,
    List<_i35.PageRouteInfo>? children,
  }) : super(
          DetailEvaluationRoute.name,
          args: DetailEvaluationRouteArgs(
            key: key,
            evaluationId: evaluationId,
          ),
          initialChildren: children,
        );

  static const String name = 'DetailEvaluationRoute';

  static _i35.PageInfo page = _i35.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<DetailEvaluationRouteArgs>();
      return _i4.DetailEvaluationScreen(
        key: args.key,
        evaluationId: args.evaluationId,
      );
    },
  );
}

class DetailEvaluationRouteArgs {
  const DetailEvaluationRouteArgs({
    this.key,
    required this.evaluationId,
  });

  final _i36.Key? key;

  final int evaluationId;

  @override
  String toString() {
    return 'DetailEvaluationRouteArgs{key: $key, evaluationId: $evaluationId}';
  }
}

/// generated route for
/// [_i5.DetailExamScreen]
class DetailExamRoute extends _i35.PageRouteInfo<void> {
  const DetailExamRoute({List<_i35.PageRouteInfo>? children})
      : super(
          DetailExamRoute.name,
          initialChildren: children,
        );

  static const String name = 'DetailExamRoute';

  static _i35.PageInfo page = _i35.PageInfo(
    name,
    builder: (data) {
      return const _i5.DetailExamScreen();
    },
  );
}

/// generated route for
/// [_i6.DetailExerciseScreen]
class DetailExerciseRoute extends _i35.PageRouteInfo<void> {
  const DetailExerciseRoute({List<_i35.PageRouteInfo>? children})
      : super(
          DetailExerciseRoute.name,
          initialChildren: children,
        );

  static const String name = 'DetailExerciseRoute';

  static _i35.PageInfo page = _i35.PageInfo(
    name,
    builder: (data) {
      return const _i6.DetailExerciseScreen();
    },
  );
}

/// generated route for
/// [_i7.DetailProgramScreen]
class DetailProgramRoute extends _i35.PageRouteInfo<DetailProgramRouteArgs> {
  DetailProgramRoute({
    _i36.Key? key,
    required int programId,
    List<_i35.PageRouteInfo>? children,
  }) : super(
          DetailProgramRoute.name,
          args: DetailProgramRouteArgs(
            key: key,
            programId: programId,
          ),
          initialChildren: children,
        );

  static const String name = 'DetailProgramRoute';

  static _i35.PageInfo page = _i35.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<DetailProgramRouteArgs>();
      return _i7.DetailProgramScreen(
        key: args.key,
        programId: args.programId,
      );
    },
  );
}

class DetailProgramRouteArgs {
  const DetailProgramRouteArgs({
    this.key,
    required this.programId,
  });

  final _i36.Key? key;

  final int programId;

  @override
  String toString() {
    return 'DetailProgramRouteArgs{key: $key, programId: $programId}';
  }
}

/// generated route for
/// [_i8.DetailQuestionScreen]
class DetailQuestionRoute extends _i35.PageRouteInfo<void> {
  const DetailQuestionRoute({List<_i35.PageRouteInfo>? children})
      : super(
          DetailQuestionRoute.name,
          initialChildren: children,
        );

  static const String name = 'DetailQuestionRoute';

  static _i35.PageInfo page = _i35.PageInfo(
    name,
    builder: (data) {
      return const _i8.DetailQuestionScreen();
    },
  );
}

/// generated route for
/// [_i9.DetailTacticalScreen]
class DetailTacticalRoute extends _i35.PageRouteInfo<DetailTacticalRouteArgs> {
  DetailTacticalRoute({
    _i36.Key? key,
    required int id,
    List<_i35.PageRouteInfo>? children,
  }) : super(
          DetailTacticalRoute.name,
          args: DetailTacticalRouteArgs(
            key: key,
            id: id,
          ),
          rawPathParams: {'id': id},
          initialChildren: children,
        );

  static const String name = 'DetailTacticalRoute';

  static _i35.PageInfo page = _i35.PageInfo(
    name,
    builder: (data) {
      final pathParams = data.inheritedPathParams;
      final args = data.argsAs<DetailTacticalRouteArgs>(
          orElse: () => DetailTacticalRouteArgs(id: pathParams.getInt('id')));
      return _i9.DetailTacticalScreen(
        key: args.key,
        id: args.id,
      );
    },
  );
}

class DetailTacticalRouteArgs {
  const DetailTacticalRouteArgs({
    this.key,
    required this.id,
  });

  final _i36.Key? key;

  final int id;

  @override
  String toString() {
    return 'DetailTacticalRouteArgs{key: $key, id: $id}';
  }
}

/// generated route for
/// [_i10.EvaluationShellScreen]
class EvaluationShellRoute extends _i35.PageRouteInfo<void> {
  const EvaluationShellRoute({List<_i35.PageRouteInfo>? children})
      : super(
          EvaluationShellRoute.name,
          initialChildren: children,
        );

  static const String name = 'EvaluationShellRoute';

  static _i35.PageInfo page = _i35.PageInfo(
    name,
    builder: (data) {
      return const _i10.EvaluationShellScreen();
    },
  );
}

/// generated route for
/// [_i11.ExerciseShellScreen]
class ExerciseShellRoute extends _i35.PageRouteInfo<void> {
  const ExerciseShellRoute({List<_i35.PageRouteInfo>? children})
      : super(
          ExerciseShellRoute.name,
          initialChildren: children,
        );

  static const String name = 'ExerciseShellRoute';

  static _i35.PageInfo page = _i35.PageInfo(
    name,
    builder: (data) {
      return const _i11.ExerciseShellScreen();
    },
  );
}

/// generated route for
/// [_i12.ListClubScreen]
class ListClubRoute extends _i35.PageRouteInfo<void> {
  const ListClubRoute({List<_i35.PageRouteInfo>? children})
      : super(
          ListClubRoute.name,
          initialChildren: children,
        );

  static const String name = 'ListClubRoute';

  static _i35.PageInfo page = _i35.PageInfo(
    name,
    builder: (data) {
      return const _i12.ListClubScreen();
    },
  );
}

/// generated route for
/// [_i13.ListEvaluationScreen]
class ListEvaluationRoute extends _i35.PageRouteInfo<void> {
  const ListEvaluationRoute({List<_i35.PageRouteInfo>? children})
      : super(
          ListEvaluationRoute.name,
          initialChildren: children,
        );

  static const String name = 'ListEvaluationRoute';

  static _i35.PageInfo page = _i35.PageInfo(
    name,
    builder: (data) {
      return const _i13.ListEvaluationScreen();
    },
  );
}

/// generated route for
/// [_i14.ListExamScreen]
class ListExamRoute extends _i35.PageRouteInfo<void> {
  const ListExamRoute({List<_i35.PageRouteInfo>? children})
      : super(
          ListExamRoute.name,
          initialChildren: children,
        );

  static const String name = 'ListExamRoute';

  static _i35.PageInfo page = _i35.PageInfo(
    name,
    builder: (data) {
      return const _i14.ListExamScreen();
    },
  );
}

/// generated route for
/// [_i15.ListExerciseScreen]
class ListExerciseRoute extends _i35.PageRouteInfo<void> {
  const ListExerciseRoute({List<_i35.PageRouteInfo>? children})
      : super(
          ListExerciseRoute.name,
          initialChildren: children,
        );

  static const String name = 'ListExerciseRoute';

  static _i35.PageInfo page = _i35.PageInfo(
    name,
    builder: (data) {
      return const _i15.ListExerciseScreen();
    },
  );
}

/// generated route for
/// [_i16.ListMediaScreen]
class ListMediaRoute extends _i35.PageRouteInfo<void> {
  const ListMediaRoute({List<_i35.PageRouteInfo>? children})
      : super(
          ListMediaRoute.name,
          initialChildren: children,
        );

  static const String name = 'ListMediaRoute';

  static _i35.PageInfo page = _i35.PageInfo(
    name,
    builder: (data) {
      return const _i16.ListMediaScreen();
    },
  );
}

/// generated route for
/// [_i17.ListProgramScreen]
class ListProgramRoute extends _i35.PageRouteInfo<void> {
  const ListProgramRoute({List<_i35.PageRouteInfo>? children})
      : super(
          ListProgramRoute.name,
          initialChildren: children,
        );

  static const String name = 'ListProgramRoute';

  static _i35.PageInfo page = _i35.PageInfo(
    name,
    builder: (data) {
      return const _i17.ListProgramScreen();
    },
  );
}

/// generated route for
/// [_i18.ListQuestionScreen]
class ListQuestionRoute extends _i35.PageRouteInfo<void> {
  const ListQuestionRoute({List<_i35.PageRouteInfo>? children})
      : super(
          ListQuestionRoute.name,
          initialChildren: children,
        );

  static const String name = 'ListQuestionRoute';

  static _i35.PageInfo page = _i35.PageInfo(
    name,
    builder: (data) {
      return const _i18.ListQuestionScreen();
    },
  );
}

/// generated route for
/// [_i19.ListTacticalScreen]
class ListTacticalRoute extends _i35.PageRouteInfo<void> {
  const ListTacticalRoute({List<_i35.PageRouteInfo>? children})
      : super(
          ListTacticalRoute.name,
          initialChildren: children,
        );

  static const String name = 'ListTacticalRoute';

  static _i35.PageInfo page = _i35.PageInfo(
    name,
    builder: (data) {
      return const _i19.ListTacticalScreen();
    },
  );
}

/// generated route for
/// [_i20.ProfileScreen]
class ProfileRoute extends _i35.PageRouteInfo<void> {
  const ProfileRoute({List<_i35.PageRouteInfo>? children})
      : super(
          ProfileRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProfileRoute';

  static _i35.PageInfo page = _i35.PageInfo(
    name,
    builder: (data) {
      return const _i20.ProfileScreen();
    },
  );
}

/// generated route for
/// [_i21.ProgramShellScreen]
class ProgramShellRoute extends _i35.PageRouteInfo<void> {
  const ProgramShellRoute({List<_i35.PageRouteInfo>? children})
      : super(
          ProgramShellRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProgramShellRoute';

  static _i35.PageInfo page = _i35.PageInfo(
    name,
    builder: (data) {
      return const _i21.ProgramShellScreen();
    },
  );
}

/// generated route for
/// [_i22.QuestionShellScreen]
class QuestionShellRoute extends _i35.PageRouteInfo<void> {
  const QuestionShellRoute({List<_i35.PageRouteInfo>? children})
      : super(
          QuestionShellRoute.name,
          initialChildren: children,
        );

  static const String name = 'QuestionShellRoute';

  static _i35.PageInfo page = _i35.PageInfo(
    name,
    builder: (data) {
      return const _i22.QuestionShellScreen();
    },
  );
}

/// generated route for
/// [_i23.SignInScreen]
class SignInRoute extends _i35.PageRouteInfo<void> {
  const SignInRoute({List<_i35.PageRouteInfo>? children})
      : super(
          SignInRoute.name,
          initialChildren: children,
        );

  static const String name = 'SignInRoute';

  static _i35.PageInfo page = _i35.PageInfo(
    name,
    builder: (data) {
      return const _i23.SignInScreen();
    },
  );
}

/// generated route for
/// [_i24.SignUpScreen]
class SignUpRoute extends _i35.PageRouteInfo<void> {
  const SignUpRoute({List<_i35.PageRouteInfo>? children})
      : super(
          SignUpRoute.name,
          initialChildren: children,
        );

  static const String name = 'SignUpRoute';

  static _i35.PageInfo page = _i35.PageInfo(
    name,
    builder: (data) {
      return const _i24.SignUpScreen();
    },
  );
}

/// generated route for
/// [_i25.SplashScreen]
class SplashRoute extends _i35.PageRouteInfo<void> {
  const SplashRoute({List<_i35.PageRouteInfo>? children})
      : super(
          SplashRoute.name,
          initialChildren: children,
        );

  static const String name = 'SplashRoute';

  static _i35.PageInfo page = _i35.PageInfo(
    name,
    builder: (data) {
      return _i35.WrappedRoute(child: const _i25.SplashScreen());
    },
  );
}

/// generated route for
/// [_i26.TacticalShellScreen]
class TacticalShellRoute extends _i35.PageRouteInfo<void> {
  const TacticalShellRoute({List<_i35.PageRouteInfo>? children})
      : super(
          TacticalShellRoute.name,
          initialChildren: children,
        );

  static const String name = 'TacticalShellRoute';

  static _i35.PageInfo page = _i35.PageInfo(
    name,
    builder: (data) {
      return const _i26.TacticalShellScreen();
    },
  );
}

/// generated route for
/// [_i27.UpdateProfileScreen]
class UpdateProfileRoute extends _i35.PageRouteInfo<void> {
  const UpdateProfileRoute({List<_i35.PageRouteInfo>? children})
      : super(
          UpdateProfileRoute.name,
          initialChildren: children,
        );

  static const String name = 'UpdateProfileRoute';

  static _i35.PageInfo page = _i35.PageInfo(
    name,
    builder: (data) {
      return const _i27.UpdateProfileScreen();
    },
  );
}

/// generated route for
/// [_i28.UpsertClubScreen]
class UpsertClubRoute extends _i35.PageRouteInfo<void> {
  const UpsertClubRoute({List<_i35.PageRouteInfo>? children})
      : super(
          UpsertClubRoute.name,
          initialChildren: children,
        );

  static const String name = 'UpsertClubRoute';

  static _i35.PageInfo page = _i35.PageInfo(
    name,
    builder: (data) {
      return _i35.WrappedRoute(child: const _i28.UpsertClubScreen());
    },
  );
}

/// generated route for
/// [_i29.UpsertEvaluationScreen]
class UpsertEvaluationRoute extends _i35.PageRouteInfo<void> {
  const UpsertEvaluationRoute({List<_i35.PageRouteInfo>? children})
      : super(
          UpsertEvaluationRoute.name,
          initialChildren: children,
        );

  static const String name = 'UpsertEvaluationRoute';

  static _i35.PageInfo page = _i35.PageInfo(
    name,
    builder: (data) {
      return const _i29.UpsertEvaluationScreen();
    },
  );
}

/// generated route for
/// [_i30.UpsertExamScreen]
class UpsertExamRoute extends _i35.PageRouteInfo<void> {
  const UpsertExamRoute({List<_i35.PageRouteInfo>? children})
      : super(
          UpsertExamRoute.name,
          initialChildren: children,
        );

  static const String name = 'UpsertExamRoute';

  static _i35.PageInfo page = _i35.PageInfo(
    name,
    builder: (data) {
      return const _i30.UpsertExamScreen();
    },
  );
}

/// generated route for
/// [_i31.UpsertExerciseScreen]
class UpsertExerciseRoute extends _i35.PageRouteInfo<void> {
  const UpsertExerciseRoute({List<_i35.PageRouteInfo>? children})
      : super(
          UpsertExerciseRoute.name,
          initialChildren: children,
        );

  static const String name = 'UpsertExerciseRoute';

  static _i35.PageInfo page = _i35.PageInfo(
    name,
    builder: (data) {
      return const _i31.UpsertExerciseScreen();
    },
  );
}

/// generated route for
/// [_i32.UpsertProgramScreen]
class UpsertProgramRoute extends _i35.PageRouteInfo<void> {
  final ClubModel club;
   const UpsertProgramRoute({
    required this.club, 
    List<_i35.PageRouteInfo>? children,
  }) : super(
          UpsertProgramRoute.name,
          initialChildren: children,
          args: club, 
        );

  static const String name = 'UpsertProgramRoute';

  static _i35.PageInfo page = _i35.PageInfo(
    name,
    builder: (data) {
      final club = data.args as ClubModel; 
      return _i32.UpsertProgramScreen(club: club); 
    },
  );
}

/// generated route for
/// [_i33.UpsertQuestionScreen]
class UpsertQuestionRoute extends _i35.PageRouteInfo<void> {
  const UpsertQuestionRoute({List<_i35.PageRouteInfo>? children})
      : super(
          UpsertQuestionRoute.name,
          initialChildren: children,
        );

  static const String name = 'UpsertQuestionRoute';

  static _i35.PageInfo page = _i35.PageInfo(
    name,
    builder: (data) {
      return const _i33.UpsertQuestionScreen();
    },
  );
}

/// generated route for
/// [_i34.UpsertTacticalScreen]
class UpsertTacticalRoute extends _i35.PageRouteInfo<void> {
  const UpsertTacticalRoute({List<_i35.PageRouteInfo>? children})
      : super(
          UpsertTacticalRoute.name,
          initialChildren: children,
        );

  static const String name = 'UpsertTacticalRoute';

  static _i35.PageInfo page = _i35.PageInfo(
    name,
    builder: (data) {
      return const _i34.UpsertTacticalScreen();
    },
  );
}
