// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_up_usecase.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SignUpParams _$SignUpParamsFromJson(Map<String, dynamic> json) {
  return _SignUpParams.fromJson(json);
}

/// @nodoc
mixin _$SignUpParams {
  String get email => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get username => throw _privateConstructorUsedError;
  int get phone => throw _privateConstructorUsedError;
  UserGender get gender => throw _privateConstructorUsedError;
  UserRole get role => throw _privateConstructorUsedError;
  String? get fcmToken => throw _privateConstructorUsedError;

  /// Serializes this SignUpParams to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SignUpParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SignUpParamsCopyWith<SignUpParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignUpParamsCopyWith<$Res> {
  factory $SignUpParamsCopyWith(
          SignUpParams value, $Res Function(SignUpParams) then) =
      _$SignUpParamsCopyWithImpl<$Res, SignUpParams>;
  @useResult
  $Res call(
      {String email,
      String password,
      String name,
      String username,
      int phone,
      UserGender gender,
      UserRole role,
      String? fcmToken});
}

/// @nodoc
class _$SignUpParamsCopyWithImpl<$Res, $Val extends SignUpParams>
    implements $SignUpParamsCopyWith<$Res> {
  _$SignUpParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SignUpParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
    Object? name = null,
    Object? username = null,
    Object? phone = null,
    Object? gender = null,
    Object? role = null,
    Object? fcmToken = freezed,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as int,
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as UserGender,
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as UserRole,
      fcmToken: freezed == fcmToken
          ? _value.fcmToken
          : fcmToken // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SignUpParamsImplCopyWith<$Res>
    implements $SignUpParamsCopyWith<$Res> {
  factory _$$SignUpParamsImplCopyWith(
          _$SignUpParamsImpl value, $Res Function(_$SignUpParamsImpl) then) =
      __$$SignUpParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String email,
      String password,
      String name,
      String username,
      int phone,
      UserGender gender,
      UserRole role,
      String? fcmToken});
}

/// @nodoc
class __$$SignUpParamsImplCopyWithImpl<$Res>
    extends _$SignUpParamsCopyWithImpl<$Res, _$SignUpParamsImpl>
    implements _$$SignUpParamsImplCopyWith<$Res> {
  __$$SignUpParamsImplCopyWithImpl(
      _$SignUpParamsImpl _value, $Res Function(_$SignUpParamsImpl) _then)
      : super(_value, _then);

  /// Create a copy of SignUpParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
    Object? name = null,
    Object? username = null,
    Object? phone = null,
    Object? gender = null,
    Object? role = null,
    Object? fcmToken = freezed,
  }) {
    return _then(_$SignUpParamsImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as int,
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as UserGender,
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as UserRole,
      fcmToken: freezed == fcmToken
          ? _value.fcmToken
          : fcmToken // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SignUpParamsImpl implements _SignUpParams {
  const _$SignUpParamsImpl(
      {required this.email,
      required this.password,
      required this.name,
      required this.username,
      required this.phone,
      required this.gender,
      required this.role,
      required this.fcmToken});

  factory _$SignUpParamsImpl.fromJson(Map<String, dynamic> json) =>
      _$$SignUpParamsImplFromJson(json);

  @override
  final String email;
  @override
  final String password;
  @override
  final String name;
  @override
  final String username;
  @override
  final int phone;
  @override
  final UserGender gender;
  @override
  final UserRole role;
  @override
  final String? fcmToken;

  @override
  String toString() {
    return 'SignUpParams(email: $email, password: $password, name: $name, username: $username, phone: $phone, gender: $gender, role: $role, fcmToken: $fcmToken)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignUpParamsImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.role, role) || other.role == role) &&
            (identical(other.fcmToken, fcmToken) ||
                other.fcmToken == fcmToken));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, email, password, name, username,
      phone, gender, role, fcmToken);

  /// Create a copy of SignUpParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SignUpParamsImplCopyWith<_$SignUpParamsImpl> get copyWith =>
      __$$SignUpParamsImplCopyWithImpl<_$SignUpParamsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SignUpParamsImplToJson(
      this,
    );
  }
}

abstract class _SignUpParams implements SignUpParams {
  const factory _SignUpParams(
      {required final String email,
      required final String password,
      required final String name,
      required final String username,
      required final int phone,
      required final UserGender gender,
      required final UserRole role,
      required final String? fcmToken}) = _$SignUpParamsImpl;

  factory _SignUpParams.fromJson(Map<String, dynamic> json) =
      _$SignUpParamsImpl.fromJson;

  @override
  String get email;
  @override
  String get password;
  @override
  String get name;
  @override
  String get username;
  @override
  int get phone;
  @override
  UserGender get gender;
  @override
  UserRole get role;
  @override
  String? get fcmToken;

  /// Create a copy of SignUpParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SignUpParamsImplCopyWith<_$SignUpParamsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
