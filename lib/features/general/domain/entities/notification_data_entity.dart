import 'package:isar/isar.dart';

part 'notification_data_entity.g.dart';

@Collection(accessor: 'notifications')
class NotificationDataEntity {
  int id;
  @Index(unique: true)
  String? uid;

  String? title;
  String? body;
  String? type;
  NotificationDataEntity({
    this.id = 0,
    this.uid,
    this.title,
    this.body,
    this.type,
  });
}
