// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserToClub _$UserToClubFromJson(Map<String, dynamic> json) {
  return _UserToClub.fromJson(json);
}

/// @nodoc
mixin _$UserToClub {
  int get id => throw _privateConstructorUsedError;
  int get userId => throw _privateConstructorUsedError;
  int get clubId => throw _privateConstructorUsedError;
  UserRole get role => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserToClubCopyWith<UserToClub> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserToClubCopyWith<$Res> {
  factory $UserToClubCopyWith(
          UserToClub value, $Res Function(UserToClub) then) =
      _$UserToClubCopyWithImpl<$Res, UserToClub>;
  @useResult
  $Res call(
      {int id,
      int userId,
      int clubId,
      UserRole role,
      DateTime? createdAt,
      DateTime? updatedAt});
}

/// @nodoc
class _$UserToClubCopyWithImpl<$Res, $Val extends UserToClub>
    implements $UserToClubCopyWith<$Res> {
  _$UserToClubCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? clubId = null,
    Object? role = null,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      clubId: null == clubId
          ? _value.clubId
          : clubId // ignore: cast_nullable_to_non_nullable
              as int,
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as UserRole,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserToClubImplCopyWith<$Res>
    implements $UserToClubCopyWith<$Res> {
  factory _$$UserToClubImplCopyWith(
          _$UserToClubImpl value, $Res Function(_$UserToClubImpl) then) =
      __$$UserToClubImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      int userId,
      int clubId,
      UserRole role,
      DateTime? createdAt,
      DateTime? updatedAt});
}

