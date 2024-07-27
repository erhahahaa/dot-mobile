import 'dart:ui';

import 'package:dot_coaching/core/core.dart';
import 'package:dot_coaching/feats/feats.dart';

extension ListUserExt on List<UserModel> {
  int sumTotalMembers() {
    return fold(0, (prev, user) => prev + 1);
  }

  int sumTotalAthletes() {
    return fold(0, (prev, user) {
      if (user.role == UserRole.athlete) {
        return prev + 1;
      } else {
        return prev;
      }
    });
  }

  int sumTotalCoaches() {
    return fold(0, (prev, user) {
      if (user.role == UserRole.coach) {
        return prev + 1;
      } else {
        return prev;
      }
    });
  }
}

extension UserExt on UserModel {
  bool isAthlete() {
    return role == UserRole.athlete;
  }

  bool isCoach() {
    return role == UserRole.coach;
  }
}

extension UserRoleExt on UserRole {
  Color get color {
    switch (this) {
      case UserRole.coach:
        return Palette.lavenderDark;
      case UserRole.athlete:
        return Palette.sapphireDark;
      default:
        return Palette.shadowDark;
    }
  }
}
