// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i36;
import 'package:dot_coaching/features/auth/ui/screens/sign_in_screen.dart'
    as _i24;
import 'package:dot_coaching/features/auth/ui/screens/sign_up_screen.dart'
    as _i25;
import 'package:dot_coaching/features/auth/ui/screens/splash_screen.dart'
    as _i26;
import 'package:dot_coaching/features/club/ui/screens/club_shell_screen.dart'
    as _i1;
import 'package:dot_coaching/features/club/ui/screens/detail_club_screen.dart'
    as _i3;
import 'package:dot_coaching/features/club/ui/screens/list_club_screen.dart'
    as _i13;
import 'package:dot_coaching/features/club/ui/screens/upsert_club_screen.dart'
    as _i29;
import 'package:dot_coaching/features/evaluation/ui/screens/detail_evaluation_screen.dart'
    as _i4;
import 'package:dot_coaching/features/evaluation/ui/screens/evaluation_shell_screen.dart'
    as _i10;
import 'package:dot_coaching/features/evaluation/ui/screens/list_evaluation_screen.dart'
    as _i14;
import 'package:dot_coaching/features/evaluation/ui/screens/upsert_evaluation_screen.dart'
    as _i30;
import 'package:dot_coaching/features/exam/ui/screens/detail_exam_screen.dart'
    as _i5;
import 'package:dot_coaching/features/exam/ui/screens/exam_shell_screen.dart'
    as _i11;
import 'package:dot_coaching/features/exam/ui/screens/list_exam_screen.dart'
    as _i15;
import 'package:dot_coaching/features/exam/ui/screens/upsert_exam_screen.dart'
    as _i31;
import 'package:dot_coaching/features/exercise/ui/screens/detail_exercise_screen.dart'
    as _i6;
import 'package:dot_coaching/features/exercise/ui/screens/exercise_shell_screen.dart'
    as _i12;
import 'package:dot_coaching/features/exercise/ui/screens/list_exercise_screen.dart'
    as _i16;
import 'package:dot_coaching/features/exercise/ui/screens/upsert_exercise_screen.dart'
    as _i32;
import 'package:dot_coaching/features/feature.dart' as _i38;
import 'package:dot_coaching/features/general/ui/screens/dashboard_screen.dart'
    as _i2;
import 'package:dot_coaching/features/media/ui/screens/media_screen.dart'
    as _i20;
import 'package:dot_coaching/features/program/ui/screens/detail_program_screen.dart'
    as _i7;
import 'package:dot_coaching/features/program/ui/screens/list_program_screen.dart'
    as _i17;
import 'package:dot_coaching/features/program/ui/screens/program_shell_screen.dart'
    as _i22;
import 'package:dot_coaching/features/program/ui/screens/upsert_program_screen.dart'
    as _i33;
import 'package:dot_coaching/features/question/ui/screens/detail_question_screen.dart'
    as _i8;
import 'package:dot_coaching/features/question/ui/screens/list_question_screen.dart'
    as _i18;
import 'package:dot_coaching/features/question/ui/screens/question_shell_screen.dart'
    as _i23;
import 'package:dot_coaching/features/question/ui/screens/upsert_question_screen.dart'
    as _i34;
import 'package:dot_coaching/features/tactical/ui/screens/detail_tactical_screen.dart'
    as _i9;
import 'package:dot_coaching/features/tactical/ui/screens/list_tactical_screen.dart'
    as _i19;
import 'package:dot_coaching/features/tactical/ui/screens/tactical_shell_screen.dart'
    as _i27;
import 'package:dot_coaching/features/tactical/ui/screens/upsert_tactical_screen.dart'
    as _i35;
import 'package:dot_coaching/features/user/ui/screens/profile_screen.dart'
    as _i21;
import 'package:dot_coaching/features/user/ui/screens/update_profile_screen.dart'
    as _i28;
import 'package:flutter/material.dart' as _i37;

