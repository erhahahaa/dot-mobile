// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserToClubImpl _$$UserToClubImplFromJson(Map<String, dynamic> json) =>
    _$UserToClubImpl(
      id: (json['id'] as num?)?.toInt() ?? 0,
      userId: (json['userId'] as num?)?.toInt() ?? 0,
      clubId: (json['clubId'] as num?)?.toInt() ?? 0,
      role: $enumDecodeNullable(_$UserRoleEnumMap, json['role']) ??
          UserRole.athlete,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$$UserToClubImplToJson(_$UserToClubImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'clubId': instance.clubId,
      'role': _$UserRoleEnumMap[instance.role]!,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };

const _$UserRoleEnumMap = {
  UserRole.coach: 'coach',
  UserRole.athlete: 'athlete',
};

_$UserModelImpl _$$UserModelImplFromJson(Map<String, dynamic> json) =>
    _$UserModelImpl(
      id: (json['id'] as num?)?.toInt() ?? 0,
      name: json['name'] as String? ?? 'Folks',
      email: json['email'] as String? ?? 'folks@dot.com',
      username: json['username'] as String? ?? 'folks',
      image: json['image'] as String? ??
          "https://api.dicebear.com/9.x/adventurer/png",
      phone: (json['phone'] as num?)?.toInt() ?? 6281555444333,
      gender: $enumDecodeNullable(_$UserGenderEnumMap, json['gender']) ??
          UserGender.male,
      role: $enumDecodeNullable(_$UserRoleEnumMap, json['role']) ??
          UserRole.athlete,
      bornPlace: json['bornPlace'] as String?,
      bornDate: json['bornDate'] == null
          ? null
          : DateTime.parse(json['bornDate'] as String),
      religion: json['religion'] as String?,
      address: json['address'] as String?,
      expertise: json['expertise'] as String?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      token: json['token'] as String?,
    );

Map<String, dynamic> _$$UserModelImplToJson(_$UserModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'email': instance.email,
      'username': instance.username,
      'image': instance.image,
      'phone': instance.phone,
      'gender': _$UserGenderEnumMap[instance.gender]!,
      'role': _$UserRoleEnumMap[instance.role]!,
      'bornPlace': instance.bornPlace,
      'bornDate': instance.bornDate?.toIso8601String(),
      'religion': instance.religion,
      'address': instance.address,
      'expertise': instance.expertise,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'token': instance.token,
    };

const _$UserGenderEnumMap = {
  UserGender.male: 'male',
  UserGender.female: 'female',
};
