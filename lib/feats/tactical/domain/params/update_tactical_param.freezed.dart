// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_tactical_param.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UpdateTacticalParams _$UpdateTacticalParamsFromJson(Map<String, dynamic> json) {
  return _UpdateTacticalParams.fromJson(json);
}

/// @nodoc
mixin _$UpdateTacticalParams {
  int get id => throw _privateConstructorUsedError;
  int get clubId => throw _privateConstructorUsedError;
  String get sportType => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UpdateTacticalParamsCopyWith<UpdateTacticalParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateTacticalParamsCopyWith<$Res> {
  factory $UpdateTacticalParamsCopyWith(UpdateTacticalParams value,
          $Res Function(UpdateTacticalParams) then) =
      _$UpdateTacticalParamsCopyWithImpl<$Res, UpdateTacticalParams>;
  @useResult
  $Res call(
      {int id, int clubId, String sportType, String name, String description});
}

/// @nodoc
class _$UpdateTacticalParamsCopyWithImpl<$Res,
        $Val extends UpdateTacticalParams>
    implements $UpdateTacticalParamsCopyWith<$Res> {
  _$UpdateTacticalParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? clubId = null,
    Object? sportType = null,
    Object? name = null,
    Object? description = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
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
abstract class _$$UpdateTacticalParamsImplCopyWith<$Res>
    implements $UpdateTacticalParamsCopyWith<$Res> {
  factory _$$UpdateTacticalParamsImplCopyWith(_$UpdateTacticalParamsImpl value,
          $Res Function(_$UpdateTacticalParamsImpl) then) =
      __$$UpdateTacticalParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id, int clubId, String sportType, String name, String description});
}

/// @nodoc
class __$$UpdateTacticalParamsImplCopyWithImpl<$Res>
    extends _$UpdateTacticalParamsCopyWithImpl<$Res, _$UpdateTacticalParamsImpl>
    implements _$$UpdateTacticalParamsImplCopyWith<$Res> {
  __$$UpdateTacticalParamsImplCopyWithImpl(_$UpdateTacticalParamsImpl _value,
      $Res Function(_$UpdateTacticalParamsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? clubId = null,
    Object? sportType = null,
    Object? name = null,
    Object? description = null,
  }) {
    return _then(_$UpdateTacticalParamsImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
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
class _$UpdateTacticalParamsImpl implements _UpdateTacticalParams {
  const _$UpdateTacticalParamsImpl(
      {this.id = 0,
      this.clubId = 0,
      this.sportType = '',
      this.name = '',
      this.description = ''});

  factory _$UpdateTacticalParamsImpl.fromJson(Map<String, dynamic> json) =>
      _$$UpdateTacticalParamsImplFromJson(json);

  @override
  @JsonKey()
  final int id;
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
    return 'UpdateTacticalParams(id: $id, clubId: $clubId, sportType: $sportType, name: $name, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateTacticalParamsImpl &&
            (identical(other.id, id) || other.id == id) &&
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
      Object.hash(runtimeType, id, clubId, sportType, name, description);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateTacticalParamsImplCopyWith<_$UpdateTacticalParamsImpl>
      get copyWith =>
          __$$UpdateTacticalParamsImplCopyWithImpl<_$UpdateTacticalParamsImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UpdateTacticalParamsImplToJson(
      this,
    );
  }
}

abstract class _UpdateTacticalParams implements UpdateTacticalParams {
  const factory _UpdateTacticalParams(
      {final int id,
      final int clubId,
      final String sportType,
      final String name,
      final String description}) = _$UpdateTacticalParamsImpl;

  factory _UpdateTacticalParams.fromJson(Map<String, dynamic> json) =
      _$UpdateTacticalParamsImpl.fromJson;

  @override
  int get id;
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
  _$$UpdateTacticalParamsImplCopyWith<_$UpdateTacticalParamsImpl>
      get copyWith => throw _privateConstructorUsedError;
}
