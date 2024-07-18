// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserModelImpl _$$UserModelImplFromJson(Map<String, dynamic> json) =>
    _$UserModelImpl(
      id: (json['id'] as num?)?.toInt() ?? 0,
      name: json['name'] as String? ?? 'Folks',
      email: json['email'] as String? ?? 'folks@dot.com',
      image: json['image'] as String? ??
          "https://api.dicebear.com/9.x/adventurer/png",
      phone: json['phone'] as String? ?? null,
      role: $enumDecodeNullable(_$UserRoleEnumMap, json['role']) ??
          UserRole.athlete,
      expertise: json['expertise'] as String? ?? "Sports",
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      token: json['token'] as String? ?? null,
    );

Map<String, dynamic> _$$UserModelImplToJson(_$UserModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'email': instance.email,
      'image': instance.image,
      'phone': instance.phone,
      'role': _$UserRoleEnumMap[instance.role]!,
      'expertise': instance.expertise,
      'createdAt': instance.createdAt?.toIso8601String(),
      'token': instance.token,
    };

const _$UserRoleEnumMap = {
  UserRole.coach: 'coach',
  UserRole.athlete: 'athlete',
};
