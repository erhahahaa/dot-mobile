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
}
