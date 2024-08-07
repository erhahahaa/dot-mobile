// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'register_param.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RegisterParams _$RegisterParamsFromJson(Map<String, dynamic> json) {
  return _RegisterParams.fromJson(json);
}

/// @nodoc
mixin _$RegisterParams {
  String get email => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get username => throw _privateConstructorUsedError;
  int get phone => throw _privateConstructorUsedError;
  UserGender get gender => throw _privateConstructorUsedError;
  UserRole get role => throw _privateConstructorUsedError;
  String? get fcmToken => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RegisterParamsCopyWith<RegisterParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterParamsCopyWith<$Res> {
  factory $RegisterParamsCopyWith(
          RegisterParams value, $Res Function(RegisterParams) then) =
      _$RegisterParamsCopyWithImpl<$Res, RegisterParams>;
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
class _$RegisterParamsCopyWithImpl<$Res, $Val extends RegisterParams>
    implements $RegisterParamsCopyWith<$Res> {
  _$RegisterParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

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
abstract class _$$RegisterParamsImplCopyWith<$Res>
    implements $RegisterParamsCopyWith<$Res> {
  factory _$$RegisterParamsImplCopyWith(_$RegisterParamsImpl value,
          $Res Function(_$RegisterParamsImpl) then) =
      __$$RegisterParamsImplCopyWithImpl<$Res>;
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
class __$$RegisterParamsImplCopyWithImpl<$Res>
    extends _$RegisterParamsCopyWithImpl<$Res, _$RegisterParamsImpl>
    implements _$$RegisterParamsImplCopyWith<$Res> {
  __$$RegisterParamsImplCopyWithImpl(
      _$RegisterParamsImpl _value, $Res Function(_$RegisterParamsImpl) _then)
      : super(_value, _then);

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
    return _then(_$RegisterParamsImpl(
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
class _$RegisterParamsImpl implements _RegisterParams {
  const _$RegisterParamsImpl(
      {required this.email,
      required this.password,
      required this.name,
      required this.username,
      required this.phone,
      required this.gender,
      required this.role,
      required this.fcmToken});

  factory _$RegisterParamsImpl.fromJson(Map<String, dynamic> json) =>
      _$$RegisterParamsImplFromJson(json);

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
    return 'RegisterParams(email: $email, password: $password, name: $name, username: $username, phone: $phone, gender: $gender, role: $role, fcmToken: $fcmToken)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegisterParamsImpl &&
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

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, email, password, name, username,
      phone, gender, role, fcmToken);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RegisterParamsImplCopyWith<_$RegisterParamsImpl> get copyWith =>
      __$$RegisterParamsImplCopyWithImpl<_$RegisterParamsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RegisterParamsImplToJson(
      this,
    );
  }
}

abstract class _RegisterParams implements RegisterParams {
  const factory _RegisterParams(
      {required final String email,
      required final String password,
      required final String name,
      required final String username,
      required final int phone,
      required final UserGender gender,
      required final UserRole role,
      required final String? fcmToken}) = _$RegisterParamsImpl;

  factory _RegisterParams.fromJson(Map<String, dynamic> json) =
      _$RegisterParamsImpl.fromJson;

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
  @override
  @JsonKey(ignore: true)
  _$$RegisterParamsImplCopyWith<_$RegisterParamsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
