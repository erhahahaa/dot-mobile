// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_profile_usecase.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UpdateProfileParams _$UpdateProfileParamsFromJson(Map<String, dynamic> json) {
  return _UpdateProfileParams.fromJson(json);
}

/// @nodoc
mixin _$UpdateProfileParams {
  int get id => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get username => throw _privateConstructorUsedError;
  int get phone => throw _privateConstructorUsedError;
  UserGender get gender => throw _privateConstructorUsedError;
  UserRole get role => throw _privateConstructorUsedError;
  String? get bornPlace => throw _privateConstructorUsedError;
  DateTime? get bornDate => throw _privateConstructorUsedError;
  String? get religion => throw _privateConstructorUsedError;
  String? get address => throw _privateConstructorUsedError;
  String? get expertise =>
      throw _privateConstructorUsedError; // ignore: invalid_annotation_target
  @JsonKey(includeFromJson: false, includeToJson: false)
  File? get image => throw _privateConstructorUsedError;

  /// Serializes this UpdateProfileParams to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UpdateProfileParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UpdateProfileParamsCopyWith<UpdateProfileParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateProfileParamsCopyWith<$Res> {
  factory $UpdateProfileParamsCopyWith(
          UpdateProfileParams value, $Res Function(UpdateProfileParams) then) =
      _$UpdateProfileParamsCopyWithImpl<$Res, UpdateProfileParams>;
  @useResult
  $Res call(
      {int id,
      String email,
      String password,
      String name,
      String username,
      int phone,
      UserGender gender,
      UserRole role,
      String? bornPlace,
      DateTime? bornDate,
      String? religion,
      String? address,
      String? expertise,
      @JsonKey(includeFromJson: false, includeToJson: false) File? image});
}

/// @nodoc
class _$UpdateProfileParamsCopyWithImpl<$Res, $Val extends UpdateProfileParams>
    implements $UpdateProfileParamsCopyWith<$Res> {
  _$UpdateProfileParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UpdateProfileParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? email = null,
    Object? password = null,
    Object? name = null,
    Object? username = null,
    Object? phone = null,
    Object? gender = null,
    Object? role = null,
    Object? bornPlace = freezed,
    Object? bornDate = freezed,
    Object? religion = freezed,
    Object? address = freezed,
    Object? expertise = freezed,
    Object? image = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
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
      bornPlace: freezed == bornPlace
          ? _value.bornPlace
          : bornPlace // ignore: cast_nullable_to_non_nullable
              as String?,
      bornDate: freezed == bornDate
          ? _value.bornDate
          : bornDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      religion: freezed == religion
          ? _value.religion
          : religion // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      expertise: freezed == expertise
          ? _value.expertise
          : expertise // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as File?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UpdateProfileParamsImplCopyWith<$Res>
    implements $UpdateProfileParamsCopyWith<$Res> {
  factory _$$UpdateProfileParamsImplCopyWith(_$UpdateProfileParamsImpl value,
          $Res Function(_$UpdateProfileParamsImpl) then) =
      __$$UpdateProfileParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String email,
      String password,
      String name,
      String username,
      int phone,
      UserGender gender,
      UserRole role,
      String? bornPlace,
      DateTime? bornDate,
      String? religion,
      String? address,
      String? expertise,
      @JsonKey(includeFromJson: false, includeToJson: false) File? image});
}

