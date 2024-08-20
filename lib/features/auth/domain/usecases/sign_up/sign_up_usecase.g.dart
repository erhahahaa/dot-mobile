// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_up_usecase.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SignUpParamsImpl _$$SignUpParamsImplFromJson(Map<String, dynamic> json) =>
    _$SignUpParamsImpl(
      email: json['email'] as String,
      password: json['password'] as String,
      name: json['name'] as String,
      username: json['username'] as String,
      phone: (json['phone'] as num).toInt(),
      gender: $enumDecode(_$UserGenderEnumMap, json['gender']),
      role: $enumDecode(_$UserRoleEnumMap, json['role']),
      fcmToken: json['fcmToken'] as String?,
    );

Map<String, dynamic> _$$SignUpParamsImplToJson(_$SignUpParamsImpl instance) =>
    <String, dynamic>{
      'email': instance.email,
      'password': instance.password,
      'name': instance.name,
      'username': instance.username,
      'phone': instance.phone,
      'gender': _$UserGenderEnumMap[instance.gender]!,
      'role': _$UserRoleEnumMap[instance.role]!,
      'fcmToken': instance.fcmToken,
    };

const _$UserGenderEnumMap = {
  UserGender.male: 'male',
  UserGender.female: 'female',
};

const _$UserRoleEnumMap = {
  UserRole.coach: 'coach',
  UserRole.athlete: 'athlete',
};
