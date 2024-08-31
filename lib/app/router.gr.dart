// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i39;
import 'package:dot_coaching/features/auth/ui/screens/sign_in_screen.dart'
    as _i25;
import 'package:dot_coaching/features/auth/ui/screens/sign_up_screen.dart'
    as _i26;
import 'package:dot_coaching/features/auth/ui/screens/splash_screen.dart'
    as _i27;
import 'package:dot_coaching/features/club/ui/screens/add_member_screen.dart'
    as _i1;
import 'package:dot_coaching/features/club/ui/screens/club_shell_screen.dart'
    as _i2;
import 'package:dot_coaching/features/club/ui/screens/detail_club_screen.dart'
    as _i4;
import 'package:dot_coaching/features/club/ui/screens/list_club_screen.dart'
    as _i14;
import 'package:dot_coaching/features/club/ui/screens/upsert_club_screen.dart'
    as _i32;
import 'package:dot_coaching/features/evaluation/ui/screens/detail_evaluation_screen.dart'
    as _i5;
import 'package:dot_coaching/features/evaluation/ui/screens/evaluation_shell_screen.dart'
    as _i11;
import 'package:dot_coaching/features/evaluation/ui/screens/list_evaluation_screen.dart'
    as _i15;
import 'package:dot_coaching/features/evaluation/ui/screens/upsert_evaluation_screen.dart'
    as _i33;
import 'package:dot_coaching/features/exam/ui/screens/detail_exam_screen.dart'
    as _i6;
import 'package:dot_coaching/features/exam/ui/screens/exam_shell_screen.dart'
    as _i12;
import 'package:dot_coaching/features/exam/ui/screens/list_exam_screen.dart'
    as _i16;
import 'package:dot_coaching/features/exam/ui/screens/upsert_exam_screen.dart'
    as _i34;
import 'package:dot_coaching/features/exercise/ui/screens/detail_exercise_screen.dart'
    as _i7;
import 'package:dot_coaching/features/exercise/ui/screens/exercise_shell_screen.dart'
    as _i13;
import 'package:dot_coaching/features/exercise/ui/screens/list_exercise_screen.dart'
    as _i17;
import 'package:dot_coaching/features/exercise/ui/screens/upsert_exercise_screen.dart'
    as _i35;
import 'package:dot_coaching/features/feature.dart' as _i41;
import 'package:dot_coaching/features/general/ui/screens/dashboard_screen.dart'
    as _i3;
import 'package:dot_coaching/features/media/ui/screens/media_screen.dart'
    as _i21;
import 'package:dot_coaching/features/program/ui/screens/detail_program_screen.dart'
    as _i8;
import 'package:dot_coaching/features/program/ui/screens/list_program_screen.dart'
    as _i18;
import 'package:dot_coaching/features/program/ui/screens/program_shell_screen.dart'
    as _i23;
import 'package:dot_coaching/features/program/ui/screens/upsert_program_screen.dart'
    as _i36;
import 'package:dot_coaching/features/question/ui/screens/detail_question_screen.dart'
    as _i9;
import 'package:dot_coaching/features/question/ui/screens/list_question_screen.dart'
    as _i19;
import 'package:dot_coaching/features/question/ui/screens/question_shell_screen.dart'
    as _i24;
import 'package:dot_coaching/features/question/ui/screens/upsert_question_screen.dart'
    as _i37;
import 'package:dot_coaching/features/tactical/ui/screens/detail_tactical_screen.dart'
    as _i10;
import 'package:dot_coaching/features/tactical/ui/screens/list_tactical_screen.dart'
    as _i20;
import 'package:dot_coaching/features/tactical/ui/screens/strategy_shell_screen.dart'
    as _i28;
import 'package:dot_coaching/features/tactical/ui/screens/tactical_shell_screen.dart'
    as _i29;
import 'package:dot_coaching/features/tactical/ui/screens/update_strategy_screen.dart'
    as _i31;