/// @nodoc
class __$$UserToClubImplCopyWithImpl<$Res>
    extends _$UserToClubCopyWithImpl<$Res, _$UserToClubImpl>
    implements _$$UserToClubImplCopyWith<$Res> {
  __$$UserToClubImplCopyWithImpl(
      _$UserToClubImpl _value, $Res Function(_$UserToClubImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? clubId = null,
    Object? role = null,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$UserToClubImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      clubId: null == clubId
          ? _value.clubId
          : clubId // ignore: cast_nullable_to_non_nullable
              as int,
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as UserRole,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserToClubImpl implements _UserToClub {
  const _$UserToClubImpl(
      {this.id = 0,
      this.userId = 0,
      this.clubId = 0,
      this.role = UserRole.athlete,
      this.createdAt,
      this.updatedAt});

  factory _$UserToClubImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserToClubImplFromJson(json);

  @override
  @JsonKey()
  final int id;
  @override
  @JsonKey()
  final int userId;
  @override
  @JsonKey()
  final int clubId;
  @override
  @JsonKey()
  final UserRole role;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'UserToClub(id: $id, userId: $userId, clubId: $clubId, role: $role, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserToClubImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.clubId, clubId) || other.clubId == clubId) &&
            (identical(other.role, role) || other.role == role) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, userId, clubId, role, createdAt, updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserToClubImplCopyWith<_$UserToClubImpl> get copyWith =>
      __$$UserToClubImplCopyWithImpl<_$UserToClubImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserToClubImplToJson(
      this,
    );
  }
}

abstract class _UserToClub implements UserToClub {
  const factory _UserToClub(
      {final int id,
      final int userId,
      final int clubId,
      final UserRole role,
      final DateTime? createdAt,
      final DateTime? updatedAt}) = _$UserToClubImpl;

  factory _UserToClub.fromJson(Map<String, dynamic> json) =
      _$UserToClubImpl.fromJson;

  @override
  int get id;
  @override
  int get userId;
  @override
  int get clubId;
  @override
  UserRole get role;
  @override
  DateTime? get createdAt;
  @override
  DateTime? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$UserToClubImplCopyWith<_$UserToClubImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UserModel _$UserModelFromJson(Map<String, dynamic> json) {
  return _UserModel.fromJson(json);
}

/// @nodoc
mixin _$UserModel {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get username => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  int get phone => throw _privateConstructorUsedError;
  UserGender get gender => throw _privateConstructorUsedError;
  UserRole get role => throw _privateConstructorUsedError;
  String? get bornPlace => throw _privateConstructorUsedError;
  DateTime? get bornDate => throw _privateConstructorUsedError;
  String? get religion => throw _privateConstructorUsedError;
  String? get address => throw _privateConstructorUsedError;
  String? get expertise => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  String? get token => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserModelCopyWith<UserModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserModelCopyWith<$Res> {
  factory $UserModelCopyWith(UserModel value, $Res Function(UserModel) then) =
      _$UserModelCopyWithImpl<$Res, UserModel>;
  @useResult
  $Res call(
      {int id,
      String name,
      String email,
      String username,
      String image,
      int phone,
      UserGender gender,
      UserRole role,
      String? bornPlace,
      DateTime? bornDate,
      String? religion,
      String? address,
      String? expertise,
      DateTime? createdAt,
      DateTime? updatedAt,
      String? token});
}

/// @nodoc
class _$UserModelCopyWithImpl<$Res, $Val extends UserModel>
    implements $UserModelCopyWith<$Res> {
  _$UserModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? email = null,
    Object? username = null,
    Object? image = null,
    Object? phone = null,
    Object? gender = null,
    Object? role = null,
    Object? bornPlace = freezed,
    Object? bornDate = freezed,
    Object? religion = freezed,
    Object? address = freezed,
    Object? expertise = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? token = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
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
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserModelImplCopyWith<$Res>
    implements $UserModelCopyWith<$Res> {
  factory _$$UserModelImplCopyWith(
          _$UserModelImpl value, $Res Function(_$UserModelImpl) then) =
      __$$UserModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      String email,
      String username,
      String image,
      int phone,
      UserGender gender,
      UserRole role,
      String? bornPlace,
      DateTime? bornDate,
      String? religion,
      String? address,
      String? expertise,
      DateTime? createdAt,
      DateTime? updatedAt,
      String? token});
}

/// @nodoc
class __$$UserModelImplCopyWithImpl<$Res>
    extends _$UserModelCopyWithImpl<$Res, _$UserModelImpl>
    implements _$$UserModelImplCopyWith<$Res> {
  __$$UserModelImplCopyWithImpl(
      _$UserModelImpl _value, $Res Function(_$UserModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? email = null,
    Object? username = null,
    Object? image = null,
    Object? phone = null,
    Object? gender = null,
    Object? role = null,
    Object? bornPlace = freezed,
    Object? bornDate = freezed,
    Object? religion = freezed,
    Object? address = freezed,
    Object? expertise = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? token = freezed,
  }) {
    return _then(_$UserModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
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
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserModelImpl implements _UserModel {
  const _$UserModelImpl(
      {this.id = 0,
      this.name = 'Folks',
      this.email = 'folks@dot.com',
      this.username = 'folks',
      this.image = "https://api.dicebear.com/9.x/adventurer/png",
      this.phone = 6281555444333,
      this.gender = UserGender.male,
      this.role = UserRole.athlete,
      this.bornPlace,
      this.bornDate,
      this.religion,
      this.address,
      this.expertise,
      this.createdAt,
      this.updatedAt,
      this.token});

  factory _$UserModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserModelImplFromJson(json);

  @override
  @JsonKey()
  final int id;
  @override
  @JsonKey()
  final String name;
  @override
  @JsonKey()
  final String email;
  @override
  @JsonKey()
  final String username;
  @override
  @JsonKey()
  final String image;
  @override
  @JsonKey()
  final int phone;
  @override
  @JsonKey()
  final UserGender gender;
  @override
  @JsonKey()
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
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;
  @override
  final String? token;

  @override
  String toString() {
    return 'UserModel(id: $id, name: $name, email: $email, username: $username, image: $image, phone: $phone, gender: $gender, role: $role, bornPlace: $bornPlace, bornDate: $bornDate, religion: $religion, address: $address, expertise: $expertise, createdAt: $createdAt, updatedAt: $updatedAt, token: $token)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.image, image) || other.image == image) &&
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
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.token, token) || other.token == token));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      email,
      username,
      image,
      phone,
      gender,
      role,
      bornPlace,
      bornDate,
      religion,
      address,
      expertise,
      createdAt,
      updatedAt,
      token);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserModelImplCopyWith<_$UserModelImpl> get copyWith =>
      __$$UserModelImplCopyWithImpl<_$UserModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserModelImplToJson(
      this,
    );
  }
}

abstract class _UserModel implements UserModel {
  const factory _UserModel(
      {final int id,
      final String name,
      final String email,
      final String username,
      final String image,
      final int phone,
      final UserGender gender,
      final UserRole role,
      final String? bornPlace,
      final DateTime? bornDate,
      final String? religion,
      final String? address,
      final String? expertise,
      final DateTime? createdAt,
      final DateTime? updatedAt,
      final String? token}) = _$UserModelImpl;

  factory _UserModel.fromJson(Map<String, dynamic> json) =
      _$UserModelImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String get email;
  @override
  String get username;
  @override
  String get image;
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
  String? get expertise;
  @override
  DateTime? get createdAt;
  @override
  DateTime? get updatedAt;
  @override
  String? get token;
  @override
  @JsonKey(ignore: true)
  _$$UserModelImplCopyWith<_$UserModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
