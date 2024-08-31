// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notification_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

NotificationDataModel _$NotificationDataModelFromJson(
    Map<String, dynamic> json) {
  return _NotificationDataModel.fromJson(json);
}

/// @nodoc
mixin _$NotificationDataModel {
  String? get title => throw _privateConstructorUsedError;
  String? get body => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;
  @JsonKey(name: 'id')
  String? get uid => throw _privateConstructorUsedError;

  /// Serializes this NotificationDataModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of NotificationDataModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NotificationDataModelCopyWith<NotificationDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationDataModelCopyWith<$Res> {
  factory $NotificationDataModelCopyWith(NotificationDataModel value,
          $Res Function(NotificationDataModel) then) =
      _$NotificationDataModelCopyWithImpl<$Res, NotificationDataModel>;
  @useResult
  $Res call(
      {String? title,
      String? body,
      String? type,
      @JsonKey(name: 'id') String? uid});
}

/// @nodoc
class _$NotificationDataModelCopyWithImpl<$Res,
        $Val extends NotificationDataModel>
    implements $NotificationDataModelCopyWith<$Res> {
  _$NotificationDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NotificationDataModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? body = freezed,
    Object? type = freezed,
    Object? uid = freezed,
  }) {
    return _then(_value.copyWith(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      body: freezed == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      uid: freezed == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NotificationDataModelImplCopyWith<$Res>
    implements $NotificationDataModelCopyWith<$Res> {
  factory _$$NotificationDataModelImplCopyWith(
          _$NotificationDataModelImpl value,
          $Res Function(_$NotificationDataModelImpl) then) =
      __$$NotificationDataModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? title,
      String? body,
      String? type,
      @JsonKey(name: 'id') String? uid});
}

/// @nodoc
class __$$NotificationDataModelImplCopyWithImpl<$Res>
    extends _$NotificationDataModelCopyWithImpl<$Res,
        _$NotificationDataModelImpl>
    implements _$$NotificationDataModelImplCopyWith<$Res> {
  __$$NotificationDataModelImplCopyWithImpl(_$NotificationDataModelImpl _value,
      $Res Function(_$NotificationDataModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of NotificationDataModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? body = freezed,
    Object? type = freezed,
    Object? uid = freezed,
  }) {
    return _then(_$NotificationDataModelImpl(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      body: freezed == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      uid: freezed == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NotificationDataModelImpl extends _NotificationDataModel {
  const _$NotificationDataModelImpl(
      {this.title, this.body, this.type, @JsonKey(name: 'id') this.uid})
      : super._();

  factory _$NotificationDataModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$NotificationDataModelImplFromJson(json);

  @override
  final String? title;
  @override
  final String? body;
  @override
  final String? type;
  @override
  @JsonKey(name: 'id')
  final String? uid;

  @override
  String toString() {
    return 'NotificationDataModel(title: $title, body: $body, type: $type, uid: $uid)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotificationDataModelImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.body, body) || other.body == body) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.uid, uid) || other.uid == uid));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, title, body, type, uid);

  /// Create a copy of NotificationDataModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NotificationDataModelImplCopyWith<_$NotificationDataModelImpl>
      get copyWith => __$$NotificationDataModelImplCopyWithImpl<
          _$NotificationDataModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NotificationDataModelImplToJson(
      this,
    );
  }
}

abstract class _NotificationDataModel extends NotificationDataModel {
  const factory _NotificationDataModel(
      {final String? title,
      final String? body,
      final String? type,
      @JsonKey(name: 'id') final String? uid}) = _$NotificationDataModelImpl;
  const _NotificationDataModel._() : super._();

  factory _NotificationDataModel.fromJson(Map<String, dynamic> json) =
      _$NotificationDataModelImpl.fromJson;

  @override
  String? get title;
  @override
  String? get body;
  @override
  String? get type;
  @override
  @JsonKey(name: 'id')
  String? get uid;

  /// Create a copy of NotificationDataModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NotificationDataModelImplCopyWith<_$NotificationDataModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
