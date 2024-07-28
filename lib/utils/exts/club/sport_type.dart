import 'package:dot_coaching/feats/feats.dart';

extension SportTypeX on SportType {
  String get name {
    switch (this) {
      case SportType.volleyBall:
        return 'Volleyball';
      case SportType.basketBall:
        return 'Basketball';
      case SportType.soccer:
        return 'Soccer';
      case SportType.futsal:
        return 'Futsal';
      case SportType.handBall:
        return 'Handball';
    }
  }

  String get value {
    switch (this) {
      case SportType.volleyBall:
        return 'volleyBall';
      case SportType.basketBall:
        return 'basketBall';
      case SportType.soccer:
        return 'soccer';
      case SportType.futsal:
        return 'futsal';
      case SportType.handBall:
        return 'handBall';
    }
  }
}