/// generated route for
/// [_i1.ClubShellScreen]
class ClubShellRoute extends _i36.PageRouteInfo<ClubShellRouteArgs> {
  ClubShellRoute({
    _i37.Key? key,
    required int id,
    List<_i36.PageRouteInfo>? children,
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

  static _i36.PageInfo page = _i36.PageInfo(
    name,
    builder: (data) {
      final pathParams = data.inheritedPathParams;
      final args = data.argsAs<ClubShellRouteArgs>(
          orElse: () => ClubShellRouteArgs(id: pathParams.getInt('id')));
      return _i36.WrappedRoute(
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

  final _i37.Key? key;

  final int id;

  @override
  String toString() {
    return 'ClubShellRouteArgs{key: $key, id: $id}';
  }
}

/// generated route for
/// [_i2.DashboardScreen]
class DashboardRoute extends _i36.PageRouteInfo<void> {
  const DashboardRoute({List<_i36.PageRouteInfo>? children})
      : super(
          DashboardRoute.name,
          initialChildren: children,
        );

  static const String name = 'DashboardRoute';

  static _i36.PageInfo page = _i36.PageInfo(
    name,
    builder: (data) {
      return _i36.WrappedRoute(child: const _i2.DashboardScreen());
    },
  );
}

/// generated route for
/// [_i3.DetailClubScreen]
class DetailClubRoute extends _i36.PageRouteInfo<DetailClubRouteArgs> {
  DetailClubRoute({
    _i37.Key? key,
    required int id,
    List<_i36.PageRouteInfo>? children,
  }) : super(
          DetailClubRoute.name,
          args: DetailClubRouteArgs(
            key: key,
            id: id,
          ),
          rawPathParams: {'id': id},
          initialChildren: children,
        );

  static const String name = 'DetailClubRoute';

  static _i36.PageInfo page = _i36.PageInfo(
    name,
    builder: (data) {
      final pathParams = data.inheritedPathParams;
      final args = data.argsAs<DetailClubRouteArgs>(
          orElse: () => DetailClubRouteArgs(id: pathParams.getInt('id')));
      return _i3.DetailClubScreen(
        key: args.key,
        id: args.id,
      );
    },
  );
}

class DetailClubRouteArgs {
  const DetailClubRouteArgs({
    this.key,
    required this.id,
  });

  final _i37.Key? key;

  final int id;

  @override
  String toString() {
    return 'DetailClubRouteArgs{key: $key, id: $id}';
  }
}

/// generated route for
/// [_i4.DetailEvaluationScreen]
class DetailEvaluationRoute
    extends _i36.PageRouteInfo<DetailEvaluationRouteArgs> {
  DetailEvaluationRoute({
    _i37.Key? key,
    required int id,
    List<_i36.PageRouteInfo>? children,
  }) : super(
          DetailEvaluationRoute.name,
          args: DetailEvaluationRouteArgs(
            key: key,
            id: id,
          ),
          initialChildren: children,
        );

  static const String name = 'DetailEvaluationRoute';

  static _i36.PageInfo page = _i36.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<DetailEvaluationRouteArgs>();
      return _i4.DetailEvaluationScreen(
        key: args.key,
        id: args.id,
      );
    },
  );
}

class DetailEvaluationRouteArgs {
  const DetailEvaluationRouteArgs({
    this.key,
    required this.id,
  });

  final _i37.Key? key;

  final int id;

  @override
  String toString() {
    return 'DetailEvaluationRouteArgs{key: $key, id: $id}';
  }
}

/// generated route for
/// [_i5.DetailExamScreen]
class DetailExamRoute extends _i36.PageRouteInfo<DetailExamRouteArgs> {
  DetailExamRoute({
    _i37.Key? key,
    required int id,
    List<_i36.PageRouteInfo>? children,
  }) : super(
          DetailExamRoute.name,
          args: DetailExamRouteArgs(
            key: key,
            id: id,
          ),
          rawPathParams: {'id': id},
          initialChildren: children,
        );

  static const String name = 'DetailExamRoute';

  static _i36.PageInfo page = _i36.PageInfo(
    name,
    builder: (data) {
      final pathParams = data.inheritedPathParams;
      final args = data.argsAs<DetailExamRouteArgs>(
          orElse: () => DetailExamRouteArgs(id: pathParams.getInt('id')));
      return _i5.DetailExamScreen(
        key: args.key,
        id: args.id,
      );
    },
  );
}

class DetailExamRouteArgs {
  const DetailExamRouteArgs({
    this.key,
    required this.id,
  });

  final _i37.Key? key;

  final int id;

  @override
  String toString() {
    return 'DetailExamRouteArgs{key: $key, id: $id}';
  }
}

/// generated route for
/// [_i6.DetailExerciseScreen]
class DetailExerciseRoute extends _i36.PageRouteInfo<void> {
  const DetailExerciseRoute({List<_i36.PageRouteInfo>? children})
      : super(
          DetailExerciseRoute.name,
          initialChildren: children,
        );

  static const String name = 'DetailExerciseRoute';

  static _i36.PageInfo page = _i36.PageInfo(
    name,
    builder: (data) {
      return const _i6.DetailExerciseScreen();
    },
  );
}

/// generated route for
/// [_i7.DetailProgramScreen]
class DetailProgramRoute extends _i36.PageRouteInfo<DetailProgramRouteArgs> {
  DetailProgramRoute({
    _i37.Key? key,
    required int id,
    List<_i36.PageRouteInfo>? children,
  }) : super(
          DetailProgramRoute.name,
          args: DetailProgramRouteArgs(
            key: key,
            id: id,
          ),
          rawPathParams: {'id': id},
          initialChildren: children,
        );

  static const String name = 'DetailProgramRoute';

  static _i36.PageInfo page = _i36.PageInfo(
    name,
    builder: (data) {
      final pathParams = data.inheritedPathParams;
      final args = data.argsAs<DetailProgramRouteArgs>(
          orElse: () => DetailProgramRouteArgs(id: pathParams.getInt('id')));
      return _i36.WrappedRoute(
          child: _i7.DetailProgramScreen(
        key: args.key,
        id: args.id,
      ));
    },
  );
}

class DetailProgramRouteArgs {
  const DetailProgramRouteArgs({
    this.key,
    required this.id,
  });

  final _i37.Key? key;

  final int id;

  @override
  String toString() {
    return 'DetailProgramRouteArgs{key: $key, id: $id}';
  }
}

/// generated route for
/// [_i8.DetailQuestionScreen]
class DetailQuestionRoute extends _i36.PageRouteInfo<DetailQuestionRouteArgs> {
  DetailQuestionRoute({
    _i37.Key? key,
    required int id,
    List<_i36.PageRouteInfo>? children,
  }) : super(
          DetailQuestionRoute.name,
          args: DetailQuestionRouteArgs(
            key: key,
            id: id,
          ),
          rawPathParams: {'id': id},
          initialChildren: children,
        );

  static const String name = 'DetailQuestionRoute';

  static _i36.PageInfo page = _i36.PageInfo(
    name,
    builder: (data) {
      final pathParams = data.inheritedPathParams;
      final args = data.argsAs<DetailQuestionRouteArgs>(
          orElse: () => DetailQuestionRouteArgs(id: pathParams.getInt('id')));
      return _i8.DetailQuestionScreen(
        key: args.key,
        id: args.id,
      );
    },
  );
}

class DetailQuestionRouteArgs {
  const DetailQuestionRouteArgs({
    this.key,
    required this.id,
  });

  final _i37.Key? key;

  final int id;

  @override
  String toString() {
    return 'DetailQuestionRouteArgs{key: $key, id: $id}';
  }
}

/// generated route for
/// [_i9.DetailTacticalScreen]
class DetailTacticalRoute extends _i36.PageRouteInfo<DetailTacticalRouteArgs> {
  DetailTacticalRoute({
    _i37.Key? key,
    required int id,
    List<_i36.PageRouteInfo>? children,
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

  static _i36.PageInfo page = _i36.PageInfo(
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

  final _i37.Key? key;

  final int id;

  @override
  String toString() {
    return 'DetailTacticalRouteArgs{key: $key, id: $id}';
  }
}

/// generated route for
/// [_i10.EvaluationShellScreen]
class EvaluationShellRoute extends _i36.PageRouteInfo<void> {
  const EvaluationShellRoute({List<_i36.PageRouteInfo>? children})
      : super(
          EvaluationShellRoute.name,
          initialChildren: children,
        );

  static const String name = 'EvaluationShellRoute';

  static _i36.PageInfo page = _i36.PageInfo(
    name,
    builder: (data) {
      return const _i10.EvaluationShellScreen();
    },
  );
}

/// generated route for
/// [_i11.ExamShellScreen]
class ExamShellRoute extends _i36.PageRouteInfo<void> {
  const ExamShellRoute({List<_i36.PageRouteInfo>? children})
      : super(
          ExamShellRoute.name,
          initialChildren: children,
        );

  static const String name = 'ExamShellRoute';

  static _i36.PageInfo page = _i36.PageInfo(
    name,
    builder: (data) {
      return const _i11.ExamShellScreen();
    },
  );
}

/// generated route for
/// [_i12.ExerciseShellScreen]
class ExerciseShellRoute extends _i36.PageRouteInfo<void> {
  const ExerciseShellRoute({List<_i36.PageRouteInfo>? children})
      : super(
          ExerciseShellRoute.name,
          initialChildren: children,
        );

  static const String name = 'ExerciseShellRoute';

  static _i36.PageInfo page = _i36.PageInfo(
    name,
    builder: (data) {
      return const _i12.ExerciseShellScreen();
    },
  );
}

/// generated route for
/// [_i13.ListClubScreen]
class ListClubRoute extends _i36.PageRouteInfo<void> {
  const ListClubRoute({List<_i36.PageRouteInfo>? children})
      : super(
          ListClubRoute.name,
          initialChildren: children,
        );

  static const String name = 'ListClubRoute';

  static _i36.PageInfo page = _i36.PageInfo(
    name,
    builder: (data) {
      return const _i13.ListClubScreen();
    },
  );
}

/// generated route for
/// [_i14.ListEvaluationScreen]
class ListEvaluationRoute extends _i36.PageRouteInfo<void> {
  const ListEvaluationRoute({List<_i36.PageRouteInfo>? children})
      : super(
          ListEvaluationRoute.name,
          initialChildren: children,
        );

  static const String name = 'ListEvaluationRoute';

  static _i36.PageInfo page = _i36.PageInfo(
    name,
    builder: (data) {
      return const _i14.ListEvaluationScreen();
    },
  );
}

/// generated route for
/// [_i15.ListExamScreen]
class ListExamRoute extends _i36.PageRouteInfo<void> {
  const ListExamRoute({List<_i36.PageRouteInfo>? children})
      : super(
          ListExamRoute.name,
          initialChildren: children,
        );

  static const String name = 'ListExamRoute';

  static _i36.PageInfo page = _i36.PageInfo(
    name,
    builder: (data) {
      return const _i15.ListExamScreen();
    },
  );
}

/// generated route for
/// [_i16.ListExerciseScreen]
class ListExerciseRoute extends _i36.PageRouteInfo<void> {
  const ListExerciseRoute({List<_i36.PageRouteInfo>? children})
      : super(
          ListExerciseRoute.name,
          initialChildren: children,
        );

  static const String name = 'ListExerciseRoute';

  static _i36.PageInfo page = _i36.PageInfo(
    name,
    builder: (data) {
      return const _i16.ListExerciseScreen();
    },
  );
}

/// generated route for
/// [_i17.ListProgramScreen]
class ListProgramRoute extends _i36.PageRouteInfo<void> {
  const ListProgramRoute({List<_i36.PageRouteInfo>? children})
      : super(
          ListProgramRoute.name,
          initialChildren: children,
        );

  static const String name = 'ListProgramRoute';

  static _i36.PageInfo page = _i36.PageInfo(
    name,
    builder: (data) {
      return const _i17.ListProgramScreen();
    },
  );
}

/// generated route for
/// [_i18.ListQuestionScreen]
class ListQuestionRoute extends _i36.PageRouteInfo<void> {
  const ListQuestionRoute({List<_i36.PageRouteInfo>? children})
      : super(
          ListQuestionRoute.name,
          initialChildren: children,
        );

  static const String name = 'ListQuestionRoute';

  static _i36.PageInfo page = _i36.PageInfo(
    name,
    builder: (data) {
      return const _i18.ListQuestionScreen();
    },
  );
}

/// generated route for
/// [_i19.ListTacticalScreen]
class ListTacticalRoute extends _i36.PageRouteInfo<void> {
  const ListTacticalRoute({List<_i36.PageRouteInfo>? children})
      : super(
          ListTacticalRoute.name,
          initialChildren: children,
        );

  static const String name = 'ListTacticalRoute';

  static _i36.PageInfo page = _i36.PageInfo(
    name,
    builder: (data) {
      return const _i19.ListTacticalScreen();
    },
  );
}

/// generated route for
/// [_i20.MediaScreen]
class MediaRoute extends _i36.PageRouteInfo<void> {
  const MediaRoute({List<_i36.PageRouteInfo>? children})
      : super(
          MediaRoute.name,
          initialChildren: children,
        );

  static const String name = 'MediaRoute';

  static _i36.PageInfo page = _i36.PageInfo(
    name,
    builder: (data) {
      return _i36.WrappedRoute(child: const _i20.MediaScreen());
    },
  );
}

/// generated route for
/// [_i21.ProfileScreen]
class ProfileRoute extends _i36.PageRouteInfo<void> {
  const ProfileRoute({List<_i36.PageRouteInfo>? children})
      : super(
          ProfileRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProfileRoute';

  static _i36.PageInfo page = _i36.PageInfo(
    name,
    builder: (data) {
      return const _i21.ProfileScreen();
    },
  );
}

/// generated route for
/// [_i22.ProgramShellScreen]
class ProgramShellRoute extends _i36.PageRouteInfo<void> {
  const ProgramShellRoute({List<_i36.PageRouteInfo>? children})
      : super(
          ProgramShellRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProgramShellRoute';

  static _i36.PageInfo page = _i36.PageInfo(
    name,
    builder: (data) {
      return const _i22.ProgramShellScreen();
    },
  );
}

/// generated route for
/// [_i23.QuestionShellScreen]
class QuestionShellRoute extends _i36.PageRouteInfo<void> {
  const QuestionShellRoute({List<_i36.PageRouteInfo>? children})
      : super(
          QuestionShellRoute.name,
          initialChildren: children,
        );

  static const String name = 'QuestionShellRoute';

  static _i36.PageInfo page = _i36.PageInfo(
    name,
    builder: (data) {
      return const _i23.QuestionShellScreen();
    },
  );
}

/// generated route for
/// [_i24.SignInScreen]
class SignInRoute extends _i36.PageRouteInfo<void> {
  const SignInRoute({List<_i36.PageRouteInfo>? children})
      : super(
          SignInRoute.name,
          initialChildren: children,
        );

  static const String name = 'SignInRoute';

  static _i36.PageInfo page = _i36.PageInfo(
    name,
    builder: (data) {
      return const _i24.SignInScreen();
    },
  );
}

/// generated route for
/// [_i25.SignUpScreen]
class SignUpRoute extends _i36.PageRouteInfo<void> {
  const SignUpRoute({List<_i36.PageRouteInfo>? children})
      : super(
          SignUpRoute.name,
          initialChildren: children,
        );

  static const String name = 'SignUpRoute';

  static _i36.PageInfo page = _i36.PageInfo(
    name,
    builder: (data) {
      return const _i25.SignUpScreen();
    },
  );
}

/// generated route for
/// [_i26.SplashScreen]
class SplashRoute extends _i36.PageRouteInfo<void> {
  const SplashRoute({List<_i36.PageRouteInfo>? children})
      : super(
          SplashRoute.name,
          initialChildren: children,
        );

  static const String name = 'SplashRoute';

  static _i36.PageInfo page = _i36.PageInfo(
    name,
    builder: (data) {
      return _i36.WrappedRoute(child: const _i26.SplashScreen());
    },
  );
}

/// generated route for
/// [_i27.TacticalShellScreen]
class TacticalShellRoute extends _i36.PageRouteInfo<void> {
  const TacticalShellRoute({List<_i36.PageRouteInfo>? children})
      : super(
          TacticalShellRoute.name,
          initialChildren: children,
        );

  static const String name = 'TacticalShellRoute';

  static _i36.PageInfo page = _i36.PageInfo(
    name,
    builder: (data) {
      return const _i27.TacticalShellScreen();
    },
  );
}

/// generated route for
/// [_i28.UpdateProfileScreen]
class UpdateProfileRoute extends _i36.PageRouteInfo<void> {
  const UpdateProfileRoute({List<_i36.PageRouteInfo>? children})
      : super(
          UpdateProfileRoute.name,
          initialChildren: children,
        );

  static const String name = 'UpdateProfileRoute';

  static _i36.PageInfo page = _i36.PageInfo(
    name,
    builder: (data) {
      return const _i28.UpdateProfileScreen();
    },
  );
}

/// generated route for
/// [_i29.UpsertClubScreen]
class UpsertClubRoute extends _i36.PageRouteInfo<UpsertClubRouteArgs> {
  UpsertClubRoute({
    _i37.Key? key,
    required void Function(_i38.ClubModel) onUpserted,
    List<_i36.PageRouteInfo>? children,
  }) : super(
          UpsertClubRoute.name,
          args: UpsertClubRouteArgs(
            key: key,
            onUpserted: onUpserted,
          ),
          initialChildren: children,
        );

  static const String name = 'UpsertClubRoute';

  static _i36.PageInfo page = _i36.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<UpsertClubRouteArgs>();
      return _i36.WrappedRoute(
          child: _i29.UpsertClubScreen(
        key: args.key,
        onUpserted: args.onUpserted,
      ));
    },
  );
}

class UpsertClubRouteArgs {
  const UpsertClubRouteArgs({
    this.key,
    required this.onUpserted,
  });

  final _i37.Key? key;

  final void Function(_i38.ClubModel) onUpserted;

  @override
  String toString() {
    return 'UpsertClubRouteArgs{key: $key, onUpserted: $onUpserted}';
  }
}

/// generated route for
/// [_i30.UpsertEvaluationScreen]
class UpsertEvaluationRoute extends _i36.PageRouteInfo<void> {
  const UpsertEvaluationRoute({List<_i36.PageRouteInfo>? children})
      : super(
          UpsertEvaluationRoute.name,
          initialChildren: children,
        );

  static const String name = 'UpsertEvaluationRoute';

  static _i36.PageInfo page = _i36.PageInfo(
    name,
    builder: (data) {
      return const _i30.UpsertEvaluationScreen();
    },
  );
}

/// generated route for
/// [_i31.UpsertExamScreen]
class UpsertExamRoute extends _i36.PageRouteInfo<void> {
  const UpsertExamRoute({List<_i36.PageRouteInfo>? children})
      : super(
          UpsertExamRoute.name,
          initialChildren: children,
        );

  static const String name = 'UpsertExamRoute';

  static _i36.PageInfo page = _i36.PageInfo(
    name,
    builder: (data) {
      return _i36.WrappedRoute(child: const _i31.UpsertExamScreen());
    },
  );
}

/// generated route for
/// [_i32.UpsertExerciseScreen]
class UpsertExerciseRoute extends _i36.PageRouteInfo<void> {
  const UpsertExerciseRoute({List<_i36.PageRouteInfo>? children})
      : super(
          UpsertExerciseRoute.name,
          initialChildren: children,
        );

  static const String name = 'UpsertExerciseRoute';

  static _i36.PageInfo page = _i36.PageInfo(
    name,
    builder: (data) {
      return const _i32.UpsertExerciseScreen();
    },
  );
}

/// generated route for
/// [_i33.UpsertProgramScreen]
class UpsertProgramRoute extends _i36.PageRouteInfo<void> {
  const UpsertProgramRoute({List<_i36.PageRouteInfo>? children})
      : super(
          UpsertProgramRoute.name,
          initialChildren: children,
        );

  static const String name = 'UpsertProgramRoute';

  static _i36.PageInfo page = _i36.PageInfo(
    name,
    builder: (data) {
      return _i36.WrappedRoute(child: const _i33.UpsertProgramScreen());
    },
  );
}

/// generated route for
/// [_i34.UpsertQuestionScreen]
class UpsertQuestionRoute extends _i36.PageRouteInfo<void> {
  const UpsertQuestionRoute({List<_i36.PageRouteInfo>? children})
      : super(
          UpsertQuestionRoute.name,
          initialChildren: children,
        );

  static const String name = 'UpsertQuestionRoute';

  static _i36.PageInfo page = _i36.PageInfo(
    name,
    builder: (data) {
      return const _i34.UpsertQuestionScreen();
    },
  );
}

/// generated route for
/// [_i35.UpsertTacticalScreen]
class UpsertTacticalRoute extends _i36.PageRouteInfo<void> {
  const UpsertTacticalRoute({List<_i36.PageRouteInfo>? children})
      : super(
          UpsertTacticalRoute.name,
          initialChildren: children,
        );

  static const String name = 'UpsertTacticalRoute';

  static _i36.PageInfo page = _i36.PageInfo(
    name,
    builder: (data) {
      return _i36.WrappedRoute(child: const _i35.UpsertTacticalScreen());
    },
  );
}
