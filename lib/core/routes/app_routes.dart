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
  athleteProgram('/home/program'),
  athleteProgramDetail('/home/program/:id'),

  // Athlete Tactical
  athleteTactical('/tactical'),
  athleteTacticalDetail('/tactical/:id'),

  // Athlete History
  athleteHistory('/history'),
  athleteHistoryDetail('/history/:id'),

  // Athlete Profile
  athleteProfile('/profile'),

  // Coach Dashboard
  coachDashboard('/coach/club'),
  coachCreateClub('/coach/club/create'),
  coachClubDetail('/coach/club/:id'),

  // Coach Program
  coachProgram('/coach/program'),
  coachCreateProgram('/coach/program/create'),
  coachProgramDetail('/coach/program/:id'),

  // Coach Tactical
  coachTactical('/coach/tactical'),
  coachTacticalDetail('/coach/tactical/:id'),

  // Coach History
  coachHistory('/coach/history'),
  coachHistoryDetail('/coach/history/:id'),

  // Coach Profile
  coachProfile('/coach/profile');

  const AppRoutes(this.path);
  final String path;
}

class NavRoutes {
  static final athleteRoutes = <DotNavigationBarItem>[
    DotNavigationBarItem(
      icon: const Icon(Icons.home),
    ),
    DotNavigationBarItem(
      icon: const Icon(Icons.videogame_asset_rounded),
    ),
    DotNavigationBarItem(
      icon: const Icon(Icons.directions_run_rounded),
    ),
    DotNavigationBarItem(
      icon: const Icon(Icons.person),
    ),
  ];

  static final coachRoutes = <DotNavigationBarItem>[
    DotNavigationBarItem(
      icon: const Icon(Icons.home),
    ),
    DotNavigationBarItem(
      icon: const Icon(Icons.post_add_rounded),
    ),
    DotNavigationBarItem(
      icon: const Icon(Icons.videogame_asset_rounded),
    ),
    DotNavigationBarItem(
      icon: const Icon(Icons.directions_run_rounded),
    ),
    DotNavigationBarItem(
      icon: const Icon(Icons.person),
    ),
  ];
}
