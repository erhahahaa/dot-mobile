// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'upload_media_usecase.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$UploadMediaParams {
  int get id => throw _privateConstructorUsedError;
  File get file => throw _privateConstructorUsedError;
  MediaParent get parent => throw _privateConstructorUsedError;
  int get clubId => throw _privateConstructorUsedError;
  dynamic Function(int, int)? get onSendProgress =>
      throw _privateConstructorUsedError;
  dynamic Function(int, int)? get onReceiveProgress =>
      throw _privateConstructorUsedError;

  /// Create a copy of UploadMediaParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UploadMediaParamsCopyWith<UploadMediaParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UploadMediaParamsCopyWith<$Res> {
  factory $UploadMediaParamsCopyWith(
          UploadMediaParams value, $Res Function(UploadMediaParams) then) =
      _$UploadMediaParamsCopyWithImpl<$Res, UploadMediaParams>;
  @useResult
  $Res call(
      {int id,
      File file,
      MediaParent parent,
      int clubId,
      dynamic Function(int, int)? onSendProgress,
      dynamic Function(int, int)? onReceiveProgress});
}

/// @nodoc
class _$UploadMediaParamsCopyWithImpl<$Res, $Val extends UploadMediaParams>
    implements $UploadMediaParamsCopyWith<$Res> {
  _$UploadMediaParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UploadMediaParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? file = null,
    Object? parent = null,
    Object? clubId = null,
    Object? onSendProgress = freezed,
    Object? onReceiveProgress = freezed,
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
      onSendProgress: freezed == onSendProgress
          ? _value.onSendProgress
          : onSendProgress // ignore: cast_nullable_to_non_nullable
              as dynamic Function(int, int)?,
      onReceiveProgress: freezed == onReceiveProgress
          ? _value.onReceiveProgress
          : onReceiveProgress // ignore: cast_nullable_to_non_nullable
              as dynamic Function(int, int)?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UploadMediaParamsImplCopyWith<$Res>
    implements $UploadMediaParamsCopyWith<$Res> {
  factory _$$UploadMediaParamsImplCopyWith(_$UploadMediaParamsImpl value,
          $Res Function(_$UploadMediaParamsImpl) then) =
      __$$UploadMediaParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      File file,
      MediaParent parent,
      int clubId,
      dynamic Function(int, int)? onSendProgress,
      dynamic Function(int, int)? onReceiveProgress});
}

/// @nodoc
class __$$UploadMediaParamsImplCopyWithImpl<$Res>
    extends _$UploadMediaParamsCopyWithImpl<$Res, _$UploadMediaParamsImpl>
    implements _$$UploadMediaParamsImplCopyWith<$Res> {
  __$$UploadMediaParamsImplCopyWithImpl(_$UploadMediaParamsImpl _value,
      $Res Function(_$UploadMediaParamsImpl) _then)
      : super(_value, _then);

  /// Create a copy of UploadMediaParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? file = null,
    Object? parent = null,
    Object? clubId = null,
    Object? onSendProgress = freezed,
    Object? onReceiveProgress = freezed,
  }) {
    return _then(_$UploadMediaParamsImpl(
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
      onSendProgress: freezed == onSendProgress
          ? _value.onSendProgress
          : onSendProgress // ignore: cast_nullable_to_non_nullable
              as dynamic Function(int, int)?,
      onReceiveProgress: freezed == onReceiveProgress
          ? _value.onReceiveProgress
          : onReceiveProgress // ignore: cast_nullable_to_non_nullable
              as dynamic Function(int, int)?,
    ));
  }
}

/// @nodoc

class _$UploadMediaParamsImpl extends _UploadMediaParams {
  const _$UploadMediaParamsImpl(
      {required this.id,
      required this.file,
      required this.parent,
      required this.clubId,
      this.onSendProgress,
      this.onReceiveProgress})
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
  final dynamic Function(int, int)? onSendProgress;
  @override
  final dynamic Function(int, int)? onReceiveProgress;

  @override
  String toString() {
    return 'UploadMediaParams(id: $id, file: $file, parent: $parent, clubId: $clubId, onSendProgress: $onSendProgress, onReceiveProgress: $onReceiveProgress)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UploadMediaParamsImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.file, file) || other.file == file) &&
            (identical(other.parent, parent) || other.parent == parent) &&
            (identical(other.clubId, clubId) || other.clubId == clubId) &&
            (identical(other.onSendProgress, onSendProgress) ||
                other.onSendProgress == onSendProgress) &&
            (identical(other.onReceiveProgress, onReceiveProgress) ||
                other.onReceiveProgress == onReceiveProgress));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, id, file, parent, clubId, onSendProgress, onReceiveProgress);

  /// Create a copy of UploadMediaParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UploadMediaParamsImplCopyWith<_$UploadMediaParamsImpl> get copyWith =>
      __$$UploadMediaParamsImplCopyWithImpl<_$UploadMediaParamsImpl>(
          this, _$identity);
}

abstract class _UploadMediaParams extends UploadMediaParams {
  const factory _UploadMediaParams(
          {required final int id,
          required final File file,
          required final MediaParent parent,
          required final int clubId,
          final dynamic Function(int, int)? onSendProgress,
          final dynamic Function(int, int)? onReceiveProgress}) =
      _$UploadMediaParamsImpl;
  const _UploadMediaParams._() : super._();

  @override
  int get id;
  @override
  File get file;
  @override
  MediaParent get parent;
  @override
  int get clubId;
  @override
  dynamic Function(int, int)? get onSendProgress;
  @override
  dynamic Function(int, int)? get onReceiveProgress;

  /// Create a copy of UploadMediaParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UploadMediaParamsImplCopyWith<_$UploadMediaParamsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
