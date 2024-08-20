// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'delete_question_usecase.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DeleteQuestionParams _$DeleteQuestionParamsFromJson(Map<String, dynamic> json) {
  return _DeleteQuestionParams.fromJson(json);
}

/// @nodoc
mixin _$DeleteQuestionParams {
  int get id => throw _privateConstructorUsedError;

  /// Serializes this DeleteQuestionParams to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DeleteQuestionParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DeleteQuestionParamsCopyWith<DeleteQuestionParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeleteQuestionParamsCopyWith<$Res> {
  factory $DeleteQuestionParamsCopyWith(DeleteQuestionParams value,
          $Res Function(DeleteQuestionParams) then) =
      _$DeleteQuestionParamsCopyWithImpl<$Res, DeleteQuestionParams>;
  @useResult
  $Res call({int id});
}

/// @nodoc
class _$DeleteQuestionParamsCopyWithImpl<$Res,
        $Val extends DeleteQuestionParams>
    implements $DeleteQuestionParamsCopyWith<$Res> {
  _$DeleteQuestionParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DeleteQuestionParams
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
abstract class _$$DeleteQuestionParamsImplCopyWith<$Res>
    implements $DeleteQuestionParamsCopyWith<$Res> {
  factory _$$DeleteQuestionParamsImplCopyWith(_$DeleteQuestionParamsImpl value,
          $Res Function(_$DeleteQuestionParamsImpl) then) =
      __$$DeleteQuestionParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id});
}

/// @nodoc
class __$$DeleteQuestionParamsImplCopyWithImpl<$Res>
    extends _$DeleteQuestionParamsCopyWithImpl<$Res, _$DeleteQuestionParamsImpl>
    implements _$$DeleteQuestionParamsImplCopyWith<$Res> {
  __$$DeleteQuestionParamsImplCopyWithImpl(_$DeleteQuestionParamsImpl _value,
      $Res Function(_$DeleteQuestionParamsImpl) _then)
      : super(_value, _then);

  /// Create a copy of DeleteQuestionParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$DeleteQuestionParamsImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DeleteQuestionParamsImpl extends _DeleteQuestionParams {
  const _$DeleteQuestionParamsImpl({required this.id}) : super._();

  factory _$DeleteQuestionParamsImpl.fromJson(Map<String, dynamic> json) =>
      _$$DeleteQuestionParamsImplFromJson(json);

  @override
  final int id;

  @override
  String toString() {
    return 'DeleteQuestionParams(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteQuestionParamsImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id);

  /// Create a copy of DeleteQuestionParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteQuestionParamsImplCopyWith<_$DeleteQuestionParamsImpl>
      get copyWith =>
          __$$DeleteQuestionParamsImplCopyWithImpl<_$DeleteQuestionParamsImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DeleteQuestionParamsImplToJson(
      this,
    );
  }
}

abstract class _DeleteQuestionParams extends DeleteQuestionParams {
  const factory _DeleteQuestionParams({required final int id}) =
      _$DeleteQuestionParamsImpl;
  const _DeleteQuestionParams._() : super._();

  factory _DeleteQuestionParams.fromJson(Map<String, dynamic> json) =
      _$DeleteQuestionParamsImpl.fromJson;

  @override
  int get id;

  /// Create a copy of DeleteQuestionParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeleteQuestionParamsImplCopyWith<_$DeleteQuestionParamsImpl>
      get copyWith => throw _privateConstructorUsedError;
}
