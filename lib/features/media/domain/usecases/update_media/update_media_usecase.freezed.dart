// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_media_usecase.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$UpdateMediaParams {
  int get id => throw _privateConstructorUsedError;
  File get file => throw _privateConstructorUsedError;
  MediaParent get parent => throw _privateConstructorUsedError;
  int get clubId => throw _privateConstructorUsedError;

  /// Create a copy of UpdateMediaParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UpdateMediaParamsCopyWith<UpdateMediaParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateMediaParamsCopyWith<$Res> {
  factory $UpdateMediaParamsCopyWith(
          UpdateMediaParams value, $Res Function(UpdateMediaParams) then) =
      _$UpdateMediaParamsCopyWithImpl<$Res, UpdateMediaParams>;
  @useResult
  $Res call({int id, File file, MediaParent parent, int clubId});
}

/// @nodoc
class _$UpdateMediaParamsCopyWithImpl<$Res, $Val extends UpdateMediaParams>
    implements $UpdateMediaParamsCopyWith<$Res> {
  _$UpdateMediaParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UpdateMediaParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? file = null,
    Object? parent = null,
    Object? clubId = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      file: null == file
          ? _value.file
          : file // ignore: cast_nullable_to_non_nullable
              as File,
      parent: null == parent
          ? _value.parent
          : parent // ignore: cast_nullable_to_non_nullable
              as MediaParent,
      clubId: null == clubId
          ? _value.clubId
          : clubId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UpdateMediaParamsImplCopyWith<$Res>
    implements $UpdateMediaParamsCopyWith<$Res> {
  factory _$$UpdateMediaParamsImplCopyWith(_$UpdateMediaParamsImpl value,
          $Res Function(_$UpdateMediaParamsImpl) then) =
      __$$UpdateMediaParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, File file, MediaParent parent, int clubId});
}

/// @nodoc
class __$$UpdateMediaParamsImplCopyWithImpl<$Res>
    extends _$UpdateMediaParamsCopyWithImpl<$Res, _$UpdateMediaParamsImpl>
    implements _$$UpdateMediaParamsImplCopyWith<$Res> {
  __$$UpdateMediaParamsImplCopyWithImpl(_$UpdateMediaParamsImpl _value,
      $Res Function(_$UpdateMediaParamsImpl) _then)
      : super(_value, _then);

  /// Create a copy of UpdateMediaParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? file = null,
    Object? parent = null,
    Object? clubId = null,
  }) {
    return _then(_$UpdateMediaParamsImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      file: null == file
          ? _value.file
          : file // ignore: cast_nullable_to_non_nullable
              as File,
      parent: null == parent
          ? _value.parent
          : parent // ignore: cast_nullable_to_non_nullable
              as MediaParent,
      clubId: null == clubId
          ? _value.clubId
          : clubId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$UpdateMediaParamsImpl extends _UpdateMediaParams {
  const _$UpdateMediaParamsImpl(
      {required this.id,
      required this.file,
      required this.parent,
      required this.clubId})
      : super._();

  @override
  final int id;
  @override
  final File file;
  @override
  final MediaParent parent;
  @override
  final int clubId;

  @override
  String toString() {
    return 'UpdateMediaParams(id: $id, file: $file, parent: $parent, clubId: $clubId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateMediaParamsImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.file, file) || other.file == file) &&
            (identical(other.parent, parent) || other.parent == parent) &&
            (identical(other.clubId, clubId) || other.clubId == clubId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, file, parent, clubId);

  /// Create a copy of UpdateMediaParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateMediaParamsImplCopyWith<_$UpdateMediaParamsImpl> get copyWith =>
      __$$UpdateMediaParamsImplCopyWithImpl<_$UpdateMediaParamsImpl>(
          this, _$identity);
}

abstract class _UpdateMediaParams extends UpdateMediaParams {
  const factory _UpdateMediaParams(
      {required final int id,
      required final File file,
      required final MediaParent parent,
      required final int clubId}) = _$UpdateMediaParamsImpl;
  const _UpdateMediaParams._() : super._();

  @override
  int get id;
  @override
  File get file;
  @override
  MediaParent get parent;
  @override
  int get clubId;

  /// Create a copy of UpdateMediaParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateMediaParamsImplCopyWith<_$UpdateMediaParamsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
