import 'package:isar/isar.dart';

part 'notification_data_entity.g.dart';

@collection
class NotificationDataEntity {
  Id id = Isar.autoIncrement;
  @Index(type: IndexType.value)
  String? uid;

  String? title;
  String? body;
  String? type;
  NotificationDataEntity({
    this.uid,
    this.title,
    this.body,
    this.type,
  });
}
