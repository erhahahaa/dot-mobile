import 'package:dot_coaching/feats/feats.dart';

extension SportTypeX on SportType {
  String get name {
    switch (this) {
      case SportType.volleyBall:
        return 'Volley Ball';
      case SportType.basketBall:
        return 'Basket Ball';
      case SportType.soccer:
        return 'Soccer';
      case SportType.miniSoccer:
        return 'Mini Soccer';
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
      case SportType.miniSoccer:
        return 'miniSoccer';
      case SportType.handBall:
        return 'handBall';
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
    }
  }
}
