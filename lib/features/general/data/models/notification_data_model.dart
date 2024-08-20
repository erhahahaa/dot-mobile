import 'package:dot_coaching/features/feature.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'notification_data_model.freezed.dart';
part 'notification_data_model.g.dart';

@freezed
class NotificationDataModel with _$NotificationDataModel {
  const factory NotificationDataModel({
    String? title,
    String? body,
    String? type,
    @JsonKey(name: 'id') String? uid,
  }) = _NotificationDataModel;

  const NotificationDataModel._();

  factory NotificationDataModel.fromJson(Map<String, dynamic> json) =>
      _$NotificationDataModelFromJson(json);

  static NotificationDataModel fromEntity(NotificationDataEntity entity) {
    return NotificationDataModel(
      title: entity.title,
      body: entity.body,
      type: entity.type,
      uid: entity.uid,
    );
  }

  NotificationDataEntity toEntity() {
    return NotificationDataEntity(
      title: title,
      body: body,
      type: type,
      uid: uid,
    );
  }
}
