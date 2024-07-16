// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_tactical.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CreateTacticalParams _$CreateTacticalParamsFromJson(Map<String, dynamic> json) {
  return _CreateTacticalParams.fromJson(json);
}

/// @nodoc
mixin _$CreateTacticalParams {
  int get clubId => throw _privateConstructorUsedError;
  String get sportType => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreateTacticalParamsCopyWith<CreateTacticalParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateTacticalParamsCopyWith<$Res> {
  factory $CreateTacticalParamsCopyWith(CreateTacticalParams value,
          $Res Function(CreateTacticalParams) then) =
      _$CreateTacticalParamsCopyWithImpl<$Res, CreateTacticalParams>;
  @useResult
  $Res call({int clubId, String sportType, String name, String description});
}

/// @nodoc
class _$CreateTacticalParamsCopyWithImpl<$Res,
        $Val extends CreateTacticalParams>
    implements $CreateTacticalParamsCopyWith<$Res> {
  _$CreateTacticalParamsCopyWithImpl(this._value, this._then);

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
    Object? description = null,
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
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreateTacticalParamsImplCopyWith<$Res>
    implements $CreateTacticalParamsCopyWith<$Res> {
  factory _$$CreateTacticalParamsImplCopyWith(_$CreateTacticalParamsImpl value,
          $Res Function(_$CreateTacticalParamsImpl) then) =
      __$$CreateTacticalParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int clubId, String sportType, String name, String description});
}

/// @nodoc
class __$$CreateTacticalParamsImplCopyWithImpl<$Res>
    extends _$CreateTacticalParamsCopyWithImpl<$Res, _$CreateTacticalParamsImpl>
    implements _$$CreateTacticalParamsImplCopyWith<$Res> {
  __$$CreateTacticalParamsImplCopyWithImpl(_$CreateTacticalParamsImpl _value,
      $Res Function(_$CreateTacticalParamsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? clubId = null,
    Object? sportType = null,
    Object? name = null,
    Object? description = null,
  }) {
    return _then(_$CreateTacticalParamsImpl(
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
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreateTacticalParamsImpl implements _CreateTacticalParams {
  const _$CreateTacticalParamsImpl(
      {this.clubId = 0,
      this.sportType = '',
      this.name = '',
      this.description = ''});

  factory _$CreateTacticalParamsImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreateTacticalParamsImplFromJson(json);

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
  @JsonKey()
  final String description;

  @override
  String toString() {
    return 'CreateTacticalParams(clubId: $clubId, sportType: $sportType, name: $name, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateTacticalParamsImpl &&
            (identical(other.clubId, clubId) || other.clubId == clubId) &&
            (identical(other.sportType, sportType) ||
                other.sportType == sportType) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, clubId, sportType, name, description);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateTacticalParamsImplCopyWith<_$CreateTacticalParamsImpl>
      get copyWith =>
          __$$CreateTacticalParamsImplCopyWithImpl<_$CreateTacticalParamsImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateTacticalParamsImplToJson(
      this,
    );
  }
}

abstract class _CreateTacticalParams implements CreateTacticalParams {
  const factory _CreateTacticalParams(
      {final int clubId,
      final String sportType,
      final String name,
      final String description}) = _$CreateTacticalParamsImpl;

  factory _CreateTacticalParams.fromJson(Map<String, dynamic> json) =
      _$CreateTacticalParamsImpl.fromJson;

  @override
  int get clubId;
  @override
  String get sportType;
  @override
  String get name;
  @override
  String get description;
  @override
  @JsonKey(ignore: true)
  _$$CreateTacticalParamsImplCopyWith<_$CreateTacticalParamsImpl>
      get copyWith => throw _privateConstructorUsedError;
}
