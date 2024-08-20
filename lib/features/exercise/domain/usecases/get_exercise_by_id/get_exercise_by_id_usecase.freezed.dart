// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_exercise_by_id_usecase.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GetExerciseByIdParams _$GetExerciseByIdParamsFromJson(
    Map<String, dynamic> json) {
  return _GetExerciseByIdParams.fromJson(json);
}

/// @nodoc
mixin _$GetExerciseByIdParams {
  int get id => throw _privateConstructorUsedError;

  /// Serializes this GetExerciseByIdParams to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GetExerciseByIdParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GetExerciseByIdParamsCopyWith<GetExerciseByIdParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetExerciseByIdParamsCopyWith<$Res> {
  factory $GetExerciseByIdParamsCopyWith(GetExerciseByIdParams value,
          $Res Function(GetExerciseByIdParams) then) =
      _$GetExerciseByIdParamsCopyWithImpl<$Res, GetExerciseByIdParams>;
  @useResult
  $Res call({int id});
}

/// @nodoc
class _$GetExerciseByIdParamsCopyWithImpl<$Res,
        $Val extends GetExerciseByIdParams>
    implements $GetExerciseByIdParamsCopyWith<$Res> {
  _$GetExerciseByIdParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GetExerciseByIdParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetExerciseByIdParamsImplCopyWith<$Res>
    implements $GetExerciseByIdParamsCopyWith<$Res> {
  factory _$$GetExerciseByIdParamsImplCopyWith(
          _$GetExerciseByIdParamsImpl value,
          $Res Function(_$GetExerciseByIdParamsImpl) then) =
      __$$GetExerciseByIdParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id});
}

/// @nodoc
class __$$GetExerciseByIdParamsImplCopyWithImpl<$Res>
    extends _$GetExerciseByIdParamsCopyWithImpl<$Res,
        _$GetExerciseByIdParamsImpl>
    implements _$$GetExerciseByIdParamsImplCopyWith<$Res> {
  __$$GetExerciseByIdParamsImplCopyWithImpl(_$GetExerciseByIdParamsImpl _value,
      $Res Function(_$GetExerciseByIdParamsImpl) _then)
      : super(_value, _then);

  /// Create a copy of GetExerciseByIdParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$GetExerciseByIdParamsImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetExerciseByIdParamsImpl extends _GetExerciseByIdParams {
  const _$GetExerciseByIdParamsImpl({required this.id}) : super._();

  factory _$GetExerciseByIdParamsImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetExerciseByIdParamsImplFromJson(json);

  @override
  final int id;

  @override
  String toString() {
    return 'GetExerciseByIdParams(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetExerciseByIdParamsImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id);

  /// Create a copy of GetExerciseByIdParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetExerciseByIdParamsImplCopyWith<_$GetExerciseByIdParamsImpl>
      get copyWith => __$$GetExerciseByIdParamsImplCopyWithImpl<
          _$GetExerciseByIdParamsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetExerciseByIdParamsImplToJson(
      this,
    );
  }
}

abstract class _GetExerciseByIdParams extends GetExerciseByIdParams {
  const factory _GetExerciseByIdParams({required final int id}) =
      _$GetExerciseByIdParamsImpl;
  const _GetExerciseByIdParams._() : super._();

  factory _GetExerciseByIdParams.fromJson(Map<String, dynamic> json) =
      _$GetExerciseByIdParamsImpl.fromJson;

  @override
  int get id;

  /// Create a copy of GetExerciseByIdParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetExerciseByIdParamsImplCopyWith<_$GetExerciseByIdParamsImpl>
      get copyWith => throw _privateConstructorUsedError;
}
