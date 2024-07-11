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
      role:
          $enumDecodeNullable(_$UserRoleEnumMap, json['role']) ?? UserRole.user,
      expertise: json['expertise'] as String? ?? "Sports",
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
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
      'created_at': instance.createdAt?.toIso8601String(),
      'token': instance.token,
    };

const _$UserRoleEnumMap = {
  UserRole.superadmin: 'superadmin',
  UserRole.admin: 'admin',
  UserRole.user: 'user',
};
