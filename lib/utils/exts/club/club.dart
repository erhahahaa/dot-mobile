import 'package:dot_coaching/feats/feats.dart';

export 'package:dot_coaching/utils/exts/club/sport_type.dart';

extension ListClubExt on List<ClubModel> {
  int sumTotalMembers() {
    return fold(0, (prev, club) => prev + club.memberCount);
  }

  int sumTotalPrograms() {
    return fold(0, (prev, club) => prev + club.programCount);
  }

  int sumTotalExams() {
    return fold(0, (prev, club) => prev + club.examCount);
  }
}
