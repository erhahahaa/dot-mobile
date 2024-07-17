import 'package:dot_coaching/feats/feats.dart';
import 'package:flutter/foundation.dart';
import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';

class IsarClient {
  late Isar _isar;
  IsarCollection<UserEntity> get users => _isar.userEntitys;
  Isar get isar => _isar;

  IsarClient();

  Future<void> initIsar() async {
    if (Isar.getInstance() == null) {
      final dir = await getApplicationDocumentsDirectory();
      _isar = await Isar.open(
        [
          UserEntitySchema,
        ],
        inspector: kDebugMode,
        directory: dir.path,
      );
    } else {
      _isar = Isar.getInstance()!;
    }
  }
}
