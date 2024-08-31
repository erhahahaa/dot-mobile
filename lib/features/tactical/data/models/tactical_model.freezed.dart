// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tactical_model.dart';

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
  int? get mediaId => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  TacticalBoardModel get board => throw _privateConstructorUsedError;
  TacticalStrategicModel? get strategic => throw _privateConstructorUsedError;
  bool get isLive => throw _privateConstructorUsedError;
  MediaModel? get media => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this TacticalModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TacticalModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
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
      int? mediaId,
      String name,
      String? description,
      TacticalBoardModel board,
      TacticalStrategicModel? strategic,
      bool isLive,
      MediaModel? media,
      DateTime? createdAt,
      DateTime? updatedAt});

  $TacticalBoardModelCopyWith<$Res> get board;
  $TacticalStrategicModelCopyWith<$Res>? get strategic;
  $MediaModelCopyWith<$Res>? get media;
}

/// @nodoc
class _$TacticalModelCopyWithImpl<$Res, $Val extends TacticalModel>
    implements $TacticalModelCopyWith<$Res> {
  _$TacticalModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TacticalModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? clubId = null,
    Object? mediaId = freezed,
    Object? name = null,
    Object? description = freezed,
    Object? board = null,
    Object? strategic = freezed,
    Object? isLive = null,
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
      mediaId: freezed == mediaId
          ? _value.mediaId
          : mediaId // ignore: cast_nullable_to_non_nullable
              as int?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      board: null == board
          ? _value.board
          : board // ignore: cast_nullable_to_non_nullable
              as TacticalBoardModel,
      strategic: freezed == strategic
          ? _value.strategic
          : strategic // ignore: cast_nullable_to_non_nullable
              as TacticalStrategicModel?,
      isLive: null == isLive
          ? _value.isLive
          : isLive // ignore: cast_nullable_to_non_nullable
              as bool,
      media: freezed == media
          ? _value.media
          : media // ignore: cast_nullable_to_non_nullable
              as MediaModel?,
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

  /// Create a copy of TacticalModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TacticalBoardModelCopyWith<$Res> get board {
    return $TacticalBoardModelCopyWith<$Res>(_value.board, (value) {
      return _then(_value.copyWith(board: value) as $Val);
    });
  }

  /// Create a copy of TacticalModel
  /// with the given fields replaced by the non-null parameter values.
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

  /// Create a copy of TacticalModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MediaModelCopyWith<$Res>? get media {
    if (_value.media == null) {
      return null;
    }

    return $MediaModelCopyWith<$Res>(_value.media!, (value) {
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
      int? mediaId,
      String name,
      String? description,
      TacticalBoardModel board,
      TacticalStrategicModel? strategic,
      bool isLive,
      MediaModel? media,
      DateTime? createdAt,
      DateTime? updatedAt});

  @override
  $TacticalBoardModelCopyWith<$Res> get board;
  @override
  $TacticalStrategicModelCopyWith<$Res>? get strategic;
  @override
  $MediaModelCopyWith<$Res>? get media;
}

