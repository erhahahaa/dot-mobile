// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_user_params.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UpdateUserParamsImpl _$$UpdateUserParamsImplFromJson(
        Map<String, dynamic> json) =>
    _$UpdateUserParamsImpl(
      id: (json['id'] as num).toInt(),
      email: json['email'] as String,
      password: json['password'] as String,
      name: json['name'] as String,
      username: json['username'] as String,
      phone: (json['phone'] as num).toInt(),
      gender: $enumDecode(_$UserGenderEnumMap, json['gender']),
      role: $enumDecode(_$UserRoleEnumMap, json['role']),
      bornPlace: json['bornPlace'] as String?,
      bornDate: json['bornDate'] == null
          ? null
          : DateTime.parse(json['bornDate'] as String),
      religion: json['religion'] as String?,
      address: json['address'] as String?,
      expertise: json['expertise'] as String?,
    );

Map<String, dynamic> _$$UpdateUserParamsImplToJson(
        _$UpdateUserParamsImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'password': instance.password,
      'name': instance.name,
      'username': instance.username,
      'phone': instance.phone,
      'gender': _$UserGenderEnumMap[instance.gender]!,
      'role': _$UserRoleEnumMap[instance.role]!,
      'bornPlace': instance.bornPlace,
      'bornDate': instance.bornDate?.toIso8601String(),
      'religion': instance.religion,
      'address': instance.address,
      'expertise': instance.expertise,
    };

const _$UserGenderEnumMap = {
  UserGender.male: 'male',
  UserGender.female: 'female',
};

const _$UserRoleEnumMap = {
  UserRole.coach: 'coach',
  UserRole.athlete: 'athlete',
};