import 'package:dot_coaching/features/tactical/ui/screens/upsert_tactical_screen.dart'
    as _i38;
import 'package:dot_coaching/features/user/ui/screens/profile_screen.dart'
    as _i22;
import 'package:dot_coaching/features/user/ui/screens/update_profile_screen.dart'
    as _i30;
import 'package:flutter/material.dart' as _i40;

/// generated route for
/// [_i1.AddMemberScreen]
class AddMemberRoute extends _i39.PageRouteInfo<void> {
  const AddMemberRoute({List<_i39.PageRouteInfo>? children})
      : super(
          AddMemberRoute.name,
          initialChildren: children,
        );

  static const String name = 'AddMemberRoute';

  static _i39.PageInfo page = _i39.PageInfo(
    name,
    builder: (data) {
      return _i39.WrappedRoute(child: const _i1.AddMemberScreen());
    },
  );
}

/// generated route for
/// [_i2.ClubShellScreen]
class ClubShellRoute extends _i39.PageRouteInfo<ClubShellRouteArgs> {
  ClubShellRoute({
    _i40.Key? key,
    required int id,
    List<_i39.PageRouteInfo>? children,
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

  static _i39.PageInfo page = _i39.PageInfo(
    name,
    builder: (data) {
      final pathParams = data.inheritedPathParams;
      final args = data.argsAs<ClubShellRouteArgs>(
          orElse: () => ClubShellRouteArgs(id: pathParams.getInt('id')));
      return _i39.WrappedRoute(
          child: _i2.ClubShellScreen(
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

  final _i40.Key? key;

  final int id;

  @override
  String toString() {
    return 'ClubShellRouteArgs{key: $key, id: $id}';
  }
}

/// generated route for
/// [_i3.DashboardScreen]
class DashboardRoute extends _i39.PageRouteInfo<void> {
  const DashboardRoute({List<_i39.PageRouteInfo>? children})
      : super(
          DashboardRoute.name,
          initialChildren: children,
        );

  static const String name = 'DashboardRoute';

  static _i39.PageInfo page = _i39.PageInfo(
    name,
    builder: (data) {
      return _i39.WrappedRoute(child: const _i3.DashboardScreen());
    },
  );
}

/// generated route for
/// [_i4.DetailClubScreen]
class DetailClubRoute extends _i39.PageRouteInfo<void> {
  const DetailClubRoute({List<_i39.PageRouteInfo>? children})
      : super(
          DetailClubRoute.name,
          initialChildren: children,
        );

  static const String name = 'DetailClubRoute';

  static _i39.PageInfo page = _i39.PageInfo(
    name,
    builder: (data) {
      return const _i4.DetailClubScreen();
    },
  );
}

/// generated route for
/// [_i5.DetailEvaluationScreen]
class DetailEvaluationRoute
    extends _i39.PageRouteInfo<DetailEvaluationRouteArgs> {
  DetailEvaluationRoute({
    _i40.Key? key,
    required int id,
    List<_i39.PageRouteInfo>? children,
  }) : super(
          DetailEvaluationRoute.name,
          args: DetailEvaluationRouteArgs(
            key: key,
            id: id,
          ),
          rawPathParams: {'id': id},
          initialChildren: children,
        );

  static const String name = 'DetailEvaluationRoute';

  static _i39.PageInfo page = _i39.PageInfo(
    name,
    builder: (data) {
      final pathParams = data.inheritedPathParams;
      final args = data.argsAs<DetailEvaluationRouteArgs>(
          orElse: () => DetailEvaluationRouteArgs(id: pathParams.getInt('id')));
      return _i5.DetailEvaluationScreen(
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

  final _i40.Key? key;

  final int id;

  @override
  String toString() {
    return 'DetailEvaluationRouteArgs{key: $key, id: $id}';
  }
}

/// generated route for
/// [_i6.DetailExamScreen]
class DetailExamRoute extends _i39.PageRouteInfo<DetailExamRouteArgs> {
  DetailExamRoute({
    _i40.Key? key,
    required int id,
    List<_i39.PageRouteInfo>? children,
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

  static _i39.PageInfo page = _i39.PageInfo(
    name,
    builder: (data) {
      final pathParams = data.inheritedPathParams;
      final args = data.argsAs<DetailExamRouteArgs>(
          orElse: () => DetailExamRouteArgs(id: pathParams.getInt('id')));
      return _i39.WrappedRoute(
          child: _i6.DetailExamScreen(
        key: args.key,
        id: args.id,
      ));
    },
  );
}

class DetailExamRouteArgs {
  const DetailExamRouteArgs({
    this.key,
    required this.id,
  });

  final _i40.Key? key;

  final int id;

  @override
  String toString() {
    return 'DetailExamRouteArgs{key: $key, id: $id}';
  }
}

/// generated route for
/// [_i7.DetailExerciseScreen]
class DetailExerciseRoute extends _i39.PageRouteInfo<void> {
  const DetailExerciseRoute({List<_i39.PageRouteInfo>? children})
      : super(
          DetailExerciseRoute.name,
          initialChildren: children,
        );

  static const String name = 'DetailExerciseRoute';

  static _i39.PageInfo page = _i39.PageInfo(
    name,
    builder: (data) {
      return const _i7.DetailExerciseScreen();
    },
  );
}

/// generated route for
/// [_i8.DetailProgramScreen]
class DetailProgramRoute extends _i39.PageRouteInfo<DetailProgramRouteArgs> {
  DetailProgramRoute({
    _i40.Key? key,
    required int id,
    List<_i39.PageRouteInfo>? children,
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

  static _i39.PageInfo page = _i39.PageInfo(
    name,
    builder: (data) {
      final pathParams = data.inheritedPathParams;
      final args = data.argsAs<DetailProgramRouteArgs>(
          orElse: () => DetailProgramRouteArgs(id: pathParams.getInt('id')));
      return _i39.WrappedRoute(
          child: _i8.DetailProgramScreen(
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

  final _i40.Key? key;

  final int id;

  @override
  String toString() {
    return 'DetailProgramRouteArgs{key: $key, id: $id}';
  }
}

/// generated route for
/// [_i9.DetailQuestionScreen]
class DetailQuestionRoute extends _i39.PageRouteInfo<DetailQuestionRouteArgs> {
  DetailQuestionRoute({
    _i40.Key? key,
    required int id,
    List<_i39.PageRouteInfo>? children,
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

  static _i39.PageInfo page = _i39.PageInfo(
    name,
    builder: (data) {
      final pathParams = data.inheritedPathParams;
      final args = data.argsAs<DetailQuestionRouteArgs>(
          orElse: () => DetailQuestionRouteArgs(id: pathParams.getInt('id')));
      return _i9.DetailQuestionScreen(
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

  final _i40.Key? key;

  final int id;

  @override
  String toString() {
    return 'DetailQuestionRouteArgs{key: $key, id: $id}';
  }
}

/// generated route for
/// [_i10.DetailTacticalScreen]
class DetailTacticalRoute extends _i39.PageRouteInfo<DetailTacticalRouteArgs> {
  DetailTacticalRoute({
    _i40.Key? key,
    required int id,
    List<_i39.PageRouteInfo>? children,
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

  static _i39.PageInfo page = _i39.PageInfo(
    name,
    builder: (data) {
      final pathParams = data.inheritedPathParams;
      final args = data.argsAs<DetailTacticalRouteArgs>(
          orElse: () => DetailTacticalRouteArgs(id: pathParams.getInt('id')));
      return _i10.DetailTacticalScreen(
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

  final _i40.Key? key;

  final int id;

  @override
  String toString() {
    return 'DetailTacticalRouteArgs{key: $key, id: $id}';
  }
}

/// generated route for
/// [_i11.EvaluationShellScreen]
class EvaluationShellRoute extends _i39.PageRouteInfo<void> {
  const EvaluationShellRoute({List<_i39.PageRouteInfo>? children})
      : super(
          EvaluationShellRoute.name,
          initialChildren: children,
        );

  static const String name = 'EvaluationShellRoute';

  static _i39.PageInfo page = _i39.PageInfo(
    name,
    builder: (data) {
      return const _i11.EvaluationShellScreen();
    },
  );
}

/// generated route for
/// [_i12.ExamShellScreen]
class ExamShellRoute extends _i39.PageRouteInfo<void> {
  const ExamShellRoute({List<_i39.PageRouteInfo>? children})
      : super(
          ExamShellRoute.name,
          initialChildren: children,
        );

  static const String name = 'ExamShellRoute';

  static _i39.PageInfo page = _i39.PageInfo(
    name,
    builder: (data) {
      return const _i12.ExamShellScreen();
    },
  );
}

/// generated route for
/// [_i13.ExerciseShellScreen]
class ExerciseShellRoute extends _i39.PageRouteInfo<void> {
  const ExerciseShellRoute({List<_i39.PageRouteInfo>? children})
      : super(
          ExerciseShellRoute.name,
          initialChildren: children,
        );

  static const String name = 'ExerciseShellRoute';

  static _i39.PageInfo page = _i39.PageInfo(
    name,
    builder: (data) {
      return const _i13.ExerciseShellScreen();
    },
  );
}

/// generated route for
/// [_i14.ListClubScreen]
class ListClubRoute extends _i39.PageRouteInfo<void> {
  const ListClubRoute({List<_i39.PageRouteInfo>? children})
      : super(
          ListClubRoute.name,
          initialChildren: children,
        );

  static const String name = 'ListClubRoute';

  static _i39.PageInfo page = _i39.PageInfo(
    name,
    builder: (data) {
      return const _i14.ListClubScreen();
    },
  );
}

/// generated route for
/// [_i15.ListEvaluationScreen]
class ListEvaluationRoute extends _i39.PageRouteInfo<void> {
  const ListEvaluationRoute({List<_i39.PageRouteInfo>? children})
      : super(
          ListEvaluationRoute.name,
          initialChildren: children,
        );

  static const String name = 'ListEvaluationRoute';

  static _i39.PageInfo page = _i39.PageInfo(
    name,
    builder: (data) {
      return const _i15.ListEvaluationScreen();
    },
  );
}

/// generated route for
/// [_i16.ListExamScreen]
class ListExamRoute extends _i39.PageRouteInfo<void> {
  const ListExamRoute({List<_i39.PageRouteInfo>? children})
      : super(
          ListExamRoute.name,
          initialChildren: children,
        );

  static const String name = 'ListExamRoute';

  static _i39.PageInfo page = _i39.PageInfo(
    name,
    builder: (data) {
      return const _i16.ListExamScreen();
    },
  );
}

/// generated route for
/// [_i17.ListExerciseScreen]
class ListExerciseRoute extends _i39.PageRouteInfo<void> {
  const ListExerciseRoute({List<_i39.PageRouteInfo>? children})
      : super(
          ListExerciseRoute.name,
          initialChildren: children,
        );

  static const String name = 'ListExerciseRoute';

  static _i39.PageInfo page = _i39.PageInfo(
    name,
    builder: (data) {
      return const _i17.ListExerciseScreen();
    },
  );
}

/// generated route for
/// [_i18.ListProgramScreen]
class ListProgramRoute extends _i39.PageRouteInfo<void> {
  const ListProgramRoute({List<_i39.PageRouteInfo>? children})
      : super(
          ListProgramRoute.name,
          initialChildren: children,
        );

  static const String name = 'ListProgramRoute';

  static _i39.PageInfo page = _i39.PageInfo(
    name,
    builder: (data) {
      return const _i18.ListProgramScreen();
    },
  );
}

/// generated route for
/// [_i19.ListQuestionScreen]
class ListQuestionRoute extends _i39.PageRouteInfo<void> {
  const ListQuestionRoute({List<_i39.PageRouteInfo>? children})
      : super(
          ListQuestionRoute.name,
          initialChildren: children,
        );

  static const String name = 'ListQuestionRoute';

  static _i39.PageInfo page = _i39.PageInfo(
    name,
    builder: (data) {
      return const _i19.ListQuestionScreen();
    },
  );
}

/// generated route for
/// [_i20.ListTacticalScreen]
class ListTacticalRoute extends _i39.PageRouteInfo<void> {
  const ListTacticalRoute({List<_i39.PageRouteInfo>? children})
      : super(
          ListTacticalRoute.name,
          initialChildren: children,
        );

  static const String name = 'ListTacticalRoute';

  static _i39.PageInfo page = _i39.PageInfo(
    name,
    builder: (data) {
      return const _i20.ListTacticalScreen();
    },
  );
}

/// generated route for
/// [_i21.MediaScreen]
class MediaRoute extends _i39.PageRouteInfo<void> {
  const MediaRoute({List<_i39.PageRouteInfo>? children})
      : super(
          MediaRoute.name,
          initialChildren: children,
        );

  static const String name = 'MediaRoute';

  static _i39.PageInfo page = _i39.PageInfo(
    name,
    builder: (data) {
      return _i39.WrappedRoute(child: const _i21.MediaScreen());
    },
  );
}

/// generated route for
/// [_i22.ProfileScreen]
class ProfileRoute extends _i39.PageRouteInfo<void> {
  const ProfileRoute({List<_i39.PageRouteInfo>? children})
      : super(
          ProfileRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProfileRoute';

  static _i39.PageInfo page = _i39.PageInfo(
    name,
    builder: (data) {
      return const _i22.ProfileScreen();
    },
  );
}

/// generated route for
/// [_i23.ProgramShellScreen]
class ProgramShellRoute extends _i39.PageRouteInfo<void> {
  const ProgramShellRoute({List<_i39.PageRouteInfo>? children})
      : super(
          ProgramShellRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProgramShellRoute';

  static _i39.PageInfo page = _i39.PageInfo(
    name,
    builder: (data) {
      return const _i23.ProgramShellScreen();
    },
  );
}

/// generated route for
/// [_i24.QuestionShellScreen]
class QuestionShellRoute extends _i39.PageRouteInfo<void> {
  const QuestionShellRoute({List<_i39.PageRouteInfo>? children})
      : super(
          QuestionShellRoute.name,
          initialChildren: children,
        );

  static const String name = 'QuestionShellRoute';

  static _i39.PageInfo page = _i39.PageInfo(
    name,
    builder: (data) {
      return const _i24.QuestionShellScreen();
    },
  );
}

/// generated route for
/// [_i25.SignInScreen]
class SignInRoute extends _i39.PageRouteInfo<void> {
  const SignInRoute({List<_i39.PageRouteInfo>? children})
      : super(
          SignInRoute.name,
          initialChildren: children,
        );

  static const String name = 'SignInRoute';

  static _i39.PageInfo page = _i39.PageInfo(
    name,
    builder: (data) {
      return const _i25.SignInScreen();
    },
  );
}

/// generated route for
/// [_i26.SignUpScreen]
class SignUpRoute extends _i39.PageRouteInfo<void> {
  const SignUpRoute({List<_i39.PageRouteInfo>? children})
      : super(
          SignUpRoute.name,
          initialChildren: children,
        );

  static const String name = 'SignUpRoute';

  static _i39.PageInfo page = _i39.PageInfo(
    name,
    builder: (data) {
      return const _i26.SignUpScreen();
    },
  );
}

/// generated route for
/// [_i27.SplashScreen]
class SplashRoute extends _i39.PageRouteInfo<void> {
  const SplashRoute({List<_i39.PageRouteInfo>? children})
      : super(
          SplashRoute.name,
          initialChildren: children,
        );

  static const String name = 'SplashRoute';

  static _i39.PageInfo page = _i39.PageInfo(
    name,
    builder: (data) {
      return _i39.WrappedRoute(child: const _i27.SplashScreen());
    },
  );
}

/// generated route for
/// [_i28.StrategyShellScreen]
class StrategyShellRoute extends _i39.PageRouteInfo<void> {
  const StrategyShellRoute({List<_i39.PageRouteInfo>? children})
      : super(
          StrategyShellRoute.name,
          initialChildren: children,
        );

  static const String name = 'StrategyShellRoute';

  static _i39.PageInfo page = _i39.PageInfo(
    name,
    builder: (data) {
      return const _i28.StrategyShellScreen();
    },
  );
}

/// generated route for
/// [_i29.TacticalShellScreen]
class TacticalShellRoute extends _i39.PageRouteInfo<void> {
  const TacticalShellRoute({List<_i39.PageRouteInfo>? children})
      : super(
          TacticalShellRoute.name,
          initialChildren: children,
        );

  static const String name = 'TacticalShellRoute';

  static _i39.PageInfo page = _i39.PageInfo(
    name,
    builder: (data) {
      return const _i29.TacticalShellScreen();
    },
  );
}

/// generated route for
/// [_i30.UpdateProfileScreen]
class UpdateProfileRoute extends _i39.PageRouteInfo<void> {
  const UpdateProfileRoute({List<_i39.PageRouteInfo>? children})
      : super(
          UpdateProfileRoute.name,
          initialChildren: children,
        );

  static const String name = 'UpdateProfileRoute';

  static _i39.PageInfo page = _i39.PageInfo(
    name,
    builder: (data) {
      return const _i30.UpdateProfileScreen();
    },
  );
}

/// generated route for
/// [_i31.UpdateStrategyScreen]
class UpdateStrategyRoute extends _i39.PageRouteInfo<UpdateStrategyRouteArgs> {
  UpdateStrategyRoute({
    _i40.Key? key,
    double screenWidth = 0,
    List<_i39.PageRouteInfo>? children,
  }) : super(
          UpdateStrategyRoute.name,
          args: UpdateStrategyRouteArgs(
            key: key,
            screenWidth: screenWidth,
          ),
          rawQueryParams: {'screenWidth': screenWidth},
          initialChildren: children,
        );

  static const String name = 'UpdateStrategyRoute';

  static _i39.PageInfo page = _i39.PageInfo(
    name,
    builder: (data) {
      final queryParams = data.queryParams;
      final args = data.argsAs<UpdateStrategyRouteArgs>(
          orElse: () => UpdateStrategyRouteArgs(
                  screenWidth: queryParams.getDouble(
                'screenWidth',
                0,
              )));
      return _i31.UpdateStrategyScreen(
        key: args.key,
        screenWidth: args.screenWidth,
      );
    },
  );
}

class UpdateStrategyRouteArgs {
  const UpdateStrategyRouteArgs({
    this.key,
    this.screenWidth = 0,
  });

  final _i40.Key? key;

  final double screenWidth;

  @override
  String toString() {
    return 'UpdateStrategyRouteArgs{key: $key, screenWidth: $screenWidth}';
  }
}

/// generated route for
/// [_i32.UpsertClubScreen]
class UpsertClubRoute extends _i39.PageRouteInfo<UpsertClubRouteArgs> {
  UpsertClubRoute({
    _i40.Key? key,
    required void Function(_i41.ClubModel) onUpserted,
    List<_i39.PageRouteInfo>? children,
  }) : super(
          UpsertClubRoute.name,
          args: UpsertClubRouteArgs(
            key: key,
            onUpserted: onUpserted,
          ),
          initialChildren: children,
        );

  static const String name = 'UpsertClubRoute';

  static _i39.PageInfo page = _i39.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<UpsertClubRouteArgs>();
      return _i39.WrappedRoute(
          child: _i32.UpsertClubScreen(
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

  final _i40.Key? key;

  final void Function(_i41.ClubModel) onUpserted;

  @override
  String toString() {
    return 'UpsertClubRouteArgs{key: $key, onUpserted: $onUpserted}';
  }
}

/// generated route for
/// [_i33.UpsertEvaluationScreen]
class UpsertEvaluationRoute extends _i39.PageRouteInfo<void> {
  const UpsertEvaluationRoute({List<_i39.PageRouteInfo>? children})
      : super(
          UpsertEvaluationRoute.name,
          initialChildren: children,
        );

  static const String name = 'UpsertEvaluationRoute';

  static _i39.PageInfo page = _i39.PageInfo(
    name,
    builder: (data) {
      return const _i33.UpsertEvaluationScreen();
    },
  );
}

/// generated route for
/// [_i34.UpsertExamScreen]
class UpsertExamRoute extends _i39.PageRouteInfo<void> {
  const UpsertExamRoute({List<_i39.PageRouteInfo>? children})
      : super(
          UpsertExamRoute.name,
          initialChildren: children,
        );

  static const String name = 'UpsertExamRoute';

  static _i39.PageInfo page = _i39.PageInfo(
    name,
    builder: (data) {
      return _i39.WrappedRoute(child: const _i34.UpsertExamScreen());
    },
  );
}

/// generated route for
/// [_i35.UpsertExerciseScreen]
class UpsertExerciseRoute extends _i39.PageRouteInfo<void> {
  const UpsertExerciseRoute({List<_i39.PageRouteInfo>? children})
      : super(
          UpsertExerciseRoute.name,
          initialChildren: children,
        );

  static const String name = 'UpsertExerciseRoute';

  static _i39.PageInfo page = _i39.PageInfo(
    name,
    builder: (data) {
      return const _i35.UpsertExerciseScreen();
    },
  );
}

/// generated route for
/// [_i36.UpsertProgramScreen]
class UpsertProgramRoute extends _i39.PageRouteInfo<void> {
  const UpsertProgramRoute({List<_i39.PageRouteInfo>? children})
      : super(
          UpsertProgramRoute.name,
          initialChildren: children,
        );

  static const String name = 'UpsertProgramRoute';

  static _i39.PageInfo page = _i39.PageInfo(
    name,
    builder: (data) {
      return _i39.WrappedRoute(child: const _i36.UpsertProgramScreen());
    },
  );
}

/// generated route for
/// [_i37.UpsertQuestionScreen]
class UpsertQuestionRoute extends _i39.PageRouteInfo<void> {
  const UpsertQuestionRoute({List<_i39.PageRouteInfo>? children})
      : super(
          UpsertQuestionRoute.name,
          initialChildren: children,
        );

  static const String name = 'UpsertQuestionRoute';

  static _i39.PageInfo page = _i39.PageInfo(
    name,
    builder: (data) {
      return const _i37.UpsertQuestionScreen();
    },
  );
}

/// generated route for
/// [_i38.UpsertTacticalScreen]
class UpsertTacticalRoute extends _i39.PageRouteInfo<void> {
  const UpsertTacticalRoute({List<_i39.PageRouteInfo>? children})
      : super(
          UpsertTacticalRoute.name,
          initialChildren: children,
        );

  static const String name = 'UpsertTacticalRoute';

  static _i39.PageInfo page = _i39.PageInfo(
    name,
    builder: (data) {
      return _i39.WrappedRoute(child: const _i38.UpsertTacticalScreen());
    },
  );
}
