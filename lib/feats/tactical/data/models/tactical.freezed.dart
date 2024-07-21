// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tactical.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TacticalModel _$TacticalModelFromJson(Map<String, dynamic> json) {
  return _TacticalModel.fromJson(json);
}

/// @nodoc
mixin _$TacticalModel {
  int get id => throw _privateConstructorUsedError;
  int get clubId => throw _privateConstructorUsedError;
  int? get imageId => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  TacticalBoardModel? get board => throw _privateConstructorUsedError;
  TacticalTeamModel? get team => throw _privateConstructorUsedError;
  TacticalStrategicModel? get strategic => throw _privateConstructorUsedError;
  MediaEmbedModel? get media => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TacticalModelCopyWith<TacticalModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TacticalModelCopyWith<$Res> {
  factory $TacticalModelCopyWith(
          TacticalModel value, $Res Function(TacticalModel) then) =
      _$TacticalModelCopyWithImpl<$Res, TacticalModel>;
  @useResult
  $Res call(
      {int id,
      int clubId,
      int? imageId,
      String name,
      String? description,
      TacticalBoardModel? board,
      TacticalTeamModel? team,
      TacticalStrategicModel? strategic,
      MediaEmbedModel? media,
      DateTime? createdAt,
      DateTime? updatedAt});

  $TacticalBoardModelCopyWith<$Res>? get board;
  $TacticalTeamModelCopyWith<$Res>? get team;
  $TacticalStrategicModelCopyWith<$Res>? get strategic;
  $MediaEmbedModelCopyWith<$Res>? get media;
}

/// @nodoc
class _$TacticalModelCopyWithImpl<$Res, $Val extends TacticalModel>
    implements $TacticalModelCopyWith<$Res> {
  _$TacticalModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? clubId = null,
    Object? imageId = freezed,
    Object? name = null,
    Object? description = freezed,
    Object? board = freezed,
    Object? team = freezed,
    Object? strategic = freezed,
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
      imageId: freezed == imageId
          ? _value.imageId
          : imageId // ignore: cast_nullable_to_non_nullable
              as int?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      board: freezed == board
          ? _value.board
          : board // ignore: cast_nullable_to_non_nullable
              as TacticalBoardModel?,
      team: freezed == team
          ? _value.team
          : team // ignore: cast_nullable_to_non_nullable
              as TacticalTeamModel?,
      strategic: freezed == strategic
          ? _value.strategic
          : strategic // ignore: cast_nullable_to_non_nullable
              as TacticalStrategicModel?,
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

  @override
  @pragma('vm:prefer-inline')
  $TacticalBoardModelCopyWith<$Res>? get board {
    if (_value.board == null) {
      return null;
    }

    return $TacticalBoardModelCopyWith<$Res>(_value.board!, (value) {
      return _then(_value.copyWith(board: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $TacticalTeamModelCopyWith<$Res>? get team {
    if (_value.team == null) {
      return null;
    }

    return $TacticalTeamModelCopyWith<$Res>(_value.team!, (value) {
      return _then(_value.copyWith(team: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $TacticalStrategicModelCopyWith<$Res>? get strategic {
    if (_value.strategic == null) {
      return null;
    }

    return $TacticalStrategicModelCopyWith<$Res>(_value.strategic!, (value) {
      return _then(_value.copyWith(strategic: value) as $Val);
    });
  }

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
abstract class _$$TacticalModelImplCopyWith<$Res>
    implements $TacticalModelCopyWith<$Res> {
  factory _$$TacticalModelImplCopyWith(
          _$TacticalModelImpl value, $Res Function(_$TacticalModelImpl) then) =
      __$$TacticalModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      int clubId,
      int? imageId,
      String name,
      String? description,
      TacticalBoardModel? board,
      TacticalTeamModel? team,
      TacticalStrategicModel? strategic,
      MediaEmbedModel? media,
      DateTime? createdAt,
      DateTime? updatedAt});

  @override
  $TacticalBoardModelCopyWith<$Res>? get board;
  @override
  $TacticalTeamModelCopyWith<$Res>? get team;
  @override
  $TacticalStrategicModelCopyWith<$Res>? get strategic;
  @override
  $MediaEmbedModelCopyWith<$Res>? get media;
}

/// @nodoc
class __$$TacticalModelImplCopyWithImpl<$Res>
    extends _$TacticalModelCopyWithImpl<$Res, _$TacticalModelImpl>
    implements _$$TacticalModelImplCopyWith<$Res> {
  __$$TacticalModelImplCopyWithImpl(
      _$TacticalModelImpl _value, $Res Function(_$TacticalModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? clubId = null,
    Object? imageId = freezed,
    Object? name = null,
    Object? description = freezed,
    Object? board = freezed,
    Object? team = freezed,
    Object? strategic = freezed,
    Object? media = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$TacticalModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      clubId: null == clubId
          ? _value.clubId
          : clubId // ignore: cast_nullable_to_non_nullable
              as int,
      imageId: freezed == imageId
          ? _value.imageId
          : imageId // ignore: cast_nullable_to_non_nullable
              as int?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      board: freezed == board
          ? _value.board
          : board // ignore: cast_nullable_to_non_nullable
              as TacticalBoardModel?,
      team: freezed == team
          ? _value.team
          : team // ignore: cast_nullable_to_non_nullable
              as TacticalTeamModel?,
      strategic: freezed == strategic
          ? _value.strategic
          : strategic // ignore: cast_nullable_to_non_nullable
              as TacticalStrategicModel?,
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
class _$TacticalModelImpl implements _TacticalModel {
  const _$TacticalModelImpl(
      {this.id = 0,
      this.clubId = 0,
      this.imageId,
      this.name = 'SBY Tactical exhibition',
      this.description,
      this.board,
      this.team,
      this.strategic,
      this.media,
      this.createdAt,
      this.updatedAt});

  factory _$TacticalModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TacticalModelImplFromJson(json);

  @override
  @JsonKey()
  final int id;
  @override
  @JsonKey()
  final int clubId;
  @override
  final int? imageId;
  @override
  @JsonKey()
  final String name;
  @override
  final String? description;
  @override
  final TacticalBoardModel? board;
  @override
  final TacticalTeamModel? team;
  @override
  final TacticalStrategicModel? strategic;
  @override
  final MediaEmbedModel? media;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'TacticalModel(id: $id, clubId: $clubId, imageId: $imageId, name: $name, description: $description, board: $board, team: $team, strategic: $strategic, media: $media, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TacticalModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.clubId, clubId) || other.clubId == clubId) &&
            (identical(other.imageId, imageId) || other.imageId == imageId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.board, board) || other.board == board) &&
            (identical(other.team, team) || other.team == team) &&
            (identical(other.strategic, strategic) ||
                other.strategic == strategic) &&
            (identical(other.media, media) || other.media == media) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, clubId, imageId, name,
      description, board, team, strategic, media, createdAt, updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TacticalModelImplCopyWith<_$TacticalModelImpl> get copyWith =>
      __$$TacticalModelImplCopyWithImpl<_$TacticalModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TacticalModelImplToJson(
      this,
    );
  }
}

abstract class _TacticalModel implements TacticalModel {
  const factory _TacticalModel(
      {final int id,
      final int clubId,
      final int? imageId,
      final String name,
      final String? description,
      final TacticalBoardModel? board,
      final TacticalTeamModel? team,
      final TacticalStrategicModel? strategic,
      final MediaEmbedModel? media,
      final DateTime? createdAt,
      final DateTime? updatedAt}) = _$TacticalModelImpl;

  factory _TacticalModel.fromJson(Map<String, dynamic> json) =
      _$TacticalModelImpl.fromJson;

  @override
  int get id;
  @override
  int get clubId;
  @override
  int? get imageId;
  @override
  String get name;
  @override
  String? get description;
  @override
  TacticalBoardModel? get board;
  @override
  TacticalTeamModel? get team;
  @override
  TacticalStrategicModel? get strategic;
  @override
  MediaEmbedModel? get media;
  @override
  DateTime? get createdAt;
  @override
  DateTime? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$TacticalModelImplCopyWith<_$TacticalModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TacticalBoardModel _$TacticalBoardModelFromJson(Map<String, dynamic> json) {
  return _TacticalBoardModel.fromJson(json);
}

/// @nodoc
mixin _$TacticalBoardModel {
  String? get type => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TacticalBoardModelCopyWith<TacticalBoardModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TacticalBoardModelCopyWith<$Res> {
  factory $TacticalBoardModelCopyWith(
          TacticalBoardModel value, $Res Function(TacticalBoardModel) then) =
      _$TacticalBoardModelCopyWithImpl<$Res, TacticalBoardModel>;
  @useResult
  $Res call({String? type, String? name, String? url});
}

/// @nodoc
class _$TacticalBoardModelCopyWithImpl<$Res, $Val extends TacticalBoardModel>
    implements $TacticalBoardModelCopyWith<$Res> {
  _$TacticalBoardModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = freezed,
    Object? name = freezed,
    Object? url = freezed,
  }) {
    return _then(_value.copyWith(
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TacticalBoardModelImplCopyWith<$Res>
    implements $TacticalBoardModelCopyWith<$Res> {
  factory _$$TacticalBoardModelImplCopyWith(_$TacticalBoardModelImpl value,
          $Res Function(_$TacticalBoardModelImpl) then) =
      __$$TacticalBoardModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? type, String? name, String? url});
}

/// @nodoc
class __$$TacticalBoardModelImplCopyWithImpl<$Res>
    extends _$TacticalBoardModelCopyWithImpl<$Res, _$TacticalBoardModelImpl>
    implements _$$TacticalBoardModelImplCopyWith<$Res> {
  __$$TacticalBoardModelImplCopyWithImpl(_$TacticalBoardModelImpl _value,
      $Res Function(_$TacticalBoardModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = freezed,
    Object? name = freezed,
    Object? url = freezed,
  }) {
    return _then(_$TacticalBoardModelImpl(
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TacticalBoardModelImpl implements _TacticalBoardModel {
  const _$TacticalBoardModelImpl({this.type, this.name, this.url});

  factory _$TacticalBoardModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TacticalBoardModelImplFromJson(json);

  @override
  final String? type;
  @override
  final String? name;
  @override
  final String? url;

  @override
  String toString() {
    return 'TacticalBoardModel(type: $type, name: $name, url: $url)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TacticalBoardModelImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, type, name, url);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TacticalBoardModelImplCopyWith<_$TacticalBoardModelImpl> get copyWith =>
      __$$TacticalBoardModelImplCopyWithImpl<_$TacticalBoardModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TacticalBoardModelImplToJson(
      this,
    );
  }
}

abstract class _TacticalBoardModel implements TacticalBoardModel {
  const factory _TacticalBoardModel(
      {final String? type,
      final String? name,
      final String? url}) = _$TacticalBoardModelImpl;

  factory _TacticalBoardModel.fromJson(Map<String, dynamic> json) =
      _$TacticalBoardModelImpl.fromJson;

  @override
  String? get type;
  @override
  String? get name;
  @override
  String? get url;
  @override
  @JsonKey(ignore: true)
  _$$TacticalBoardModelImplCopyWith<_$TacticalBoardModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TacticalTeamModel _$TacticalTeamModelFromJson(Map<String, dynamic> json) {
  return _TacticalTeamModel.fromJson(json);
}

/// @nodoc
mixin _$TacticalTeamModel {
  String? get name => throw _privateConstructorUsedError;
  String? get color => throw _privateConstructorUsedError;
  int? get totalMembers => throw _privateConstructorUsedError;
  List<TacticalTeamMemberModel>? get members =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TacticalTeamModelCopyWith<TacticalTeamModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TacticalTeamModelCopyWith<$Res> {
  factory $TacticalTeamModelCopyWith(
          TacticalTeamModel value, $Res Function(TacticalTeamModel) then) =
      _$TacticalTeamModelCopyWithImpl<$Res, TacticalTeamModel>;
  @useResult
  $Res call(
      {String? name,
      String? color,
      int? totalMembers,
      List<TacticalTeamMemberModel>? members});
}

/// @nodoc
class _$TacticalTeamModelCopyWithImpl<$Res, $Val extends TacticalTeamModel>
    implements $TacticalTeamModelCopyWith<$Res> {
  _$TacticalTeamModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? color = freezed,
    Object? totalMembers = freezed,
    Object? members = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String?,
      totalMembers: freezed == totalMembers
          ? _value.totalMembers
          : totalMembers // ignore: cast_nullable_to_non_nullable
              as int?,
      members: freezed == members
          ? _value.members
          : members // ignore: cast_nullable_to_non_nullable
              as List<TacticalTeamMemberModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TacticalTeamModelImplCopyWith<$Res>
    implements $TacticalTeamModelCopyWith<$Res> {
  factory _$$TacticalTeamModelImplCopyWith(_$TacticalTeamModelImpl value,
          $Res Function(_$TacticalTeamModelImpl) then) =
      __$$TacticalTeamModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? name,
      String? color,
      int? totalMembers,
      List<TacticalTeamMemberModel>? members});
}

/// @nodoc
class __$$TacticalTeamModelImplCopyWithImpl<$Res>
    extends _$TacticalTeamModelCopyWithImpl<$Res, _$TacticalTeamModelImpl>
    implements _$$TacticalTeamModelImplCopyWith<$Res> {
  __$$TacticalTeamModelImplCopyWithImpl(_$TacticalTeamModelImpl _value,
      $Res Function(_$TacticalTeamModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? color = freezed,
    Object? totalMembers = freezed,
    Object? members = freezed,
  }) {
    return _then(_$TacticalTeamModelImpl(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String?,
      totalMembers: freezed == totalMembers
          ? _value.totalMembers
          : totalMembers // ignore: cast_nullable_to_non_nullable
              as int?,
      members: freezed == members
          ? _value._members
          : members // ignore: cast_nullable_to_non_nullable
              as List<TacticalTeamMemberModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TacticalTeamModelImpl implements _TacticalTeamModel {
  const _$TacticalTeamModelImpl(
      {this.name,
      this.color,
      this.totalMembers,
      final List<TacticalTeamMemberModel>? members})
      : _members = members;

  factory _$TacticalTeamModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TacticalTeamModelImplFromJson(json);

  @override
  final String? name;
  @override
  final String? color;
  @override
  final int? totalMembers;
  final List<TacticalTeamMemberModel>? _members;
  @override
  List<TacticalTeamMemberModel>? get members {
    final value = _members;
    if (value == null) return null;
    if (_members is EqualUnmodifiableListView) return _members;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'TacticalTeamModel(name: $name, color: $color, totalMembers: $totalMembers, members: $members)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TacticalTeamModelImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.totalMembers, totalMembers) ||
                other.totalMembers == totalMembers) &&
            const DeepCollectionEquality().equals(other._members, _members));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, color, totalMembers,
      const DeepCollectionEquality().hash(_members));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TacticalTeamModelImplCopyWith<_$TacticalTeamModelImpl> get copyWith =>
      __$$TacticalTeamModelImplCopyWithImpl<_$TacticalTeamModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TacticalTeamModelImplToJson(
      this,
    );
  }
}

abstract class _TacticalTeamModel implements TacticalTeamModel {
  const factory _TacticalTeamModel(
      {final String? name,
      final String? color,
      final int? totalMembers,
      final List<TacticalTeamMemberModel>? members}) = _$TacticalTeamModelImpl;

  factory _TacticalTeamModel.fromJson(Map<String, dynamic> json) =
      _$TacticalTeamModelImpl.fromJson;

  @override
  String? get name;
  @override
  String? get color;
  @override
  int? get totalMembers;
  @override
  List<TacticalTeamMemberModel>? get members;
  @override
  @JsonKey(ignore: true)
  _$$TacticalTeamModelImplCopyWith<_$TacticalTeamModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TacticalTeamMemberModel _$TacticalTeamMemberModelFromJson(
    Map<String, dynamic> json) {
  return _TacticalTeamMemberModel.fromJson(json);
}

/// @nodoc
mixin _$TacticalTeamMemberModel {
  String? get name => throw _privateConstructorUsedError;
  int? get number => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TacticalTeamMemberModelCopyWith<TacticalTeamMemberModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TacticalTeamMemberModelCopyWith<$Res> {
  factory $TacticalTeamMemberModelCopyWith(TacticalTeamMemberModel value,
          $Res Function(TacticalTeamMemberModel) then) =
      _$TacticalTeamMemberModelCopyWithImpl<$Res, TacticalTeamMemberModel>;
  @useResult
  $Res call({String? name, int? number});
}

/// @nodoc
class _$TacticalTeamMemberModelCopyWithImpl<$Res,
        $Val extends TacticalTeamMemberModel>
    implements $TacticalTeamMemberModelCopyWith<$Res> {
  _$TacticalTeamMemberModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? number = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      number: freezed == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TacticalTeamMemberModelImplCopyWith<$Res>
    implements $TacticalTeamMemberModelCopyWith<$Res> {
  factory _$$TacticalTeamMemberModelImplCopyWith(
          _$TacticalTeamMemberModelImpl value,
          $Res Function(_$TacticalTeamMemberModelImpl) then) =
      __$$TacticalTeamMemberModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? name, int? number});
}

/// @nodoc
class __$$TacticalTeamMemberModelImplCopyWithImpl<$Res>
    extends _$TacticalTeamMemberModelCopyWithImpl<$Res,
        _$TacticalTeamMemberModelImpl>
    implements _$$TacticalTeamMemberModelImplCopyWith<$Res> {
  __$$TacticalTeamMemberModelImplCopyWithImpl(
      _$TacticalTeamMemberModelImpl _value,
      $Res Function(_$TacticalTeamMemberModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? number = freezed,
  }) {
    return _then(_$TacticalTeamMemberModelImpl(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      number: freezed == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TacticalTeamMemberModelImpl implements _TacticalTeamMemberModel {
  const _$TacticalTeamMemberModelImpl({this.name, this.number});

  factory _$TacticalTeamMemberModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TacticalTeamMemberModelImplFromJson(json);

  @override
  final String? name;
  @override
  final int? number;

  @override
  String toString() {
    return 'TacticalTeamMemberModel(name: $name, number: $number)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TacticalTeamMemberModelImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.number, number) || other.number == number));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, number);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TacticalTeamMemberModelImplCopyWith<_$TacticalTeamMemberModelImpl>
      get copyWith => __$$TacticalTeamMemberModelImplCopyWithImpl<
          _$TacticalTeamMemberModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TacticalTeamMemberModelImplToJson(
      this,
    );
  }
}

abstract class _TacticalTeamMemberModel implements TacticalTeamMemberModel {
  const factory _TacticalTeamMemberModel(
      {final String? name, final int? number}) = _$TacticalTeamMemberModelImpl;

  factory _TacticalTeamMemberModel.fromJson(Map<String, dynamic> json) =
      _$TacticalTeamMemberModelImpl.fromJson;

  @override
  String? get name;
  @override
  int? get number;
  @override
  @JsonKey(ignore: true)
  _$$TacticalTeamMemberModelImplCopyWith<_$TacticalTeamMemberModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

TacticalStrategicModel _$TacticalStrategicModelFromJson(
    Map<String, dynamic> json) {
  return _TacticalStrategicModel.fromJson(json);
}

/// @nodoc
mixin _$TacticalStrategicModel {
  Map<String, dynamic>? get value => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TacticalStrategicModelCopyWith<TacticalStrategicModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TacticalStrategicModelCopyWith<$Res> {
  factory $TacticalStrategicModelCopyWith(TacticalStrategicModel value,
          $Res Function(TacticalStrategicModel) then) =
      _$TacticalStrategicModelCopyWithImpl<$Res, TacticalStrategicModel>;
  @useResult
  $Res call({Map<String, dynamic>? value});
}

/// @nodoc
class _$TacticalStrategicModelCopyWithImpl<$Res,
        $Val extends TacticalStrategicModel>
    implements $TacticalStrategicModelCopyWith<$Res> {
  _$TacticalStrategicModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_value.copyWith(
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TacticalStrategicModelImplCopyWith<$Res>
    implements $TacticalStrategicModelCopyWith<$Res> {
  factory _$$TacticalStrategicModelImplCopyWith(
          _$TacticalStrategicModelImpl value,
          $Res Function(_$TacticalStrategicModelImpl) then) =
      __$$TacticalStrategicModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Map<String, dynamic>? value});
}

/// @nodoc
class __$$TacticalStrategicModelImplCopyWithImpl<$Res>
    extends _$TacticalStrategicModelCopyWithImpl<$Res,
        _$TacticalStrategicModelImpl>
    implements _$$TacticalStrategicModelImplCopyWith<$Res> {
  __$$TacticalStrategicModelImplCopyWithImpl(
      _$TacticalStrategicModelImpl _value,
      $Res Function(_$TacticalStrategicModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_$TacticalStrategicModelImpl(
      value: freezed == value
          ? _value._value
          : value // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TacticalStrategicModelImpl implements _TacticalStrategicModel {
  const _$TacticalStrategicModelImpl({final Map<String, dynamic>? value})
      : _value = value;

  factory _$TacticalStrategicModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TacticalStrategicModelImplFromJson(json);

  final Map<String, dynamic>? _value;
  @override
  Map<String, dynamic>? get value {
    final value = _value;
    if (value == null) return null;
    if (_value is EqualUnmodifiableMapView) return _value;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'TacticalStrategicModel(value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TacticalStrategicModelImpl &&
            const DeepCollectionEquality().equals(other._value, _value));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_value));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TacticalStrategicModelImplCopyWith<_$TacticalStrategicModelImpl>
      get copyWith => __$$TacticalStrategicModelImplCopyWithImpl<
          _$TacticalStrategicModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TacticalStrategicModelImplToJson(
      this,
    );
  }
}

abstract class _TacticalStrategicModel implements TacticalStrategicModel {
  const factory _TacticalStrategicModel({final Map<String, dynamic>? value}) =
      _$TacticalStrategicModelImpl;

  factory _TacticalStrategicModel.fromJson(Map<String, dynamic> json) =
      _$TacticalStrategicModelImpl.fromJson;

  @override
  Map<String, dynamic>? get value;
  @override
  @JsonKey(ignore: true)
  _$$TacticalStrategicModelImplCopyWith<_$TacticalStrategicModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
