// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_all_evaluation_usecase.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GetAllEvaluationParams _$GetAllEvaluationParamsFromJson(
    Map<String, dynamic> json) {
  return _GetAllEvaluationParams.fromJson(json);
}

/// @nodoc
mixin _$GetAllEvaluationParams {
  int get clubId => throw _privateConstructorUsedError;

  /// Serializes this GetAllEvaluationParams to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GetAllEvaluationParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GetAllEvaluationParamsCopyWith<GetAllEvaluationParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetAllEvaluationParamsCopyWith<$Res> {
  factory $GetAllEvaluationParamsCopyWith(GetAllEvaluationParams value,
          $Res Function(GetAllEvaluationParams) then) =
      _$GetAllEvaluationParamsCopyWithImpl<$Res, GetAllEvaluationParams>;
  @useResult
  $Res call({int clubId});
}

/// @nodoc
class _$GetAllEvaluationParamsCopyWithImpl<$Res,
        $Val extends GetAllEvaluationParams>
    implements $GetAllEvaluationParamsCopyWith<$Res> {
  _$GetAllEvaluationParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GetAllEvaluationParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? clubId = null,
  }) {
    return _then(_value.copyWith(
      clubId: null == clubId
          ? _value.clubId
          : clubId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetAllEvaluationParamsImplCopyWith<$Res>
    implements $GetAllEvaluationParamsCopyWith<$Res> {
  factory _$$GetAllEvaluationParamsImplCopyWith(
          _$GetAllEvaluationParamsImpl value,
          $Res Function(_$GetAllEvaluationParamsImpl) then) =
      __$$GetAllEvaluationParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int clubId});
}

/// @nodoc
class __$$GetAllEvaluationParamsImplCopyWithImpl<$Res>
    extends _$GetAllEvaluationParamsCopyWithImpl<$Res,
        _$GetAllEvaluationParamsImpl>
    implements _$$GetAllEvaluationParamsImplCopyWith<$Res> {
  __$$GetAllEvaluationParamsImplCopyWithImpl(
      _$GetAllEvaluationParamsImpl _value,
      $Res Function(_$GetAllEvaluationParamsImpl) _then)
      : super(_value, _then);

  /// Create a copy of GetAllEvaluationParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? clubId = null,
  }) {
    return _then(_$GetAllEvaluationParamsImpl(
      clubId: null == clubId
          ? _value.clubId
          : clubId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetAllEvaluationParamsImpl implements _GetAllEvaluationParams {
  const _$GetAllEvaluationParamsImpl({required this.clubId});

  factory _$GetAllEvaluationParamsImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetAllEvaluationParamsImplFromJson(json);

  @override
  final int clubId;

  @override
  String toString() {
    return 'GetAllEvaluationParams(clubId: $clubId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetAllEvaluationParamsImpl &&
            (identical(other.clubId, clubId) || other.clubId == clubId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, clubId);

  /// Create a copy of GetAllEvaluationParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetAllEvaluationParamsImplCopyWith<_$GetAllEvaluationParamsImpl>
      get copyWith => __$$GetAllEvaluationParamsImplCopyWithImpl<
          _$GetAllEvaluationParamsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetAllEvaluationParamsImplToJson(
      this,
    );
  }
}

abstract class _GetAllEvaluationParams implements GetAllEvaluationParams {
  const factory _GetAllEvaluationParams({required final int clubId}) =
      _$GetAllEvaluationParamsImpl;

  factory _GetAllEvaluationParams.fromJson(Map<String, dynamic> json) =
      _$GetAllEvaluationParamsImpl.fromJson;

  @override
  int get clubId;

  /// Create a copy of GetAllEvaluationParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetAllEvaluationParamsImplCopyWith<_$GetAllEvaluationParamsImpl>
      get copyWith => throw _privateConstructorUsedError;
}
