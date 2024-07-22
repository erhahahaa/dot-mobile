// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'params.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$UpsertMediaParams {
  int get id => throw _privateConstructorUsedError;
  File get file => throw _privateConstructorUsedError;
  MediaParent get parent => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UpsertMediaParamsCopyWith<UpsertMediaParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpsertMediaParamsCopyWith<$Res> {
  factory $UpsertMediaParamsCopyWith(
          UpsertMediaParams value, $Res Function(UpsertMediaParams) then) =
      _$UpsertMediaParamsCopyWithImpl<$Res, UpsertMediaParams>;
  @useResult
  $Res call({int id, File file, MediaParent parent});
}

/// @nodoc
class _$UpsertMediaParamsCopyWithImpl<$Res, $Val extends UpsertMediaParams>
    implements $UpsertMediaParamsCopyWith<$Res> {
  _$UpsertMediaParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? file = null,
    Object? parent = null,
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UpsertMediaParamsImplCopyWith<$Res>
    implements $UpsertMediaParamsCopyWith<$Res> {
  factory _$$UpsertMediaParamsImplCopyWith(_$UpsertMediaParamsImpl value,
          $Res Function(_$UpsertMediaParamsImpl) then) =
      __$$UpsertMediaParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, File file, MediaParent parent});
}

/// @nodoc
class __$$UpsertMediaParamsImplCopyWithImpl<$Res>
    extends _$UpsertMediaParamsCopyWithImpl<$Res, _$UpsertMediaParamsImpl>
    implements _$$UpsertMediaParamsImplCopyWith<$Res> {
  __$$UpsertMediaParamsImplCopyWithImpl(_$UpsertMediaParamsImpl _value,
      $Res Function(_$UpsertMediaParamsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? file = null,
    Object? parent = null,
  }) {
    return _then(_$UpsertMediaParamsImpl(
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
    ));
  }
}

/// @nodoc

class _$UpsertMediaParamsImpl extends _UpsertMediaParams {
  const _$UpsertMediaParamsImpl(
      {required this.id, required this.file, required this.parent})
      : super._();

  @override
  final int id;
  @override
  final File file;
  @override
  final MediaParent parent;

  @override
  String toString() {
    return 'UpsertMediaParams(id: $id, file: $file, parent: $parent)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpsertMediaParamsImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.file, file) || other.file == file) &&
            (identical(other.parent, parent) || other.parent == parent));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, file, parent);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpsertMediaParamsImplCopyWith<_$UpsertMediaParamsImpl> get copyWith =>
      __$$UpsertMediaParamsImplCopyWithImpl<_$UpsertMediaParamsImpl>(
          this, _$identity);
}

abstract class _UpsertMediaParams extends UpsertMediaParams {
  const factory _UpsertMediaParams(
      {required final int id,
      required final File file,
      required final MediaParent parent}) = _$UpsertMediaParamsImpl;
  const _UpsertMediaParams._() : super._();

  @override
  int get id;
  @override
  File get file;
  @override
  MediaParent get parent;
  @override
  @JsonKey(ignore: true)
  _$$UpsertMediaParamsImplCopyWith<_$UpsertMediaParamsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
