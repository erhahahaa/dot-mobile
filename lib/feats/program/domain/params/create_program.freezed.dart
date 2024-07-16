// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_program.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CreateProgramParams _$CreateProgramParamsFromJson(Map<String, dynamic> json) {
  return _CreateProgramParams.fromJson(json);
}

/// @nodoc
mixin _$CreateProgramParams {
  int get clubId => throw _privateConstructorUsedError;
  String get sportType => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreateProgramParamsCopyWith<CreateProgramParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateProgramParamsCopyWith<$Res> {
  factory $CreateProgramParamsCopyWith(
          CreateProgramParams value, $Res Function(CreateProgramParams) then) =
      _$CreateProgramParamsCopyWithImpl<$Res, CreateProgramParams>;
  @useResult
  $Res call({int clubId, String sportType, String name});
}

/// @nodoc
class _$CreateProgramParamsCopyWithImpl<$Res, $Val extends CreateProgramParams>
    implements $CreateProgramParamsCopyWith<$Res> {
  _$CreateProgramParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? clubId = null,
    Object? sportType = null,
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      clubId: null == clubId
          ? _value.clubId
          : clubId // ignore: cast_nullable_to_non_nullable
              as int,
      sportType: null == sportType
          ? _value.sportType
          : sportType // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreateProgramParamsImplCopyWith<$Res>
    implements $CreateProgramParamsCopyWith<$Res> {
  factory _$$CreateProgramParamsImplCopyWith(_$CreateProgramParamsImpl value,
          $Res Function(_$CreateProgramParamsImpl) then) =
      __$$CreateProgramParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int clubId, String sportType, String name});
}

/// @nodoc
class __$$CreateProgramParamsImplCopyWithImpl<$Res>
    extends _$CreateProgramParamsCopyWithImpl<$Res, _$CreateProgramParamsImpl>
    implements _$$CreateProgramParamsImplCopyWith<$Res> {
  __$$CreateProgramParamsImplCopyWithImpl(_$CreateProgramParamsImpl _value,
      $Res Function(_$CreateProgramParamsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? clubId = null,
    Object? sportType = null,
    Object? name = null,
  }) {
    return _then(_$CreateProgramParamsImpl(
      clubId: null == clubId
          ? _value.clubId
          : clubId // ignore: cast_nullable_to_non_nullable
              as int,
      sportType: null == sportType
          ? _value.sportType
          : sportType // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreateProgramParamsImpl implements _CreateProgramParams {
  const _$CreateProgramParamsImpl(
      {this.clubId = 0, this.sportType = '', this.name = ''});

  factory _$CreateProgramParamsImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreateProgramParamsImplFromJson(json);

  @override
  @JsonKey()
  final int clubId;
  @override
  @JsonKey()
  final String sportType;
  @override
  @JsonKey()
  final String name;

  @override
  String toString() {
    return 'CreateProgramParams(clubId: $clubId, sportType: $sportType, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateProgramParamsImpl &&
            (identical(other.clubId, clubId) || other.clubId == clubId) &&
            (identical(other.sportType, sportType) ||
                other.sportType == sportType) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, clubId, sportType, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateProgramParamsImplCopyWith<_$CreateProgramParamsImpl> get copyWith =>
      __$$CreateProgramParamsImplCopyWithImpl<_$CreateProgramParamsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateProgramParamsImplToJson(
      this,
    );
  }
}

abstract class _CreateProgramParams implements CreateProgramParams {
  const factory _CreateProgramParams(
      {final int clubId,
      final String sportType,
      final String name}) = _$CreateProgramParamsImpl;

  factory _CreateProgramParams.fromJson(Map<String, dynamic> json) =
      _$CreateProgramParamsImpl.fromJson;

  @override
  int get clubId;
  @override
  String get sportType;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$CreateProgramParamsImplCopyWith<_$CreateProgramParamsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
