// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'delete_exercise_usecase.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DeleteExerciseParams _$DeleteExerciseParamsFromJson(Map<String, dynamic> json) {
  return _DeleteExerciseParams.fromJson(json);
}

/// @nodoc
mixin _$DeleteExerciseParams {
  int get id => throw _privateConstructorUsedError;

  /// Serializes this DeleteExerciseParams to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DeleteExerciseParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DeleteExerciseParamsCopyWith<DeleteExerciseParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeleteExerciseParamsCopyWith<$Res> {
  factory $DeleteExerciseParamsCopyWith(DeleteExerciseParams value,
          $Res Function(DeleteExerciseParams) then) =
      _$DeleteExerciseParamsCopyWithImpl<$Res, DeleteExerciseParams>;
  @useResult
  $Res call({int id});
}

/// @nodoc
class _$DeleteExerciseParamsCopyWithImpl<$Res,
        $Val extends DeleteExerciseParams>
    implements $DeleteExerciseParamsCopyWith<$Res> {
  _$DeleteExerciseParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DeleteExerciseParams
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
abstract class _$$DeleteExerciseParamsImplCopyWith<$Res>
    implements $DeleteExerciseParamsCopyWith<$Res> {
  factory _$$DeleteExerciseParamsImplCopyWith(_$DeleteExerciseParamsImpl value,
          $Res Function(_$DeleteExerciseParamsImpl) then) =
      __$$DeleteExerciseParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id});
}

/// @nodoc
class __$$DeleteExerciseParamsImplCopyWithImpl<$Res>
    extends _$DeleteExerciseParamsCopyWithImpl<$Res, _$DeleteExerciseParamsImpl>
    implements _$$DeleteExerciseParamsImplCopyWith<$Res> {
  __$$DeleteExerciseParamsImplCopyWithImpl(_$DeleteExerciseParamsImpl _value,
      $Res Function(_$DeleteExerciseParamsImpl) _then)
      : super(_value, _then);

  /// Create a copy of DeleteExerciseParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$DeleteExerciseParamsImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DeleteExerciseParamsImpl extends _DeleteExerciseParams {
  const _$DeleteExerciseParamsImpl({required this.id}) : super._();

  factory _$DeleteExerciseParamsImpl.fromJson(Map<String, dynamic> json) =>
      _$$DeleteExerciseParamsImplFromJson(json);

  @override
  final int id;

  @override
  String toString() {
    return 'DeleteExerciseParams(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteExerciseParamsImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id);

  /// Create a copy of DeleteExerciseParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteExerciseParamsImplCopyWith<_$DeleteExerciseParamsImpl>
      get copyWith =>
          __$$DeleteExerciseParamsImplCopyWithImpl<_$DeleteExerciseParamsImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DeleteExerciseParamsImplToJson(
      this,
    );
  }
}

abstract class _DeleteExerciseParams extends DeleteExerciseParams {
  const factory _DeleteExerciseParams({required final int id}) =
      _$DeleteExerciseParamsImpl;
  const _DeleteExerciseParams._() : super._();

  factory _DeleteExerciseParams.fromJson(Map<String, dynamic> json) =
      _$DeleteExerciseParamsImpl.fromJson;

  @override
  int get id;

  /// Create a copy of DeleteExerciseParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeleteExerciseParamsImplCopyWith<_$DeleteExerciseParamsImpl>
      get copyWith => throw _privateConstructorUsedError;
}
