// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register_param.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RegisterParamsImpl _$$RegisterParamsImplFromJson(Map<String, dynamic> json) =>
    _$RegisterParamsImpl(
      email: json['email'] as String,
      password: json['password'] as String,
      name: json['name'] as String,
      username: json['username'] as String,
      phone: json['phone'] as String,
      gender: $enumDecode(_$UserGenderEnumMap, json['gender']),
      role: $enumDecode(_$UserRoleEnumMap, json['role']),
    );

Map<String, dynamic> _$$RegisterParamsImplToJson(
        _$RegisterParamsImpl instance) =>
    <String, dynamic>{
      'email': instance.email,
      'password': instance.password,
      'name': instance.name,
      'username': instance.username,
      'phone': instance.phone,
      'gender': _$UserGenderEnumMap[instance.gender]!,
      'role': _$UserRoleEnumMap[instance.role]!,
    };

const _$UserRoleEnumMap = {
  UserRole.coach: 'coach',
  UserRole.athlete: 'athlete',
};

const _$UserGenderEnumMap = {
  UserGender.male: 'male',
  UserGender.female: 'female',
};
