// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_all_media_usecase.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$GetAllMediaParams {
  MediaParent get parent => throw _privateConstructorUsedError;
  int get clubId => throw _privateConstructorUsedError;
  MediaType? get type => throw _privateConstructorUsedError;

  /// Create a copy of GetAllMediaParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GetAllMediaParamsCopyWith<GetAllMediaParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetAllMediaParamsCopyWith<$Res> {
  factory $GetAllMediaParamsCopyWith(
          GetAllMediaParams value, $Res Function(GetAllMediaParams) then) =
      _$GetAllMediaParamsCopyWithImpl<$Res, GetAllMediaParams>;
  @useResult
  $Res call({MediaParent parent, int clubId, MediaType? type});
}

/// @nodoc
class _$GetAllMediaParamsCopyWithImpl<$Res, $Val extends GetAllMediaParams>
    implements $GetAllMediaParamsCopyWith<$Res> {
  _$GetAllMediaParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GetAllMediaParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? parent = null,
    Object? clubId = null,
    Object? type = freezed,
  }) {
    return _then(_value.copyWith(
      parent: null == parent
          ? _value.parent
          : parent // ignore: cast_nullable_to_non_nullable
              as MediaParent,
      clubId: null == clubId
          ? _value.clubId
          : clubId // ignore: cast_nullable_to_non_nullable
              as int,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as MediaType?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetAllMediaParamsImplCopyWith<$Res>
    implements $GetAllMediaParamsCopyWith<$Res> {
  factory _$$GetAllMediaParamsImplCopyWith(_$GetAllMediaParamsImpl value,
          $Res Function(_$GetAllMediaParamsImpl) then) =
      __$$GetAllMediaParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({MediaParent parent, int clubId, MediaType? type});
}

/// @nodoc
class __$$GetAllMediaParamsImplCopyWithImpl<$Res>
    extends _$GetAllMediaParamsCopyWithImpl<$Res, _$GetAllMediaParamsImpl>
    implements _$$GetAllMediaParamsImplCopyWith<$Res> {
  __$$GetAllMediaParamsImplCopyWithImpl(_$GetAllMediaParamsImpl _value,
      $Res Function(_$GetAllMediaParamsImpl) _then)
      : super(_value, _then);

  /// Create a copy of GetAllMediaParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? parent = null,
    Object? clubId = null,
    Object? type = freezed,
  }) {
    return _then(_$GetAllMediaParamsImpl(
      parent: null == parent
          ? _value.parent
          : parent // ignore: cast_nullable_to_non_nullable
              as MediaParent,
      clubId: null == clubId
          ? _value.clubId
          : clubId // ignore: cast_nullable_to_non_nullable
              as int,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as MediaType?,
    ));
  }
}

/// @nodoc

class _$GetAllMediaParamsImpl implements _GetAllMediaParams {
  const _$GetAllMediaParamsImpl(
      {required this.parent, required this.clubId, this.type});

  @override
  final MediaParent parent;
  @override
  final int clubId;
  @override
  final MediaType? type;

  @override
  String toString() {
    return 'GetAllMediaParams(parent: $parent, clubId: $clubId, type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetAllMediaParamsImpl &&
            (identical(other.parent, parent) || other.parent == parent) &&
            (identical(other.clubId, clubId) || other.clubId == clubId) &&
            (identical(other.type, type) || other.type == type));
  }

  @override
  int get hashCode => Object.hash(runtimeType, parent, clubId, type);

  /// Create a copy of GetAllMediaParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetAllMediaParamsImplCopyWith<_$GetAllMediaParamsImpl> get copyWith =>
      __$$GetAllMediaParamsImplCopyWithImpl<_$GetAllMediaParamsImpl>(
          this, _$identity);
}

abstract class _GetAllMediaParams implements GetAllMediaParams {
  const factory _GetAllMediaParams(
      {required final MediaParent parent,
      required final int clubId,
      final MediaType? type}) = _$GetAllMediaParamsImpl;

  @override
  MediaParent get parent;
  @override
  int get clubId;
  @override
  MediaType? get type;

  /// Create a copy of GetAllMediaParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetAllMediaParamsImplCopyWith<_$GetAllMediaParamsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
