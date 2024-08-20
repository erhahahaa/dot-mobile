// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_all_exam_params.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GetAllExamParams _$GetAllExamParamsFromJson(Map<String, dynamic> json) {
  return _GetAllExamParams.fromJson(json);
}

/// @nodoc
mixin _$GetAllExamParams {
  int get clubId => throw _privateConstructorUsedError;

  /// Serializes this GetAllExamParams to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GetAllExamParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GetAllExamParamsCopyWith<GetAllExamParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetAllExamParamsCopyWith<$Res> {
  factory $GetAllExamParamsCopyWith(
          GetAllExamParams value, $Res Function(GetAllExamParams) then) =
      _$GetAllExamParamsCopyWithImpl<$Res, GetAllExamParams>;
  @useResult
  $Res call({int clubId});
}

/// @nodoc
class _$GetAllExamParamsCopyWithImpl<$Res, $Val extends GetAllExamParams>
    implements $GetAllExamParamsCopyWith<$Res> {
  _$GetAllExamParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GetAllExamParams
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
abstract class _$$GetAllExamParamsImplCopyWith<$Res>
    implements $GetAllExamParamsCopyWith<$Res> {
  factory _$$GetAllExamParamsImplCopyWith(_$GetAllExamParamsImpl value,
          $Res Function(_$GetAllExamParamsImpl) then) =
      __$$GetAllExamParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int clubId});
}

/// @nodoc
class __$$GetAllExamParamsImplCopyWithImpl<$Res>
    extends _$GetAllExamParamsCopyWithImpl<$Res, _$GetAllExamParamsImpl>
    implements _$$GetAllExamParamsImplCopyWith<$Res> {
  __$$GetAllExamParamsImplCopyWithImpl(_$GetAllExamParamsImpl _value,
      $Res Function(_$GetAllExamParamsImpl) _then)
      : super(_value, _then);

  /// Create a copy of GetAllExamParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? clubId = null,
  }) {
    return _then(_$GetAllExamParamsImpl(
      clubId: null == clubId
          ? _value.clubId
          : clubId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetAllExamParamsImpl implements _GetAllExamParams {
  const _$GetAllExamParamsImpl({required this.clubId});

  factory _$GetAllExamParamsImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetAllExamParamsImplFromJson(json);

  @override
  final int clubId;

  @override
  String toString() {
    return 'GetAllExamParams(clubId: $clubId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetAllExamParamsImpl &&
            (identical(other.clubId, clubId) || other.clubId == clubId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, clubId);

  /// Create a copy of GetAllExamParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetAllExamParamsImplCopyWith<_$GetAllExamParamsImpl> get copyWith =>
      __$$GetAllExamParamsImplCopyWithImpl<_$GetAllExamParamsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetAllExamParamsImplToJson(
      this,
    );
  }
}

abstract class _GetAllExamParams implements GetAllExamParams {
  const factory _GetAllExamParams({required final int clubId}) =
      _$GetAllExamParamsImpl;

  factory _GetAllExamParams.fromJson(Map<String, dynamic> json) =
      _$GetAllExamParamsImpl.fromJson;

  @override
  int get clubId;

  /// Create a copy of GetAllExamParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetAllExamParamsImplCopyWith<_$GetAllExamParamsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