/// @nodoc
class __$$UpdateProfileParamsImplCopyWithImpl<$Res>
    extends _$UpdateProfileParamsCopyWithImpl<$Res, _$UpdateProfileParamsImpl>
    implements _$$UpdateProfileParamsImplCopyWith<$Res> {
  __$$UpdateProfileParamsImplCopyWithImpl(_$UpdateProfileParamsImpl _value,
      $Res Function(_$UpdateProfileParamsImpl) _then)
      : super(_value, _then);

  /// Create a copy of UpdateProfileParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? email = null,
    Object? password = null,
    Object? name = null,
    Object? username = null,
    Object? phone = null,
    Object? gender = null,
    Object? role = null,
    Object? bornPlace = freezed,
    Object? bornDate = freezed,
    Object? religion = freezed,
    Object? address = freezed,
    Object? expertise = freezed,
    Object? image = freezed,
  }) {
    return _then(_$UpdateProfileParamsImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
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
      bornPlace: freezed == bornPlace
          ? _value.bornPlace
          : bornPlace // ignore: cast_nullable_to_non_nullable
              as String?,
      bornDate: freezed == bornDate
          ? _value.bornDate
          : bornDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      religion: freezed == religion
          ? _value.religion
          : religion // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      expertise: freezed == expertise
          ? _value.expertise
          : expertise // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as File?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UpdateProfileParamsImpl extends _UpdateProfileParams {
  const _$UpdateProfileParamsImpl(
      {required this.id,
      required this.email,
      required this.password,
      required this.name,
      required this.username,
      required this.phone,
      required this.gender,
      required this.role,
      this.bornPlace,
      this.bornDate,
      this.religion,
      this.address,
      this.expertise,
      @JsonKey(includeFromJson: false, includeToJson: false) this.image})
      : super._();

  factory _$UpdateProfileParamsImpl.fromJson(Map<String, dynamic> json) =>
      _$$UpdateProfileParamsImplFromJson(json);

  @override
  final int id;
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
  final String? bornPlace;
  @override
  final DateTime? bornDate;
  @override
  final String? religion;
  @override
  final String? address;
  @override
  final String? expertise;
// ignore: invalid_annotation_target
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  final File? image;

  @override
  String toString() {
    return 'UpdateProfileParams(id: $id, email: $email, password: $password, name: $name, username: $username, phone: $phone, gender: $gender, role: $role, bornPlace: $bornPlace, bornDate: $bornDate, religion: $religion, address: $address, expertise: $expertise, image: $image)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateProfileParamsImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.role, role) || other.role == role) &&
            (identical(other.bornPlace, bornPlace) ||
                other.bornPlace == bornPlace) &&
            (identical(other.bornDate, bornDate) ||
                other.bornDate == bornDate) &&
            (identical(other.religion, religion) ||
                other.religion == religion) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.expertise, expertise) ||
                other.expertise == expertise) &&
            (identical(other.image, image) || other.image == image));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      email,
      password,
      name,
      username,
      phone,
      gender,
      role,
      bornPlace,
      bornDate,
      religion,
      address,
      expertise,
      image);

  /// Create a copy of UpdateProfileParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateProfileParamsImplCopyWith<_$UpdateProfileParamsImpl> get copyWith =>
      __$$UpdateProfileParamsImplCopyWithImpl<_$UpdateProfileParamsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UpdateProfileParamsImplToJson(
      this,
    );
  }
}

abstract class _UpdateProfileParams extends UpdateProfileParams {
  const factory _UpdateProfileParams(
      {required final int id,
      required final String email,
      required final String password,
      required final String name,
      required final String username,
      required final int phone,
      required final UserGender gender,
      required final UserRole role,
      final String? bornPlace,
      final DateTime? bornDate,
      final String? religion,
      final String? address,
      final String? expertise,
      @JsonKey(includeFromJson: false, includeToJson: false)
      final File? image}) = _$UpdateProfileParamsImpl;
  const _UpdateProfileParams._() : super._();

  factory _UpdateProfileParams.fromJson(Map<String, dynamic> json) =
      _$UpdateProfileParamsImpl.fromJson;

  @override
  int get id;
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
  String? get bornPlace;
  @override
  DateTime? get bornDate;
  @override
  String? get religion;
  @override
  String? get address;
  @override
  String? get expertise; // ignore: invalid_annotation_target
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  File? get image;

  /// Create a copy of UpdateProfileParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateProfileParamsImplCopyWith<_$UpdateProfileParamsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