/// @nodoc
class __$$TacticalModelImplCopyWithImpl<$Res>
    extends _$TacticalModelCopyWithImpl<$Res, _$TacticalModelImpl>
    implements _$$TacticalModelImplCopyWith<$Res> {
  __$$TacticalModelImplCopyWithImpl(
      _$TacticalModelImpl _value, $Res Function(_$TacticalModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of TacticalModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? clubId = null,
    Object? mediaId = freezed,
    Object? name = null,
    Object? description = freezed,
    Object? board = null,
    Object? strategic = freezed,
    Object? isLive = null,
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
      mediaId: freezed == mediaId
          ? _value.mediaId
          : mediaId // ignore: cast_nullable_to_non_nullable
              as int?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      board: null == board
          ? _value.board
          : board // ignore: cast_nullable_to_non_nullable
              as TacticalBoardModel,
      strategic: freezed == strategic
          ? _value.strategic
          : strategic // ignore: cast_nullable_to_non_nullable
              as TacticalStrategicModel?,
      isLive: null == isLive
          ? _value.isLive
          : isLive // ignore: cast_nullable_to_non_nullable
              as bool,
      media: freezed == media
          ? _value.media
          : media // ignore: cast_nullable_to_non_nullable
              as MediaModel?,
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
class _$TacticalModelImpl extends _TacticalModel {
  const _$TacticalModelImpl(
      {this.id = 0,
      this.clubId = 0,
      this.mediaId,
      this.name = 'SBY Tactical exhibition',
      this.description,
      this.board = const TacticalBoardModel(),
      this.strategic,
      this.isLive = false,
      this.media,
      this.createdAt,
      this.updatedAt})
      : super._();

  factory _$TacticalModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TacticalModelImplFromJson(json);

  @override
  @JsonKey()
  final int id;
  @override
  @JsonKey()
  final int clubId;
  @override
  final int? mediaId;
  @override
  @JsonKey()
  final String name;
  @override
  final String? description;
  @override
  @JsonKey()
  final TacticalBoardModel board;
  @override
  final TacticalStrategicModel? strategic;
  @override
  @JsonKey()
  final bool isLive;
  @override
  final MediaModel? media;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'TacticalModel(id: $id, clubId: $clubId, mediaId: $mediaId, name: $name, description: $description, board: $board, strategic: $strategic, isLive: $isLive, media: $media, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TacticalModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.clubId, clubId) || other.clubId == clubId) &&
            (identical(other.mediaId, mediaId) || other.mediaId == mediaId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.board, board) || other.board == board) &&
            (identical(other.strategic, strategic) ||
                other.strategic == strategic) &&
            (identical(other.isLive, isLive) || other.isLive == isLive) &&
            (identical(other.media, media) || other.media == media) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, clubId, mediaId, name,
      description, board, strategic, isLive, media, createdAt, updatedAt);

  /// Create a copy of TacticalModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
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

abstract class _TacticalModel extends TacticalModel {
  const factory _TacticalModel(
      {final int id,
      final int clubId,
      final int? mediaId,
      final String name,
      final String? description,
      final TacticalBoardModel board,
      final TacticalStrategicModel? strategic,
      final bool isLive,
      final MediaModel? media,
      final DateTime? createdAt,
      final DateTime? updatedAt}) = _$TacticalModelImpl;
  const _TacticalModel._() : super._();

  factory _TacticalModel.fromJson(Map<String, dynamic> json) =
      _$TacticalModelImpl.fromJson;

  @override
  int get id;
  @override
  int get clubId;
  @override
  int? get mediaId;
  @override
  String get name;
  @override
  String? get description;
  @override
  TacticalBoardModel get board;
  @override
  TacticalStrategicModel? get strategic;
  @override
  bool get isLive;
  @override
  MediaModel? get media;
  @override
  DateTime? get createdAt;
  @override
  DateTime? get updatedAt;

  /// Create a copy of TacticalModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TacticalModelImplCopyWith<_$TacticalModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TacticalBoardModel _$TacticalBoardModelFromJson(Map<String, dynamic> json) {
  return _TacticalBoardModel.fromJson(json);
}

/// @nodoc
mixin _$TacticalBoardModel {
  double get width => throw _privateConstructorUsedError;
  double get height => throw _privateConstructorUsedError;

  /// Serializes this TacticalBoardModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TacticalBoardModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TacticalBoardModelCopyWith<TacticalBoardModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TacticalBoardModelCopyWith<$Res> {
  factory $TacticalBoardModelCopyWith(
          TacticalBoardModel value, $Res Function(TacticalBoardModel) then) =
      _$TacticalBoardModelCopyWithImpl<$Res, TacticalBoardModel>;
  @useResult
  $Res call({double width, double height});
}

/// @nodoc
class _$TacticalBoardModelCopyWithImpl<$Res, $Val extends TacticalBoardModel>
    implements $TacticalBoardModelCopyWith<$Res> {
  _$TacticalBoardModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TacticalBoardModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? width = null,
    Object? height = null,
  }) {
    return _then(_value.copyWith(
      width: null == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as double,
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as double,
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
  $Res call({double width, double height});
}

/// @nodoc
class __$$TacticalBoardModelImplCopyWithImpl<$Res>
    extends _$TacticalBoardModelCopyWithImpl<$Res, _$TacticalBoardModelImpl>
    implements _$$TacticalBoardModelImplCopyWith<$Res> {
  __$$TacticalBoardModelImplCopyWithImpl(_$TacticalBoardModelImpl _value,
      $Res Function(_$TacticalBoardModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of TacticalBoardModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? width = null,
    Object? height = null,
  }) {
    return _then(_$TacticalBoardModelImpl(
      width: null == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as double,
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TacticalBoardModelImpl implements _TacticalBoardModel {
  const _$TacticalBoardModelImpl({this.width = 0, this.height = 0});

  factory _$TacticalBoardModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TacticalBoardModelImplFromJson(json);

  @override
  @JsonKey()
  final double width;
  @override
  @JsonKey()
  final double height;

  @override
  String toString() {
    return 'TacticalBoardModel(width: $width, height: $height)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TacticalBoardModelImpl &&
            (identical(other.width, width) || other.width == width) &&
            (identical(other.height, height) || other.height == height));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, width, height);

  /// Create a copy of TacticalBoardModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
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
  const factory _TacticalBoardModel({final double width, final double height}) =
      _$TacticalBoardModelImpl;

  factory _TacticalBoardModel.fromJson(Map<String, dynamic> json) =
      _$TacticalBoardModelImpl.fromJson;

  @override
  double get width;
  @override
  double get height;

  /// Create a copy of TacticalBoardModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TacticalBoardModelImplCopyWith<_$TacticalBoardModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TacticalStrategicModel _$TacticalStrategicModelFromJson(
    Map<String, dynamic> json) {
  return _TacticalStrategicModel.fromJson(json);
}

/// @nodoc
mixin _$TacticalStrategicModel {
  List<PlayerModel> get players => throw _privateConstructorUsedError;
  List<ArrowModel> get arrows => throw _privateConstructorUsedError;

  /// Serializes this TacticalStrategicModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TacticalStrategicModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TacticalStrategicModelCopyWith<TacticalStrategicModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TacticalStrategicModelCopyWith<$Res> {
  factory $TacticalStrategicModelCopyWith(TacticalStrategicModel value,
          $Res Function(TacticalStrategicModel) then) =
      _$TacticalStrategicModelCopyWithImpl<$Res, TacticalStrategicModel>;
  @useResult
  $Res call({List<PlayerModel> players, List<ArrowModel> arrows});
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

  /// Create a copy of TacticalStrategicModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? players = null,
    Object? arrows = null,
  }) {
    return _then(_value.copyWith(
      players: null == players
          ? _value.players
          : players // ignore: cast_nullable_to_non_nullable
              as List<PlayerModel>,
      arrows: null == arrows
          ? _value.arrows
          : arrows // ignore: cast_nullable_to_non_nullable
              as List<ArrowModel>,
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
  $Res call({List<PlayerModel> players, List<ArrowModel> arrows});
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

  /// Create a copy of TacticalStrategicModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? players = null,
    Object? arrows = null,
  }) {
    return _then(_$TacticalStrategicModelImpl(
      players: null == players
          ? _value._players
          : players // ignore: cast_nullable_to_non_nullable
              as List<PlayerModel>,
      arrows: null == arrows
          ? _value._arrows
          : arrows // ignore: cast_nullable_to_non_nullable
              as List<ArrowModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TacticalStrategicModelImpl implements _TacticalStrategicModel {
  const _$TacticalStrategicModelImpl(
      {final List<PlayerModel> players = const [],
      final List<ArrowModel> arrows = const []})
      : _players = players,
        _arrows = arrows;

  factory _$TacticalStrategicModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TacticalStrategicModelImplFromJson(json);

  final List<PlayerModel> _players;
  @override
  @JsonKey()
  List<PlayerModel> get players {
    if (_players is EqualUnmodifiableListView) return _players;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_players);
  }

  final List<ArrowModel> _arrows;
  @override
  @JsonKey()
  List<ArrowModel> get arrows {
    if (_arrows is EqualUnmodifiableListView) return _arrows;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_arrows);
  }

  @override
  String toString() {
    return 'TacticalStrategicModel(players: $players, arrows: $arrows)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TacticalStrategicModelImpl &&
            const DeepCollectionEquality().equals(other._players, _players) &&
            const DeepCollectionEquality().equals(other._arrows, _arrows));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_players),
      const DeepCollectionEquality().hash(_arrows));

  /// Create a copy of TacticalStrategicModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
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
  const factory _TacticalStrategicModel(
      {final List<PlayerModel> players,
      final List<ArrowModel> arrows}) = _$TacticalStrategicModelImpl;

  factory _TacticalStrategicModel.fromJson(Map<String, dynamic> json) =
      _$TacticalStrategicModelImpl.fromJson;

  @override
  List<PlayerModel> get players;
  @override
  List<ArrowModel> get arrows;

  /// Create a copy of TacticalStrategicModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TacticalStrategicModelImplCopyWith<_$TacticalStrategicModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
