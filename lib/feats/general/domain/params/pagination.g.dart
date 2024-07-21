// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pagination.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PaginationParamsImpl _$$PaginationParamsImplFromJson(
        Map<String, dynamic> json) =>
    _$PaginationParamsImpl(
      cursor: (json['cursor'] as num?)?.toInt() ?? 0,
      limit: (json['limit'] as num?)?.toInt() ?? 10,
    );

Map<String, dynamic> _$$PaginationParamsImplToJson(
        _$PaginationParamsImpl instance) =>
    <String, dynamic>{
      'cursor': instance.cursor,
      'limit': instance.limit,
    };
