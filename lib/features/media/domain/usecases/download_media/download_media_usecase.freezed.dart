// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'download_media_usecase.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DownloadMediaParams {
  MediaModel get media => throw _privateConstructorUsedError;

  /// Create a copy of DownloadMediaParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DownloadMediaParamsCopyWith<DownloadMediaParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DownloadMediaParamsCopyWith<$Res> {
  factory $DownloadMediaParamsCopyWith(
          DownloadMediaParams value, $Res Function(DownloadMediaParams) then) =
      _$DownloadMediaParamsCopyWithImpl<$Res, DownloadMediaParams>;
  @useResult
  $Res call({MediaModel media});

  $MediaModelCopyWith<$Res> get media;
}

/// @nodoc
class _$DownloadMediaParamsCopyWithImpl<$Res, $Val extends DownloadMediaParams>
    implements $DownloadMediaParamsCopyWith<$Res> {
  _$DownloadMediaParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DownloadMediaParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? media = null,
  }) {
    return _then(_value.copyWith(
      media: null == media
          ? _value.media
          : media // ignore: cast_nullable_to_non_nullable
              as MediaModel,
    ) as $Val);
  }

  /// Create a copy of DownloadMediaParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MediaModelCopyWith<$Res> get media {
    return $MediaModelCopyWith<$Res>(_value.media, (value) {
      return _then(_value.copyWith(media: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DownloadMediaParamsImplCopyWith<$Res>
    implements $DownloadMediaParamsCopyWith<$Res> {
  factory _$$DownloadMediaParamsImplCopyWith(_$DownloadMediaParamsImpl value,
          $Res Function(_$DownloadMediaParamsImpl) then) =
      __$$DownloadMediaParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({MediaModel media});

  @override
  $MediaModelCopyWith<$Res> get media;
}

/// @nodoc
class __$$DownloadMediaParamsImplCopyWithImpl<$Res>
    extends _$DownloadMediaParamsCopyWithImpl<$Res, _$DownloadMediaParamsImpl>
    implements _$$DownloadMediaParamsImplCopyWith<$Res> {
  __$$DownloadMediaParamsImplCopyWithImpl(_$DownloadMediaParamsImpl _value,
      $Res Function(_$DownloadMediaParamsImpl) _then)
      : super(_value, _then);

  /// Create a copy of DownloadMediaParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? media = null,
  }) {
    return _then(_$DownloadMediaParamsImpl(
      media: null == media
          ? _value.media
          : media // ignore: cast_nullable_to_non_nullable
              as MediaModel,
    ));
  }
}

/// @nodoc

class _$DownloadMediaParamsImpl extends _DownloadMediaParams {
  const _$DownloadMediaParamsImpl({required this.media}) : super._();

  @override
  final MediaModel media;

  @override
  String toString() {
    return 'DownloadMediaParams(media: $media)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DownloadMediaParamsImpl &&
            (identical(other.media, media) || other.media == media));
  }

  @override
  int get hashCode => Object.hash(runtimeType, media);

  /// Create a copy of DownloadMediaParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DownloadMediaParamsImplCopyWith<_$DownloadMediaParamsImpl> get copyWith =>
      __$$DownloadMediaParamsImplCopyWithImpl<_$DownloadMediaParamsImpl>(
          this, _$identity);
}

abstract class _DownloadMediaParams extends DownloadMediaParams {
  const factory _DownloadMediaParams({required final MediaModel media}) =
      _$DownloadMediaParamsImpl;
  const _DownloadMediaParams._() : super._();

  @override
  MediaModel get media;

  /// Create a copy of DownloadMediaParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DownloadMediaParamsImplCopyWith<_$DownloadMediaParamsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
