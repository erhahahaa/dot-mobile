// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_club.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CreateClubParams {
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  File? get image => throw _privateConstructorUsedError;
  SportType get type => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CreateClubParamsCopyWith<CreateClubParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateClubParamsCopyWith<$Res> {
  factory $CreateClubParamsCopyWith(
          CreateClubParams value, $Res Function(CreateClubParams) then) =
      _$CreateClubParamsCopyWithImpl<$Res, CreateClubParams>;
  @useResult
  $Res call({String name, String description, File? image, SportType type});
}

/// @nodoc
class _$CreateClubParamsCopyWithImpl<$Res, $Val extends CreateClubParams>
    implements $CreateClubParamsCopyWith<$Res> {
  _$CreateClubParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? description = null,
    Object? image = freezed,
    Object? type = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as File?,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as SportType,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreateClubParamsImplCopyWith<$Res>
    implements $CreateClubParamsCopyWith<$Res> {
  factory _$$CreateClubParamsImplCopyWith(_$CreateClubParamsImpl value,
          $Res Function(_$CreateClubParamsImpl) then) =
      __$$CreateClubParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String description, File? image, SportType type});
}

/// @nodoc
class __$$CreateClubParamsImplCopyWithImpl<$Res>
    extends _$CreateClubParamsCopyWithImpl<$Res, _$CreateClubParamsImpl>
    implements _$$CreateClubParamsImplCopyWith<$Res> {
  __$$CreateClubParamsImplCopyWithImpl(_$CreateClubParamsImpl _value,
      $Res Function(_$CreateClubParamsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? description = null,
    Object? image = freezed,
    Object? type = null,
  }) {
    return _then(_$CreateClubParamsImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as File?,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as SportType,
    ));
  }
}

/// @nodoc

class _$CreateClubParamsImpl extends _CreateClubParams {
  const _$CreateClubParamsImpl(
      {required this.name,
      required this.description,
      this.image,
      required this.type})
      : super._();

  @override
  final String name;
  @override
  final String description;
  @override
  final File? image;
  @override
  final SportType type;

  @override
  String toString() {
    return 'CreateClubParams(name: $name, description: $description, image: $image, type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateClubParamsImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.type, type) || other.type == type));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, description, image, type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateClubParamsImplCopyWith<_$CreateClubParamsImpl> get copyWith =>
      __$$CreateClubParamsImplCopyWithImpl<_$CreateClubParamsImpl>(
          this, _$identity);
}

abstract class _CreateClubParams extends CreateClubParams {
  const factory _CreateClubParams(
      {required final String name,
      required final String description,
      final File? image,
      required final SportType type}) = _$CreateClubParamsImpl;
  const _CreateClubParams._() : super._();

  @override
  String get name;
  @override
  String get description;
  @override
  File? get image;
  @override
  SportType get type;
  @override
  @JsonKey(ignore: true)
  _$$CreateClubParamsImplCopyWith<_$CreateClubParamsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
