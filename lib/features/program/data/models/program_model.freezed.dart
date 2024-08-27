// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'program_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ProgramModel _$ProgramModelFromJson(Map<String, dynamic> json) {
  return _ProgramModel.fromJson(json);
}

/// @nodoc
mixin _$ProgramModel {
  int get id => throw _privateConstructorUsedError;
  int get clubId => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  DateTime? get startDate => throw _privateConstructorUsedError;
  DateTime? get endDate => throw _privateConstructorUsedError;
  MediaEmbedModel? get media => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this ProgramModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProgramModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProgramModelCopyWith<ProgramModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProgramModelCopyWith<$Res> {
  factory $ProgramModelCopyWith(
          ProgramModel value, $Res Function(ProgramModel) then) =
      _$ProgramModelCopyWithImpl<$Res, ProgramModel>;
  @useResult
  $Res call(
      {int id,
      int clubId,
      String name,
      DateTime? startDate,
      DateTime? endDate,
      MediaEmbedModel? media,
      DateTime? createdAt,
      DateTime? updatedAt});

  $MediaEmbedModelCopyWith<$Res>? get media;
}

/// @nodoc
class _$ProgramModelCopyWithImpl<$Res, $Val extends ProgramModel>
    implements $ProgramModelCopyWith<$Res> {
  _$ProgramModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProgramModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? clubId = null,
    Object? name = null,
    Object? startDate = freezed,
    Object? endDate = freezed,
    Object? media = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      clubId: null == clubId
          ? _value.clubId
          : clubId // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      startDate: freezed == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      endDate: freezed == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      media: freezed == media
          ? _value.media
          : media // ignore: cast_nullable_to_non_nullable
              as MediaEmbedModel?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }

  /// Create a copy of ProgramModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MediaEmbedModelCopyWith<$Res>? get media {
    if (_value.media == null) {
      return null;
    }

    return $MediaEmbedModelCopyWith<$Res>(_value.media!, (value) {
      return _then(_value.copyWith(media: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ProgramModelImplCopyWith<$Res>
    implements $ProgramModelCopyWith<$Res> {
  factory _$$ProgramModelImplCopyWith(
          _$ProgramModelImpl value, $Res Function(_$ProgramModelImpl) then) =
      __$$ProgramModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      int clubId,
      String name,
      DateTime? startDate,
      DateTime? endDate,
      MediaEmbedModel? media,
      DateTime? createdAt,
      DateTime? updatedAt});

  @override
  $MediaEmbedModelCopyWith<$Res>? get media;
}

/// @nodoc
class __$$ProgramModelImplCopyWithImpl<$Res>
    extends _$ProgramModelCopyWithImpl<$Res, _$ProgramModelImpl>
    implements _$$ProgramModelImplCopyWith<$Res> {
  __$$ProgramModelImplCopyWithImpl(
      _$ProgramModelImpl _value, $Res Function(_$ProgramModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProgramModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? clubId = null,
    Object? name = null,
    Object? startDate = freezed,
    Object? endDate = freezed,
    Object? media = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$ProgramModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      clubId: null == clubId
          ? _value.clubId
          : clubId // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      startDate: freezed == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      endDate: freezed == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      media: freezed == media
          ? _value.media
          : media // ignore: cast_nullable_to_non_nullable
              as MediaEmbedModel?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProgramModelImpl extends _ProgramModel {
  const _$ProgramModelImpl(
      {this.id = 0,
      this.clubId = 0,
      this.name = 'DOT Sport',
      this.startDate,
      this.endDate,
      this.media,
      this.createdAt,
      this.updatedAt})
      : super._();

  factory _$ProgramModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProgramModelImplFromJson(json);

  @override
  @JsonKey()
  final int id;
  @override
  @JsonKey()
  final int clubId;
  @override
  @JsonKey()
  final String name;
  @override
  final DateTime? startDate;
  @override
  final DateTime? endDate;
  @override
  final MediaEmbedModel? media;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'ProgramModel(id: $id, clubId: $clubId, name: $name, startDate: $startDate, endDate: $endDate, media: $media, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProgramModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.clubId, clubId) || other.clubId == clubId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate) &&
            (identical(other.media, media) || other.media == media) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, clubId, name, startDate,
      endDate, media, createdAt, updatedAt);

  /// Create a copy of ProgramModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProgramModelImplCopyWith<_$ProgramModelImpl> get copyWith =>
      __$$ProgramModelImplCopyWithImpl<_$ProgramModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProgramModelImplToJson(
      this,
    );
  }
}

abstract class _ProgramModel extends ProgramModel {
  const factory _ProgramModel(
      {final int id,
      final int clubId,
      final String name,
      final DateTime? startDate,
      final DateTime? endDate,
      final MediaEmbedModel? media,
      final DateTime? createdAt,
      final DateTime? updatedAt}) = _$ProgramModelImpl;
  const _ProgramModel._() : super._();

  factory _ProgramModel.fromJson(Map<String, dynamic> json) =
      _$ProgramModelImpl.fromJson;

  @override
  int get id;
  @override
  int get clubId;
  @override
  String get name;
  @override
  DateTime? get startDate;
  @override
  DateTime? get endDate;
  @override
  MediaEmbedModel? get media;
  @override
  DateTime? get createdAt;
  @override
  DateTime? get updatedAt;

  /// Create a copy of ProgramModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProgramModelImplCopyWith<_$ProgramModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
