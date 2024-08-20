// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cache_notifications_usecase.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CacheNotificationsParams {
  NotificationDataModel get notification => throw _privateConstructorUsedError;

  /// Create a copy of CacheNotificationsParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CacheNotificationsParamsCopyWith<CacheNotificationsParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CacheNotificationsParamsCopyWith<$Res> {
  factory $CacheNotificationsParamsCopyWith(CacheNotificationsParams value,
          $Res Function(CacheNotificationsParams) then) =
      _$CacheNotificationsParamsCopyWithImpl<$Res, CacheNotificationsParams>;
  @useResult
  $Res call({NotificationDataModel notification});

  $NotificationDataModelCopyWith<$Res> get notification;
}

/// @nodoc
class _$CacheNotificationsParamsCopyWithImpl<$Res,
        $Val extends CacheNotificationsParams>
    implements $CacheNotificationsParamsCopyWith<$Res> {
  _$CacheNotificationsParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CacheNotificationsParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? notification = null,
  }) {
    return _then(_value.copyWith(
      notification: null == notification
          ? _value.notification
          : notification // ignore: cast_nullable_to_non_nullable
              as NotificationDataModel,
    ) as $Val);
  }

  /// Create a copy of CacheNotificationsParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $NotificationDataModelCopyWith<$Res> get notification {
    return $NotificationDataModelCopyWith<$Res>(_value.notification, (value) {
      return _then(_value.copyWith(notification: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CacheNotificationsParamsImplCopyWith<$Res>
    implements $CacheNotificationsParamsCopyWith<$Res> {
  factory _$$CacheNotificationsParamsImplCopyWith(
          _$CacheNotificationsParamsImpl value,
          $Res Function(_$CacheNotificationsParamsImpl) then) =
      __$$CacheNotificationsParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({NotificationDataModel notification});

  @override
  $NotificationDataModelCopyWith<$Res> get notification;
}

/// @nodoc
class __$$CacheNotificationsParamsImplCopyWithImpl<$Res>
    extends _$CacheNotificationsParamsCopyWithImpl<$Res,
        _$CacheNotificationsParamsImpl>
    implements _$$CacheNotificationsParamsImplCopyWith<$Res> {
  __$$CacheNotificationsParamsImplCopyWithImpl(
      _$CacheNotificationsParamsImpl _value,
      $Res Function(_$CacheNotificationsParamsImpl) _then)
      : super(_value, _then);

  /// Create a copy of CacheNotificationsParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? notification = null,
  }) {
    return _then(_$CacheNotificationsParamsImpl(
      notification: null == notification
          ? _value.notification
          : notification // ignore: cast_nullable_to_non_nullable
              as NotificationDataModel,
    ));
  }
}

/// @nodoc

class _$CacheNotificationsParamsImpl implements _CacheNotificationsParams {
  const _$CacheNotificationsParamsImpl({required this.notification});

  @override
  final NotificationDataModel notification;

  @override
  String toString() {
    return 'CacheNotificationsParams(notification: $notification)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CacheNotificationsParamsImpl &&
            (identical(other.notification, notification) ||
                other.notification == notification));
  }

  @override
  int get hashCode => Object.hash(runtimeType, notification);

  /// Create a copy of CacheNotificationsParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CacheNotificationsParamsImplCopyWith<_$CacheNotificationsParamsImpl>
      get copyWith => __$$CacheNotificationsParamsImplCopyWithImpl<
          _$CacheNotificationsParamsImpl>(this, _$identity);
}

abstract class _CacheNotificationsParams implements CacheNotificationsParams {
  const factory _CacheNotificationsParams(
          {required final NotificationDataModel notification}) =
      _$CacheNotificationsParamsImpl;

  @override
  NotificationDataModel get notification;

  /// Create a copy of CacheNotificationsParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CacheNotificationsParamsImplCopyWith<_$CacheNotificationsParamsImpl>
      get copyWith => throw _privateConstructorUsedError;
}
