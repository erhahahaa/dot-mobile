// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_club_usecase.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$UpdateClubParams {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  File? get image => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;

  /// Create a copy of UpdateClubParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UpdateClubParamsCopyWith<UpdateClubParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateClubParamsCopyWith<$Res> {
  factory $UpdateClubParamsCopyWith(
          UpdateClubParams value, $Res Function(UpdateClubParams) then) =
      _$UpdateClubParamsCopyWithImpl<$Res, UpdateClubParams>;
  @useResult
  $Res call(
      {int id, String name, String description, File? image, String type});
}

/// @nodoc
class _$UpdateClubParamsCopyWithImpl<$Res, $Val extends UpdateClubParams>
    implements $UpdateClubParamsCopyWith<$Res> {
  _$UpdateClubParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UpdateClubParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = null,
    Object? image = freezed,
    Object? type = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
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
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UpdateClubParamsImplCopyWith<$Res>
    implements $UpdateClubParamsCopyWith<$Res> {
  factory _$$UpdateClubParamsImplCopyWith(_$UpdateClubParamsImpl value,
          $Res Function(_$UpdateClubParamsImpl) then) =
      __$$UpdateClubParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id, String name, String description, File? image, String type});
}

/// @nodoc
class __$$UpdateClubParamsImplCopyWithImpl<$Res>
    extends _$UpdateClubParamsCopyWithImpl<$Res, _$UpdateClubParamsImpl>
    implements _$$UpdateClubParamsImplCopyWith<$Res> {
  __$$UpdateClubParamsImplCopyWithImpl(_$UpdateClubParamsImpl _value,
      $Res Function(_$UpdateClubParamsImpl) _then)
      : super(_value, _then);

  /// Create a copy of UpdateClubParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = null,
    Object? image = freezed,
    Object? type = null,
  }) {
    return _then(_$UpdateClubParamsImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
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
              as String,
    ));
  }
}

/// @nodoc

class _$UpdateClubParamsImpl extends _UpdateClubParams {
  const _$UpdateClubParamsImpl(
      {required this.id,
      required this.name,
      required this.description,
      required this.image,
      required this.type})
      : super._();

  @override
  final int id;
  @override
  final String name;
  @override
  final String description;
  @override
  final File? image;
  @override
  final String type;

  @override
  String toString() {
    return 'UpdateClubParams(id: $id, name: $name, description: $description, image: $image, type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateClubParamsImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.type, type) || other.type == type));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, description, image, type);

  /// Create a copy of UpdateClubParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateClubParamsImplCopyWith<_$UpdateClubParamsImpl> get copyWith =>
      __$$UpdateClubParamsImplCopyWithImpl<_$UpdateClubParamsImpl>(
          this, _$identity);
}

abstract class _UpdateClubParams extends UpdateClubParams {
  const factory _UpdateClubParams(
      {required final int id,
      required final String name,
      required final String description,
      required final File? image,
      required final String type}) = _$UpdateClubParamsImpl;
  const _UpdateClubParams._() : super._();

  @override
  int get id;
  @override
  String get name;
  @override
  String get description;
  @override
  File? get image;
  @override
  String get type;

  /// Create a copy of UpdateClubParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateClubParamsImplCopyWith<_$UpdateClubParamsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
