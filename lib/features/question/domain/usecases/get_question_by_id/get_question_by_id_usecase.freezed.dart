// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_question_by_id_usecase.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GetQuestionByIdParams _$GetQuestionByIdParamsFromJson(
    Map<String, dynamic> json) {
  return _GetQuestionByIdParams.fromJson(json);
}

/// @nodoc
mixin _$GetQuestionByIdParams {
  int get id => throw _privateConstructorUsedError;

  /// Serializes this GetQuestionByIdParams to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GetQuestionByIdParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GetQuestionByIdParamsCopyWith<GetQuestionByIdParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetQuestionByIdParamsCopyWith<$Res> {
  factory $GetQuestionByIdParamsCopyWith(GetQuestionByIdParams value,
          $Res Function(GetQuestionByIdParams) then) =
      _$GetQuestionByIdParamsCopyWithImpl<$Res, GetQuestionByIdParams>;
  @useResult
  $Res call({int id});
}

/// @nodoc
class _$GetQuestionByIdParamsCopyWithImpl<$Res,
        $Val extends GetQuestionByIdParams>
    implements $GetQuestionByIdParamsCopyWith<$Res> {
  _$GetQuestionByIdParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GetQuestionByIdParams
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
abstract class _$$GetQuestionByIdParamsImplCopyWith<$Res>
    implements $GetQuestionByIdParamsCopyWith<$Res> {
  factory _$$GetQuestionByIdParamsImplCopyWith(
          _$GetQuestionByIdParamsImpl value,
          $Res Function(_$GetQuestionByIdParamsImpl) then) =
      __$$GetQuestionByIdParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id});
}

/// @nodoc
class __$$GetQuestionByIdParamsImplCopyWithImpl<$Res>
    extends _$GetQuestionByIdParamsCopyWithImpl<$Res,
        _$GetQuestionByIdParamsImpl>
    implements _$$GetQuestionByIdParamsImplCopyWith<$Res> {
  __$$GetQuestionByIdParamsImplCopyWithImpl(_$GetQuestionByIdParamsImpl _value,
      $Res Function(_$GetQuestionByIdParamsImpl) _then)
      : super(_value, _then);

  /// Create a copy of GetQuestionByIdParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$GetQuestionByIdParamsImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetQuestionByIdParamsImpl extends _GetQuestionByIdParams {
  const _$GetQuestionByIdParamsImpl({required this.id}) : super._();

  factory _$GetQuestionByIdParamsImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetQuestionByIdParamsImplFromJson(json);

  @override
  final int id;

  @override
  String toString() {
    return 'GetQuestionByIdParams(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetQuestionByIdParamsImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id);

  /// Create a copy of GetQuestionByIdParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetQuestionByIdParamsImplCopyWith<_$GetQuestionByIdParamsImpl>
      get copyWith => __$$GetQuestionByIdParamsImplCopyWithImpl<
          _$GetQuestionByIdParamsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetQuestionByIdParamsImplToJson(
      this,
    );
  }
}

abstract class _GetQuestionByIdParams extends GetQuestionByIdParams {
  const factory _GetQuestionByIdParams({required final int id}) =
      _$GetQuestionByIdParamsImpl;
  const _GetQuestionByIdParams._() : super._();

  factory _GetQuestionByIdParams.fromJson(Map<String, dynamic> json) =
      _$GetQuestionByIdParamsImpl.fromJson;

  @override
  int get id;

  /// Create a copy of GetQuestionByIdParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetQuestionByIdParamsImplCopyWith<_$GetQuestionByIdParamsImpl>
      get copyWith => throw _privateConstructorUsedError;
}
