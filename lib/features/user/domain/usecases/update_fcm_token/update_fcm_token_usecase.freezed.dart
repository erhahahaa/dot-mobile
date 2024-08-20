// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_fcm_token_usecase.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UpdateFCMTokenParams _$UpdateFCMTokenParamsFromJson(Map<String, dynamic> json) {
  return _UpdateFCMTokenParams.fromJson(json);
}

/// @nodoc
mixin _$UpdateFCMTokenParams {
  String get fcmToken => throw _privateConstructorUsedError;

  /// Serializes this UpdateFCMTokenParams to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UpdateFCMTokenParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UpdateFCMTokenParamsCopyWith<UpdateFCMTokenParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateFCMTokenParamsCopyWith<$Res> {
  factory $UpdateFCMTokenParamsCopyWith(UpdateFCMTokenParams value,
          $Res Function(UpdateFCMTokenParams) then) =
      _$UpdateFCMTokenParamsCopyWithImpl<$Res, UpdateFCMTokenParams>;
  @useResult
  $Res call({String fcmToken});
}

/// @nodoc
class _$UpdateFCMTokenParamsCopyWithImpl<$Res,
        $Val extends UpdateFCMTokenParams>
    implements $UpdateFCMTokenParamsCopyWith<$Res> {
  _$UpdateFCMTokenParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UpdateFCMTokenParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fcmToken = null,
  }) {
    return _then(_value.copyWith(
      fcmToken: null == fcmToken
          ? _value.fcmToken
          : fcmToken // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UpdateFCMTokenParamsImplCopyWith<$Res>
    implements $UpdateFCMTokenParamsCopyWith<$Res> {
  factory _$$UpdateFCMTokenParamsImplCopyWith(_$UpdateFCMTokenParamsImpl value,
          $Res Function(_$UpdateFCMTokenParamsImpl) then) =
      __$$UpdateFCMTokenParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String fcmToken});
}

/// @nodoc
class __$$UpdateFCMTokenParamsImplCopyWithImpl<$Res>
    extends _$UpdateFCMTokenParamsCopyWithImpl<$Res, _$UpdateFCMTokenParamsImpl>
    implements _$$UpdateFCMTokenParamsImplCopyWith<$Res> {
  __$$UpdateFCMTokenParamsImplCopyWithImpl(_$UpdateFCMTokenParamsImpl _value,
      $Res Function(_$UpdateFCMTokenParamsImpl) _then)
      : super(_value, _then);

  /// Create a copy of UpdateFCMTokenParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fcmToken = null,
  }) {
    return _then(_$UpdateFCMTokenParamsImpl(
      fcmToken: null == fcmToken
          ? _value.fcmToken
          : fcmToken // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UpdateFCMTokenParamsImpl extends _UpdateFCMTokenParams {
  const _$UpdateFCMTokenParamsImpl({required this.fcmToken}) : super._();

  factory _$UpdateFCMTokenParamsImpl.fromJson(Map<String, dynamic> json) =>
      _$$UpdateFCMTokenParamsImplFromJson(json);

  @override
  final String fcmToken;

  @override
  String toString() {
    return 'UpdateFCMTokenParams(fcmToken: $fcmToken)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateFCMTokenParamsImpl &&
            (identical(other.fcmToken, fcmToken) ||
                other.fcmToken == fcmToken));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, fcmToken);

  /// Create a copy of UpdateFCMTokenParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateFCMTokenParamsImplCopyWith<_$UpdateFCMTokenParamsImpl>
      get copyWith =>
          __$$UpdateFCMTokenParamsImplCopyWithImpl<_$UpdateFCMTokenParamsImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UpdateFCMTokenParamsImplToJson(
      this,
    );
  }
}

abstract class _UpdateFCMTokenParams extends UpdateFCMTokenParams {
  const factory _UpdateFCMTokenParams({required final String fcmToken}) =
      _$UpdateFCMTokenParamsImpl;
  const _UpdateFCMTokenParams._() : super._();

  factory _UpdateFCMTokenParams.fromJson(Map<String, dynamic> json) =
      _$UpdateFCMTokenParamsImpl.fromJson;

  @override
  String get fcmToken;

  /// Create a copy of UpdateFCMTokenParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateFCMTokenParamsImplCopyWith<_$UpdateFCMTokenParamsImpl>
      get copyWith => throw _privateConstructorUsedError;
}
