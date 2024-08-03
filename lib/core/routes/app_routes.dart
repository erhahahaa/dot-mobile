import 'package:dot_navigation_bar/dot_navigation_bar.dart';
import 'package:flutter/material.dart';

enum AppRoutes {
  root("/"),
  splash('/splash'),
  // Auth
  authSignIn('/auth/sign-in'),
  authSignUp('/auth/sign-up'),
  authMe('/auth/me'),

  // Athlete Home
  athleteHome('/home'),

  // Athlete Club
  athleteClubDetail('/home/club/:id'),
  athleteClubMember('/home/club/member/:clubId'),

  // Athlete Tactical
  athleteTactical('/tactical'),
  athleteTacticalDetail('/tactical/:id'),

  // Athlete Exam
  athleteExam('/exam'),
  athleteExamDetail('/exam/:id'),

  // Athlete Profile
  athleteProfile('/profile'),
  athleteEditProfile('/profile/edit'),

  // Coach Dashboard
  coachDashboard('/coach/club'),
  coachCreateClub('/coach/club/create'),
  coachEditClub('/coach/club/edit'),
  coachClubDetail('/coach/club/:id'),
  coachClubMember('/coach/club/member/:clubId'),
  coachAddMember('/coach/club/invite/:clubId'),

  // Coach Program
  coachProgram('/coach/program'),
  coachProgramDetail('/coach/program/:id'),
  coachCreateProgram('/coach/program/create'),
  coachEditProgram('/coach/program/edit'),
  coachCreateProgramExercise('/coach/program/exercise/create'),
  coachEditProgramExercise('/coach/program/exercise/edit'),

  // Coach Exam
  coachExam('/coach/exam'),
  coachExamDetail('/coach/exam/:id'),
  coachCreateExam('/coach/exam/create'),
  coachEditExam('/coach/exam/edit'),
  coachCreateExamQuestion('/coach/exam/question/create'),
  coachEditExamQuestion('/coach/exam/question/edit'),

  // Coach Tactical
  coachTactical('/coach/tactical'),
  coachTacticalDetail('/coach/tactical/:id'),
  coachCreateTactical('/coach/tactical/create'),
  coachEditTactical('/coach/tactical/edit'),
  coachStrategyForm('/coach/tactical/strategy'),

  // Coach History
  coachHistory('/coach/history'),
  coachHistoryDetail('/coach/history/:id'),

  // Coach Media
  coachMedia('/coach/media');

  // Coach Profile
  // coachProfile('/coach/profile');

  const AppRoutes(this.path);
  final String path;
}

class NavRoutes {
  static final athleteRoutes = <DotNavigationBarItem>[
    DotNavigationBarItem(icon: const Icon(Icons.home)),
    DotNavigationBarItem(icon: const Icon(Icons.videogame_asset_rounded)),
    DotNavigationBarItem(icon: const Icon(Icons.directions_run_rounded)),
    DotNavigationBarItem(icon: const Icon(Icons.person)),
  ];

  static final coachRoutes = <DotNavigationBarItem>[
    DotNavigationBarItem(icon: const Icon(Icons.home)),
    DotNavigationBarItem(icon: const Icon(Icons.post_add_rounded)),
    DotNavigationBarItem(icon: const Icon(Icons.videogame_asset_rounded)),
    DotNavigationBarItem(icon: const Icon(Icons.directions_run_rounded)),
    DotNavigationBarItem(icon: const Icon(Icons.person)),
  ];
}
