// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_club_member_usecase.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AddClubMemberParamsImpl _$$AddClubMemberParamsImplFromJson(
        Map<String, dynamic> json) =>
    _$AddClubMemberParamsImpl(
      clubId: (json['clubId'] as num).toInt(),
      userId: (json['userId'] as num).toInt(),
      role: $enumDecode(_$UserRoleEnumMap, json['role']),
    );

Map<String, dynamic> _$$AddClubMemberParamsImplToJson(
        _$AddClubMemberParamsImpl instance) =>
    <String, dynamic>{
      'clubId': instance.clubId,
      'userId': instance.userId,
      'role': _$UserRoleEnumMap[instance.role]!,
    };

const _$UserRoleEnumMap = {
  UserRole.coach: 'coach',
  UserRole.athlete: 'athlete',
  UserRole.admin: 'admin',
};
