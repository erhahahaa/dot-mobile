// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'club_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ClubEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getClubs,
    required TResult Function(String query) filterClubs,
    required TResult Function() clear,
    required TResult Function(CreateClubParams params) create,
    required TResult Function(UpdateClubParams params) update,
    required TResult Function(DeleteClubParams params) delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getClubs,
    TResult? Function(String query)? filterClubs,
    TResult? Function()? clear,
    TResult? Function(CreateClubParams params)? create,
    TResult? Function(UpdateClubParams params)? update,
    TResult? Function(DeleteClubParams params)? delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getClubs,
    TResult Function(String query)? filterClubs,
    TResult Function()? clear,
    TResult Function(CreateClubParams params)? create,
    TResult Function(UpdateClubParams params)? update,
    TResult Function(DeleteClubParams params)? delete,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ClubEventGetClubs value) getClubs,
    required TResult Function(ClubEventFilterClubs value) filterClubs,
    required TResult Function(ClubEventClear value) clear,
    required TResult Function(ClubEventCreate value) create,
    required TResult Function(ClubEventUpdate value) update,
    required TResult Function(ClubEventDelete value) delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ClubEventGetClubs value)? getClubs,
    TResult? Function(ClubEventFilterClubs value)? filterClubs,
    TResult? Function(ClubEventClear value)? clear,
    TResult? Function(ClubEventCreate value)? create,
    TResult? Function(ClubEventUpdate value)? update,
    TResult? Function(ClubEventDelete value)? delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ClubEventGetClubs value)? getClubs,
    TResult Function(ClubEventFilterClubs value)? filterClubs,
    TResult Function(ClubEventClear value)? clear,
    TResult Function(ClubEventCreate value)? create,
    TResult Function(ClubEventUpdate value)? update,
    TResult Function(ClubEventDelete value)? delete,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClubEventCopyWith<$Res> {
  factory $ClubEventCopyWith(ClubEvent value, $Res Function(ClubEvent) then) =
      _$ClubEventCopyWithImpl<$Res, ClubEvent>;
}

/// @nodoc
class _$ClubEventCopyWithImpl<$Res, $Val extends ClubEvent>
    implements $ClubEventCopyWith<$Res> {
  _$ClubEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ClubEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$ClubEventGetClubsImplCopyWith<$Res> {
  factory _$$ClubEventGetClubsImplCopyWith(_$ClubEventGetClubsImpl value,
          $Res Function(_$ClubEventGetClubsImpl) then) =
      __$$ClubEventGetClubsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ClubEventGetClubsImplCopyWithImpl<$Res>
    extends _$ClubEventCopyWithImpl<$Res, _$ClubEventGetClubsImpl>
    implements _$$ClubEventGetClubsImplCopyWith<$Res> {
  __$$ClubEventGetClubsImplCopyWithImpl(_$ClubEventGetClubsImpl _value,
      $Res Function(_$ClubEventGetClubsImpl) _then)
      : super(_value, _then);

  /// Create a copy of ClubEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ClubEventGetClubsImpl implements ClubEventGetClubs {
  const _$ClubEventGetClubsImpl();

  @override
  String toString() {
    return 'ClubEvent.getClubs()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ClubEventGetClubsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getClubs,
    required TResult Function(String query) filterClubs,
    required TResult Function() clear,
    required TResult Function(CreateClubParams params) create,
    required TResult Function(UpdateClubParams params) update,
    required TResult Function(DeleteClubParams params) delete,
  }) {
    return getClubs();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getClubs,
    TResult? Function(String query)? filterClubs,
    TResult? Function()? clear,
    TResult? Function(CreateClubParams params)? create,
    TResult? Function(UpdateClubParams params)? update,
    TResult? Function(DeleteClubParams params)? delete,
  }) {
    return getClubs?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getClubs,
    TResult Function(String query)? filterClubs,
    TResult Function()? clear,
    TResult Function(CreateClubParams params)? create,
    TResult Function(UpdateClubParams params)? update,
    TResult Function(DeleteClubParams params)? delete,
    required TResult orElse(),
  }) {
    if (getClubs != null) {
      return getClubs();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ClubEventGetClubs value) getClubs,
    required TResult Function(ClubEventFilterClubs value) filterClubs,
    required TResult Function(ClubEventClear value) clear,
    required TResult Function(ClubEventCreate value) create,
    required TResult Function(ClubEventUpdate value) update,
    required TResult Function(ClubEventDelete value) delete,
  }) {
    return getClubs(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ClubEventGetClubs value)? getClubs,
    TResult? Function(ClubEventFilterClubs value)? filterClubs,
    TResult? Function(ClubEventClear value)? clear,
    TResult? Function(ClubEventCreate value)? create,
    TResult? Function(ClubEventUpdate value)? update,
    TResult? Function(ClubEventDelete value)? delete,
  }) {
    return getClubs?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ClubEventGetClubs value)? getClubs,
    TResult Function(ClubEventFilterClubs value)? filterClubs,
    TResult Function(ClubEventClear value)? clear,
    TResult Function(ClubEventCreate value)? create,
    TResult Function(ClubEventUpdate value)? update,
    TResult Function(ClubEventDelete value)? delete,
    required TResult orElse(),
  }) {
    if (getClubs != null) {
      return getClubs(this);
    }
    return orElse();
  }
}

abstract class ClubEventGetClubs implements ClubEvent {
  const factory ClubEventGetClubs() = _$ClubEventGetClubsImpl;
}

/// @nodoc
abstract class _$$ClubEventFilterClubsImplCopyWith<$Res> {
  factory _$$ClubEventFilterClubsImplCopyWith(_$ClubEventFilterClubsImpl value,
          $Res Function(_$ClubEventFilterClubsImpl) then) =
      __$$ClubEventFilterClubsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String query});
}

/// @nodoc
class __$$ClubEventFilterClubsImplCopyWithImpl<$Res>
    extends _$ClubEventCopyWithImpl<$Res, _$ClubEventFilterClubsImpl>
    implements _$$ClubEventFilterClubsImplCopyWith<$Res> {
  __$$ClubEventFilterClubsImplCopyWithImpl(_$ClubEventFilterClubsImpl _value,
      $Res Function(_$ClubEventFilterClubsImpl) _then)
      : super(_value, _then);

  /// Create a copy of ClubEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
  }) {
    return _then(_$ClubEventFilterClubsImpl(
      null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ClubEventFilterClubsImpl implements ClubEventFilterClubs {
  const _$ClubEventFilterClubsImpl(this.query);

  @override
  final String query;

  @override
  String toString() {
    return 'ClubEvent.filterClubs(query: $query)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClubEventFilterClubsImpl &&
            (identical(other.query, query) || other.query == query));
  }

  @override
  int get hashCode => Object.hash(runtimeType, query);

  /// Create a copy of ClubEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ClubEventFilterClubsImplCopyWith<_$ClubEventFilterClubsImpl>
      get copyWith =>
          __$$ClubEventFilterClubsImplCopyWithImpl<_$ClubEventFilterClubsImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getClubs,
    required TResult Function(String query) filterClubs,
    required TResult Function() clear,
    required TResult Function(CreateClubParams params) create,
    required TResult Function(UpdateClubParams params) update,
    required TResult Function(DeleteClubParams params) delete,
  }) {
    return filterClubs(query);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getClubs,
    TResult? Function(String query)? filterClubs,
    TResult? Function()? clear,
    TResult? Function(CreateClubParams params)? create,
    TResult? Function(UpdateClubParams params)? update,
    TResult? Function(DeleteClubParams params)? delete,
  }) {
    return filterClubs?.call(query);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getClubs,
    TResult Function(String query)? filterClubs,
    TResult Function()? clear,
    TResult Function(CreateClubParams params)? create,
    TResult Function(UpdateClubParams params)? update,
    TResult Function(DeleteClubParams params)? delete,
    required TResult orElse(),
  }) {
    if (filterClubs != null) {
      return filterClubs(query);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ClubEventGetClubs value) getClubs,
    required TResult Function(ClubEventFilterClubs value) filterClubs,
    required TResult Function(ClubEventClear value) clear,
    required TResult Function(ClubEventCreate value) create,
    required TResult Function(ClubEventUpdate value) update,
    required TResult Function(ClubEventDelete value) delete,
  }) {
    return filterClubs(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ClubEventGetClubs value)? getClubs,
    TResult? Function(ClubEventFilterClubs value)? filterClubs,
    TResult? Function(ClubEventClear value)? clear,
    TResult? Function(ClubEventCreate value)? create,
    TResult? Function(ClubEventUpdate value)? update,
    TResult? Function(ClubEventDelete value)? delete,
  }) {
    return filterClubs?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ClubEventGetClubs value)? getClubs,
    TResult Function(ClubEventFilterClubs value)? filterClubs,
    TResult Function(ClubEventClear value)? clear,
    TResult Function(ClubEventCreate value)? create,
    TResult Function(ClubEventUpdate value)? update,
    TResult Function(ClubEventDelete value)? delete,
    required TResult orElse(),
  }) {
    if (filterClubs != null) {
      return filterClubs(this);
    }
    return orElse();
  }
}

abstract class ClubEventFilterClubs implements ClubEvent {
  const factory ClubEventFilterClubs(final String query) =
      _$ClubEventFilterClubsImpl;

  String get query;

  /// Create a copy of ClubEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ClubEventFilterClubsImplCopyWith<_$ClubEventFilterClubsImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ClubEventClearImplCopyWith<$Res> {
  factory _$$ClubEventClearImplCopyWith(_$ClubEventClearImpl value,
          $Res Function(_$ClubEventClearImpl) then) =
      __$$ClubEventClearImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ClubEventClearImplCopyWithImpl<$Res>
    extends _$ClubEventCopyWithImpl<$Res, _$ClubEventClearImpl>
    implements _$$ClubEventClearImplCopyWith<$Res> {
  __$$ClubEventClearImplCopyWithImpl(
      _$ClubEventClearImpl _value, $Res Function(_$ClubEventClearImpl) _then)
      : super(_value, _then);

  /// Create a copy of ClubEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ClubEventClearImpl implements ClubEventClear {
  const _$ClubEventClearImpl();

  @override
  String toString() {
    return 'ClubEvent.clear()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ClubEventClearImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getClubs,
    required TResult Function(String query) filterClubs,
    required TResult Function() clear,
    required TResult Function(CreateClubParams params) create,
    required TResult Function(UpdateClubParams params) update,
    required TResult Function(DeleteClubParams params) delete,
  }) {
    return clear();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getClubs,
    TResult? Function(String query)? filterClubs,
    TResult? Function()? clear,
    TResult? Function(CreateClubParams params)? create,
    TResult? Function(UpdateClubParams params)? update,
    TResult? Function(DeleteClubParams params)? delete,
  }) {
    return clear?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getClubs,
    TResult Function(String query)? filterClubs,
    TResult Function()? clear,
    TResult Function(CreateClubParams params)? create,
    TResult Function(UpdateClubParams params)? update,
    TResult Function(DeleteClubParams params)? delete,
    required TResult orElse(),
  }) {
    if (clear != null) {
      return clear();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ClubEventGetClubs value) getClubs,
    required TResult Function(ClubEventFilterClubs value) filterClubs,
    required TResult Function(ClubEventClear value) clear,
    required TResult Function(ClubEventCreate value) create,
    required TResult Function(ClubEventUpdate value) update,
    required TResult Function(ClubEventDelete value) delete,
  }) {
    return clear(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ClubEventGetClubs value)? getClubs,
    TResult? Function(ClubEventFilterClubs value)? filterClubs,
    TResult? Function(ClubEventClear value)? clear,
    TResult? Function(ClubEventCreate value)? create,
    TResult? Function(ClubEventUpdate value)? update,
    TResult? Function(ClubEventDelete value)? delete,
  }) {
    return clear?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ClubEventGetClubs value)? getClubs,
    TResult Function(ClubEventFilterClubs value)? filterClubs,
    TResult Function(ClubEventClear value)? clear,
    TResult Function(ClubEventCreate value)? create,
    TResult Function(ClubEventUpdate value)? update,
    TResult Function(ClubEventDelete value)? delete,
    required TResult orElse(),
  }) {
    if (clear != null) {
      return clear(this);
    }
    return orElse();
  }
}

abstract class ClubEventClear implements ClubEvent {
  const factory ClubEventClear() = _$ClubEventClearImpl;
}

/// @nodoc
abstract class _$$ClubEventCreateImplCopyWith<$Res> {
  factory _$$ClubEventCreateImplCopyWith(_$ClubEventCreateImpl value,
          $Res Function(_$ClubEventCreateImpl) then) =
      __$$ClubEventCreateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({CreateClubParams params});

  $CreateClubParamsCopyWith<$Res> get params;
}

/// @nodoc
class __$$ClubEventCreateImplCopyWithImpl<$Res>
    extends _$ClubEventCopyWithImpl<$Res, _$ClubEventCreateImpl>
    implements _$$ClubEventCreateImplCopyWith<$Res> {
  __$$ClubEventCreateImplCopyWithImpl(
      _$ClubEventCreateImpl _value, $Res Function(_$ClubEventCreateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ClubEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? params = null,
  }) {
    return _then(_$ClubEventCreateImpl(
      null == params
          ? _value.params
          : params // ignore: cast_nullable_to_non_nullable
              as CreateClubParams,
    ));
  }

  /// Create a copy of ClubEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CreateClubParamsCopyWith<$Res> get params {
    return $CreateClubParamsCopyWith<$Res>(_value.params, (value) {
      return _then(_value.copyWith(params: value));
    });
  }
}

/// @nodoc

class _$ClubEventCreateImpl implements ClubEventCreate {
  const _$ClubEventCreateImpl(this.params);

  @override
  final CreateClubParams params;

  @override
  String toString() {
    return 'ClubEvent.create(params: $params)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClubEventCreateImpl &&
            (identical(other.params, params) || other.params == params));
  }

  @override
  int get hashCode => Object.hash(runtimeType, params);

  /// Create a copy of ClubEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ClubEventCreateImplCopyWith<_$ClubEventCreateImpl> get copyWith =>
      __$$ClubEventCreateImplCopyWithImpl<_$ClubEventCreateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getClubs,
    required TResult Function(String query) filterClubs,
    required TResult Function() clear,
    required TResult Function(CreateClubParams params) create,
    required TResult Function(UpdateClubParams params) update,
    required TResult Function(DeleteClubParams params) delete,
  }) {
    return create(params);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getClubs,
    TResult? Function(String query)? filterClubs,
    TResult? Function()? clear,
    TResult? Function(CreateClubParams params)? create,
    TResult? Function(UpdateClubParams params)? update,
    TResult? Function(DeleteClubParams params)? delete,
  }) {
    return create?.call(params);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getClubs,
    TResult Function(String query)? filterClubs,
    TResult Function()? clear,
    TResult Function(CreateClubParams params)? create,
    TResult Function(UpdateClubParams params)? update,
    TResult Function(DeleteClubParams params)? delete,
    required TResult orElse(),
  }) {
    if (create != null) {
      return create(params);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ClubEventGetClubs value) getClubs,
    required TResult Function(ClubEventFilterClubs value) filterClubs,
    required TResult Function(ClubEventClear value) clear,
    required TResult Function(ClubEventCreate value) create,
    required TResult Function(ClubEventUpdate value) update,
    required TResult Function(ClubEventDelete value) delete,
  }) {
    return create(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ClubEventGetClubs value)? getClubs,
    TResult? Function(ClubEventFilterClubs value)? filterClubs,
    TResult? Function(ClubEventClear value)? clear,
    TResult? Function(ClubEventCreate value)? create,
    TResult? Function(ClubEventUpdate value)? update,
    TResult? Function(ClubEventDelete value)? delete,
  }) {
    return create?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ClubEventGetClubs value)? getClubs,
    TResult Function(ClubEventFilterClubs value)? filterClubs,
    TResult Function(ClubEventClear value)? clear,
    TResult Function(ClubEventCreate value)? create,
    TResult Function(ClubEventUpdate value)? update,
    TResult Function(ClubEventDelete value)? delete,
    required TResult orElse(),
  }) {
    if (create != null) {
      return create(this);
    }
    return orElse();
  }
}

abstract class ClubEventCreate implements ClubEvent {
  const factory ClubEventCreate(final CreateClubParams params) =
      _$ClubEventCreateImpl;

  CreateClubParams get params;

  /// Create a copy of ClubEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ClubEventCreateImplCopyWith<_$ClubEventCreateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ClubEventUpdateImplCopyWith<$Res> {
  factory _$$ClubEventUpdateImplCopyWith(_$ClubEventUpdateImpl value,
          $Res Function(_$ClubEventUpdateImpl) then) =
      __$$ClubEventUpdateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({UpdateClubParams params});

  $UpdateClubParamsCopyWith<$Res> get params;
}

/// @nodoc
class __$$ClubEventUpdateImplCopyWithImpl<$Res>
    extends _$ClubEventCopyWithImpl<$Res, _$ClubEventUpdateImpl>
    implements _$$ClubEventUpdateImplCopyWith<$Res> {
  __$$ClubEventUpdateImplCopyWithImpl(
      _$ClubEventUpdateImpl _value, $Res Function(_$ClubEventUpdateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ClubEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? params = null,
  }) {
    return _then(_$ClubEventUpdateImpl(
      null == params
          ? _value.params
          : params // ignore: cast_nullable_to_non_nullable
              as UpdateClubParams,
    ));
  }

  /// Create a copy of ClubEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UpdateClubParamsCopyWith<$Res> get params {
    return $UpdateClubParamsCopyWith<$Res>(_value.params, (value) {
      return _then(_value.copyWith(params: value));
    });
  }
}

/// @nodoc

class _$ClubEventUpdateImpl implements ClubEventUpdate {
  const _$ClubEventUpdateImpl(this.params);

  @override
  final UpdateClubParams params;

  @override
  String toString() {
    return 'ClubEvent.update(params: $params)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClubEventUpdateImpl &&
            (identical(other.params, params) || other.params == params));
  }

  @override
  int get hashCode => Object.hash(runtimeType, params);

  /// Create a copy of ClubEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ClubEventUpdateImplCopyWith<_$ClubEventUpdateImpl> get copyWith =>
      __$$ClubEventUpdateImplCopyWithImpl<_$ClubEventUpdateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getClubs,
    required TResult Function(String query) filterClubs,
    required TResult Function() clear,
    required TResult Function(CreateClubParams params) create,
    required TResult Function(UpdateClubParams params) update,
    required TResult Function(DeleteClubParams params) delete,
  }) {
    return update(params);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getClubs,
    TResult? Function(String query)? filterClubs,
    TResult? Function()? clear,
    TResult? Function(CreateClubParams params)? create,
    TResult? Function(UpdateClubParams params)? update,
    TResult? Function(DeleteClubParams params)? delete,
  }) {
    return update?.call(params);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getClubs,
    TResult Function(String query)? filterClubs,
    TResult Function()? clear,
    TResult Function(CreateClubParams params)? create,
    TResult Function(UpdateClubParams params)? update,
    TResult Function(DeleteClubParams params)? delete,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(params);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ClubEventGetClubs value) getClubs,
    required TResult Function(ClubEventFilterClubs value) filterClubs,
    required TResult Function(ClubEventClear value) clear,
    required TResult Function(ClubEventCreate value) create,
    required TResult Function(ClubEventUpdate value) update,
    required TResult Function(ClubEventDelete value) delete,
  }) {
    return update(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ClubEventGetClubs value)? getClubs,
    TResult? Function(ClubEventFilterClubs value)? filterClubs,
    TResult? Function(ClubEventClear value)? clear,
    TResult? Function(ClubEventCreate value)? create,
    TResult? Function(ClubEventUpdate value)? update,
    TResult? Function(ClubEventDelete value)? delete,
  }) {
    return update?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ClubEventGetClubs value)? getClubs,
    TResult Function(ClubEventFilterClubs value)? filterClubs,
    TResult Function(ClubEventClear value)? clear,
    TResult Function(ClubEventCreate value)? create,
    TResult Function(ClubEventUpdate value)? update,
    TResult Function(ClubEventDelete value)? delete,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(this);
    }
    return orElse();
  }
}

abstract class ClubEventUpdate implements ClubEvent {
  const factory ClubEventUpdate(final UpdateClubParams params) =
      _$ClubEventUpdateImpl;

  UpdateClubParams get params;

  /// Create a copy of ClubEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ClubEventUpdateImplCopyWith<_$ClubEventUpdateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ClubEventDeleteImplCopyWith<$Res> {
  factory _$$ClubEventDeleteImplCopyWith(_$ClubEventDeleteImpl value,
          $Res Function(_$ClubEventDeleteImpl) then) =
      __$$ClubEventDeleteImplCopyWithImpl<$Res>;
  @useResult
  $Res call({DeleteClubParams params});

  $DeleteClubParamsCopyWith<$Res> get params;
}

/// @nodoc
class __$$ClubEventDeleteImplCopyWithImpl<$Res>
    extends _$ClubEventCopyWithImpl<$Res, _$ClubEventDeleteImpl>
    implements _$$ClubEventDeleteImplCopyWith<$Res> {
  __$$ClubEventDeleteImplCopyWithImpl(
      _$ClubEventDeleteImpl _value, $Res Function(_$ClubEventDeleteImpl) _then)
      : super(_value, _then);

  /// Create a copy of ClubEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? params = null,
  }) {
    return _then(_$ClubEventDeleteImpl(
      null == params
          ? _value.params
          : params // ignore: cast_nullable_to_non_nullable
              as DeleteClubParams,
    ));
  }

  /// Create a copy of ClubEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DeleteClubParamsCopyWith<$Res> get params {
    return $DeleteClubParamsCopyWith<$Res>(_value.params, (value) {
      return _then(_value.copyWith(params: value));
    });
  }
}

/// @nodoc

class _$ClubEventDeleteImpl implements ClubEventDelete {
  const _$ClubEventDeleteImpl(this.params);

  @override
  final DeleteClubParams params;

  @override
  String toString() {
    return 'ClubEvent.delete(params: $params)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClubEventDeleteImpl &&
            (identical(other.params, params) || other.params == params));
  }

  @override
  int get hashCode => Object.hash(runtimeType, params);

  /// Create a copy of ClubEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ClubEventDeleteImplCopyWith<_$ClubEventDeleteImpl> get copyWith =>
      __$$ClubEventDeleteImplCopyWithImpl<_$ClubEventDeleteImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getClubs,
    required TResult Function(String query) filterClubs,
    required TResult Function() clear,
    required TResult Function(CreateClubParams params) create,
    required TResult Function(UpdateClubParams params) update,
    required TResult Function(DeleteClubParams params) delete,
  }) {
    return delete(params);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getClubs,
    TResult? Function(String query)? filterClubs,
    TResult? Function()? clear,
    TResult? Function(CreateClubParams params)? create,
    TResult? Function(UpdateClubParams params)? update,
    TResult? Function(DeleteClubParams params)? delete,
  }) {
    return delete?.call(params);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getClubs,
    TResult Function(String query)? filterClubs,
    TResult Function()? clear,
    TResult Function(CreateClubParams params)? create,
    TResult Function(UpdateClubParams params)? update,
    TResult Function(DeleteClubParams params)? delete,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete(params);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ClubEventGetClubs value) getClubs,
    required TResult Function(ClubEventFilterClubs value) filterClubs,
    required TResult Function(ClubEventClear value) clear,
    required TResult Function(ClubEventCreate value) create,
    required TResult Function(ClubEventUpdate value) update,
    required TResult Function(ClubEventDelete value) delete,
  }) {
    return delete(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ClubEventGetClubs value)? getClubs,
    TResult? Function(ClubEventFilterClubs value)? filterClubs,
    TResult? Function(ClubEventClear value)? clear,
    TResult? Function(ClubEventCreate value)? create,
    TResult? Function(ClubEventUpdate value)? update,
    TResult? Function(ClubEventDelete value)? delete,
  }) {
    return delete?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ClubEventGetClubs value)? getClubs,
    TResult Function(ClubEventFilterClubs value)? filterClubs,
    TResult Function(ClubEventClear value)? clear,
    TResult Function(ClubEventCreate value)? create,
    TResult Function(ClubEventUpdate value)? update,
    TResult Function(ClubEventDelete value)? delete,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete(this);
    }
    return orElse();
  }
}

abstract class ClubEventDelete implements ClubEvent {
  const factory ClubEventDelete(final DeleteClubParams params) =
      _$ClubEventDeleteImpl;

  DeleteClubParams get params;

  /// Create a copy of ClubEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ClubEventDeleteImplCopyWith<_$ClubEventDeleteImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ClubState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            List<ClubModel> clubs, List<ClubModel> filteredClubs)
        loaded,
    required TResult Function(String message) failure,
    required TResult Function(ClubModel club) created,
    required TResult Function(ClubModel club) updated,
    required TResult Function(ClubModel club) deleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<ClubModel> clubs, List<ClubModel> filteredClubs)?
        loaded,
    TResult? Function(String message)? failure,
    TResult? Function(ClubModel club)? created,
    TResult? Function(ClubModel club)? updated,
    TResult? Function(ClubModel club)? deleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ClubModel> clubs, List<ClubModel> filteredClubs)?
        loaded,
    TResult Function(String message)? failure,
    TResult Function(ClubModel club)? created,
    TResult Function(ClubModel club)? updated,
    TResult Function(ClubModel club)? deleted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ClubStateInitial value) initial,
    required TResult Function(ClubStateLoading value) loading,
    required TResult Function(ClubStateLoaded value) loaded,
    required TResult Function(ClubStateFailure value) failure,
    required TResult Function(ClubStateCreated value) created,
    required TResult Function(ClubStateUpdated value) updated,
    required TResult Function(ClubStateDeleted value) deleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ClubStateInitial value)? initial,
    TResult? Function(ClubStateLoading value)? loading,
    TResult? Function(ClubStateLoaded value)? loaded,
    TResult? Function(ClubStateFailure value)? failure,
    TResult? Function(ClubStateCreated value)? created,
    TResult? Function(ClubStateUpdated value)? updated,
    TResult? Function(ClubStateDeleted value)? deleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ClubStateInitial value)? initial,
    TResult Function(ClubStateLoading value)? loading,
    TResult Function(ClubStateLoaded value)? loaded,
    TResult Function(ClubStateFailure value)? failure,
    TResult Function(ClubStateCreated value)? created,
    TResult Function(ClubStateUpdated value)? updated,
    TResult Function(ClubStateDeleted value)? deleted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClubStateCopyWith<$Res> {
  factory $ClubStateCopyWith(ClubState value, $Res Function(ClubState) then) =
      _$ClubStateCopyWithImpl<$Res, ClubState>;
}

/// @nodoc
class _$ClubStateCopyWithImpl<$Res, $Val extends ClubState>
    implements $ClubStateCopyWith<$Res> {
  _$ClubStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ClubState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$ClubStateInitialImplCopyWith<$Res> {
  factory _$$ClubStateInitialImplCopyWith(_$ClubStateInitialImpl value,
          $Res Function(_$ClubStateInitialImpl) then) =
      __$$ClubStateInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ClubStateInitialImplCopyWithImpl<$Res>
    extends _$ClubStateCopyWithImpl<$Res, _$ClubStateInitialImpl>
    implements _$$ClubStateInitialImplCopyWith<$Res> {
  __$$ClubStateInitialImplCopyWithImpl(_$ClubStateInitialImpl _value,
      $Res Function(_$ClubStateInitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of ClubState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ClubStateInitialImpl implements ClubStateInitial {
  const _$ClubStateInitialImpl();

  @override
  String toString() {
    return 'ClubState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ClubStateInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            List<ClubModel> clubs, List<ClubModel> filteredClubs)
        loaded,
    required TResult Function(String message) failure,
    required TResult Function(ClubModel club) created,
    required TResult Function(ClubModel club) updated,
    required TResult Function(ClubModel club) deleted,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<ClubModel> clubs, List<ClubModel> filteredClubs)?
        loaded,
    TResult? Function(String message)? failure,
    TResult? Function(ClubModel club)? created,
    TResult? Function(ClubModel club)? updated,
    TResult? Function(ClubModel club)? deleted,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ClubModel> clubs, List<ClubModel> filteredClubs)?
        loaded,
    TResult Function(String message)? failure,
    TResult Function(ClubModel club)? created,
    TResult Function(ClubModel club)? updated,
    TResult Function(ClubModel club)? deleted,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ClubStateInitial value) initial,
    required TResult Function(ClubStateLoading value) loading,
    required TResult Function(ClubStateLoaded value) loaded,
    required TResult Function(ClubStateFailure value) failure,
    required TResult Function(ClubStateCreated value) created,
    required TResult Function(ClubStateUpdated value) updated,
    required TResult Function(ClubStateDeleted value) deleted,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ClubStateInitial value)? initial,
    TResult? Function(ClubStateLoading value)? loading,
    TResult? Function(ClubStateLoaded value)? loaded,
    TResult? Function(ClubStateFailure value)? failure,
    TResult? Function(ClubStateCreated value)? created,
    TResult? Function(ClubStateUpdated value)? updated,
    TResult? Function(ClubStateDeleted value)? deleted,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ClubStateInitial value)? initial,
    TResult Function(ClubStateLoading value)? loading,
    TResult Function(ClubStateLoaded value)? loaded,
    TResult Function(ClubStateFailure value)? failure,
    TResult Function(ClubStateCreated value)? created,
    TResult Function(ClubStateUpdated value)? updated,
    TResult Function(ClubStateDeleted value)? deleted,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class ClubStateInitial implements ClubState {
  const factory ClubStateInitial() = _$ClubStateInitialImpl;
}

/// @nodoc
abstract class _$$ClubStateLoadingImplCopyWith<$Res> {
  factory _$$ClubStateLoadingImplCopyWith(_$ClubStateLoadingImpl value,
          $Res Function(_$ClubStateLoadingImpl) then) =
      __$$ClubStateLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ClubStateLoadingImplCopyWithImpl<$Res>
    extends _$ClubStateCopyWithImpl<$Res, _$ClubStateLoadingImpl>
    implements _$$ClubStateLoadingImplCopyWith<$Res> {
  __$$ClubStateLoadingImplCopyWithImpl(_$ClubStateLoadingImpl _value,
      $Res Function(_$ClubStateLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of ClubState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ClubStateLoadingImpl implements ClubStateLoading {
  const _$ClubStateLoadingImpl();

  @override
  String toString() {
    return 'ClubState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ClubStateLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            List<ClubModel> clubs, List<ClubModel> filteredClubs)
        loaded,
    required TResult Function(String message) failure,
    required TResult Function(ClubModel club) created,
    required TResult Function(ClubModel club) updated,
    required TResult Function(ClubModel club) deleted,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<ClubModel> clubs, List<ClubModel> filteredClubs)?
        loaded,
    TResult? Function(String message)? failure,
    TResult? Function(ClubModel club)? created,
    TResult? Function(ClubModel club)? updated,
    TResult? Function(ClubModel club)? deleted,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ClubModel> clubs, List<ClubModel> filteredClubs)?
        loaded,
    TResult Function(String message)? failure,
    TResult Function(ClubModel club)? created,
    TResult Function(ClubModel club)? updated,
    TResult Function(ClubModel club)? deleted,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ClubStateInitial value) initial,
    required TResult Function(ClubStateLoading value) loading,
    required TResult Function(ClubStateLoaded value) loaded,
    required TResult Function(ClubStateFailure value) failure,
    required TResult Function(ClubStateCreated value) created,
    required TResult Function(ClubStateUpdated value) updated,
    required TResult Function(ClubStateDeleted value) deleted,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ClubStateInitial value)? initial,
    TResult? Function(ClubStateLoading value)? loading,
    TResult? Function(ClubStateLoaded value)? loaded,
    TResult? Function(ClubStateFailure value)? failure,
    TResult? Function(ClubStateCreated value)? created,
    TResult? Function(ClubStateUpdated value)? updated,
    TResult? Function(ClubStateDeleted value)? deleted,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ClubStateInitial value)? initial,
    TResult Function(ClubStateLoading value)? loading,
    TResult Function(ClubStateLoaded value)? loaded,
    TResult Function(ClubStateFailure value)? failure,
    TResult Function(ClubStateCreated value)? created,
    TResult Function(ClubStateUpdated value)? updated,
    TResult Function(ClubStateDeleted value)? deleted,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class ClubStateLoading implements ClubState {
  const factory ClubStateLoading() = _$ClubStateLoadingImpl;
}

/// @nodoc
abstract class _$$ClubStateLoadedImplCopyWith<$Res> {
  factory _$$ClubStateLoadedImplCopyWith(_$ClubStateLoadedImpl value,
          $Res Function(_$ClubStateLoadedImpl) then) =
      __$$ClubStateLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<ClubModel> clubs, List<ClubModel> filteredClubs});
}

/// @nodoc
class __$$ClubStateLoadedImplCopyWithImpl<$Res>
    extends _$ClubStateCopyWithImpl<$Res, _$ClubStateLoadedImpl>
    implements _$$ClubStateLoadedImplCopyWith<$Res> {
  __$$ClubStateLoadedImplCopyWithImpl(
      _$ClubStateLoadedImpl _value, $Res Function(_$ClubStateLoadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of ClubState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? clubs = null,
    Object? filteredClubs = null,
  }) {
    return _then(_$ClubStateLoadedImpl(
      clubs: null == clubs
          ? _value._clubs
          : clubs // ignore: cast_nullable_to_non_nullable
              as List<ClubModel>,
      filteredClubs: null == filteredClubs
          ? _value._filteredClubs
          : filteredClubs // ignore: cast_nullable_to_non_nullable
              as List<ClubModel>,
    ));
  }
}

/// @nodoc

class _$ClubStateLoadedImpl implements ClubStateLoaded {
  const _$ClubStateLoadedImpl(
      {required final List<ClubModel> clubs,
      required final List<ClubModel> filteredClubs})
      : _clubs = clubs,
        _filteredClubs = filteredClubs;

  final List<ClubModel> _clubs;
  @override
  List<ClubModel> get clubs {
    if (_clubs is EqualUnmodifiableListView) return _clubs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_clubs);
  }

  final List<ClubModel> _filteredClubs;
  @override
  List<ClubModel> get filteredClubs {
    if (_filteredClubs is EqualUnmodifiableListView) return _filteredClubs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_filteredClubs);
  }

  @override
  String toString() {
    return 'ClubState.loaded(clubs: $clubs, filteredClubs: $filteredClubs)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClubStateLoadedImpl &&
            const DeepCollectionEquality().equals(other._clubs, _clubs) &&
            const DeepCollectionEquality()
                .equals(other._filteredClubs, _filteredClubs));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_clubs),
      const DeepCollectionEquality().hash(_filteredClubs));

  /// Create a copy of ClubState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ClubStateLoadedImplCopyWith<_$ClubStateLoadedImpl> get copyWith =>
      __$$ClubStateLoadedImplCopyWithImpl<_$ClubStateLoadedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            List<ClubModel> clubs, List<ClubModel> filteredClubs)
        loaded,
    required TResult Function(String message) failure,
    required TResult Function(ClubModel club) created,
    required TResult Function(ClubModel club) updated,
    required TResult Function(ClubModel club) deleted,
  }) {
    return loaded(clubs, filteredClubs);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<ClubModel> clubs, List<ClubModel> filteredClubs)?
        loaded,
    TResult? Function(String message)? failure,
    TResult? Function(ClubModel club)? created,
    TResult? Function(ClubModel club)? updated,
    TResult? Function(ClubModel club)? deleted,
  }) {
    return loaded?.call(clubs, filteredClubs);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ClubModel> clubs, List<ClubModel> filteredClubs)?
        loaded,
    TResult Function(String message)? failure,
    TResult Function(ClubModel club)? created,
    TResult Function(ClubModel club)? updated,
    TResult Function(ClubModel club)? deleted,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(clubs, filteredClubs);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ClubStateInitial value) initial,
    required TResult Function(ClubStateLoading value) loading,
    required TResult Function(ClubStateLoaded value) loaded,
    required TResult Function(ClubStateFailure value) failure,
    required TResult Function(ClubStateCreated value) created,
    required TResult Function(ClubStateUpdated value) updated,
    required TResult Function(ClubStateDeleted value) deleted,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ClubStateInitial value)? initial,
    TResult? Function(ClubStateLoading value)? loading,
    TResult? Function(ClubStateLoaded value)? loaded,
    TResult? Function(ClubStateFailure value)? failure,
    TResult? Function(ClubStateCreated value)? created,
    TResult? Function(ClubStateUpdated value)? updated,
    TResult? Function(ClubStateDeleted value)? deleted,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ClubStateInitial value)? initial,
    TResult Function(ClubStateLoading value)? loading,
    TResult Function(ClubStateLoaded value)? loaded,
    TResult Function(ClubStateFailure value)? failure,
    TResult Function(ClubStateCreated value)? created,
    TResult Function(ClubStateUpdated value)? updated,
    TResult Function(ClubStateDeleted value)? deleted,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class ClubStateLoaded implements ClubState {
  const factory ClubStateLoaded(
      {required final List<ClubModel> clubs,
      required final List<ClubModel> filteredClubs}) = _$ClubStateLoadedImpl;

  List<ClubModel> get clubs;
  List<ClubModel> get filteredClubs;

  /// Create a copy of ClubState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ClubStateLoadedImplCopyWith<_$ClubStateLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ClubStateFailureImplCopyWith<$Res> {
  factory _$$ClubStateFailureImplCopyWith(_$ClubStateFailureImpl value,
          $Res Function(_$ClubStateFailureImpl) then) =
      __$$ClubStateFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ClubStateFailureImplCopyWithImpl<$Res>
    extends _$ClubStateCopyWithImpl<$Res, _$ClubStateFailureImpl>
    implements _$$ClubStateFailureImplCopyWith<$Res> {
  __$$ClubStateFailureImplCopyWithImpl(_$ClubStateFailureImpl _value,
      $Res Function(_$ClubStateFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of ClubState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ClubStateFailureImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ClubStateFailureImpl implements ClubStateFailure {
  const _$ClubStateFailureImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'ClubState.failure(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClubStateFailureImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of ClubState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ClubStateFailureImplCopyWith<_$ClubStateFailureImpl> get copyWith =>
      __$$ClubStateFailureImplCopyWithImpl<_$ClubStateFailureImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            List<ClubModel> clubs, List<ClubModel> filteredClubs)
        loaded,
    required TResult Function(String message) failure,
    required TResult Function(ClubModel club) created,
    required TResult Function(ClubModel club) updated,
    required TResult Function(ClubModel club) deleted,
  }) {
    return failure(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<ClubModel> clubs, List<ClubModel> filteredClubs)?
        loaded,
    TResult? Function(String message)? failure,
    TResult? Function(ClubModel club)? created,
    TResult? Function(ClubModel club)? updated,
    TResult? Function(ClubModel club)? deleted,
  }) {
    return failure?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ClubModel> clubs, List<ClubModel> filteredClubs)?
        loaded,
    TResult Function(String message)? failure,
    TResult Function(ClubModel club)? created,
    TResult Function(ClubModel club)? updated,
    TResult Function(ClubModel club)? deleted,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ClubStateInitial value) initial,
    required TResult Function(ClubStateLoading value) loading,
    required TResult Function(ClubStateLoaded value) loaded,
    required TResult Function(ClubStateFailure value) failure,
    required TResult Function(ClubStateCreated value) created,
    required TResult Function(ClubStateUpdated value) updated,
    required TResult Function(ClubStateDeleted value) deleted,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ClubStateInitial value)? initial,
    TResult? Function(ClubStateLoading value)? loading,
    TResult? Function(ClubStateLoaded value)? loaded,
    TResult? Function(ClubStateFailure value)? failure,
    TResult? Function(ClubStateCreated value)? created,
    TResult? Function(ClubStateUpdated value)? updated,
    TResult? Function(ClubStateDeleted value)? deleted,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ClubStateInitial value)? initial,
    TResult Function(ClubStateLoading value)? loading,
    TResult Function(ClubStateLoaded value)? loaded,
    TResult Function(ClubStateFailure value)? failure,
    TResult Function(ClubStateCreated value)? created,
    TResult Function(ClubStateUpdated value)? updated,
    TResult Function(ClubStateDeleted value)? deleted,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class ClubStateFailure implements ClubState {
  const factory ClubStateFailure(final String message) = _$ClubStateFailureImpl;

  String get message;

  /// Create a copy of ClubState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ClubStateFailureImplCopyWith<_$ClubStateFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ClubStateCreatedImplCopyWith<$Res> {
  factory _$$ClubStateCreatedImplCopyWith(_$ClubStateCreatedImpl value,
          $Res Function(_$ClubStateCreatedImpl) then) =
      __$$ClubStateCreatedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ClubModel club});

  $ClubModelCopyWith<$Res> get club;
}

/// @nodoc
class __$$ClubStateCreatedImplCopyWithImpl<$Res>
    extends _$ClubStateCopyWithImpl<$Res, _$ClubStateCreatedImpl>
    implements _$$ClubStateCreatedImplCopyWith<$Res> {
  __$$ClubStateCreatedImplCopyWithImpl(_$ClubStateCreatedImpl _value,
      $Res Function(_$ClubStateCreatedImpl) _then)
      : super(_value, _then);

  /// Create a copy of ClubState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? club = null,
  }) {
    return _then(_$ClubStateCreatedImpl(
      null == club
          ? _value.club
          : club // ignore: cast_nullable_to_non_nullable
              as ClubModel,
    ));
  }

  /// Create a copy of ClubState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ClubModelCopyWith<$Res> get club {
    return $ClubModelCopyWith<$Res>(_value.club, (value) {
      return _then(_value.copyWith(club: value));
    });
  }
}

/// @nodoc

class _$ClubStateCreatedImpl implements ClubStateCreated {
  const _$ClubStateCreatedImpl(this.club);

  @override
  final ClubModel club;

  @override
  String toString() {
    return 'ClubState.created(club: $club)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClubStateCreatedImpl &&
            (identical(other.club, club) || other.club == club));
  }

  @override
  int get hashCode => Object.hash(runtimeType, club);

  /// Create a copy of ClubState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ClubStateCreatedImplCopyWith<_$ClubStateCreatedImpl> get copyWith =>
      __$$ClubStateCreatedImplCopyWithImpl<_$ClubStateCreatedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            List<ClubModel> clubs, List<ClubModel> filteredClubs)
        loaded,
    required TResult Function(String message) failure,
    required TResult Function(ClubModel club) created,
    required TResult Function(ClubModel club) updated,
    required TResult Function(ClubModel club) deleted,
  }) {
    return created(club);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<ClubModel> clubs, List<ClubModel> filteredClubs)?
        loaded,
    TResult? Function(String message)? failure,
    TResult? Function(ClubModel club)? created,
    TResult? Function(ClubModel club)? updated,
    TResult? Function(ClubModel club)? deleted,
  }) {
    return created?.call(club);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ClubModel> clubs, List<ClubModel> filteredClubs)?
        loaded,
    TResult Function(String message)? failure,
    TResult Function(ClubModel club)? created,
    TResult Function(ClubModel club)? updated,
    TResult Function(ClubModel club)? deleted,
    required TResult orElse(),
  }) {
    if (created != null) {
      return created(club);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ClubStateInitial value) initial,
    required TResult Function(ClubStateLoading value) loading,
    required TResult Function(ClubStateLoaded value) loaded,
    required TResult Function(ClubStateFailure value) failure,
    required TResult Function(ClubStateCreated value) created,
    required TResult Function(ClubStateUpdated value) updated,
    required TResult Function(ClubStateDeleted value) deleted,
  }) {
    return created(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ClubStateInitial value)? initial,
    TResult? Function(ClubStateLoading value)? loading,
    TResult? Function(ClubStateLoaded value)? loaded,
    TResult? Function(ClubStateFailure value)? failure,
    TResult? Function(ClubStateCreated value)? created,
    TResult? Function(ClubStateUpdated value)? updated,
    TResult? Function(ClubStateDeleted value)? deleted,
  }) {
    return created?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ClubStateInitial value)? initial,
    TResult Function(ClubStateLoading value)? loading,
    TResult Function(ClubStateLoaded value)? loaded,
    TResult Function(ClubStateFailure value)? failure,
    TResult Function(ClubStateCreated value)? created,
    TResult Function(ClubStateUpdated value)? updated,
    TResult Function(ClubStateDeleted value)? deleted,
    required TResult orElse(),
  }) {
    if (created != null) {
      return created(this);
    }
    return orElse();
  }
}

abstract class ClubStateCreated implements ClubState {
  const factory ClubStateCreated(final ClubModel club) = _$ClubStateCreatedImpl;

  ClubModel get club;

  /// Create a copy of ClubState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ClubStateCreatedImplCopyWith<_$ClubStateCreatedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ClubStateUpdatedImplCopyWith<$Res> {
  factory _$$ClubStateUpdatedImplCopyWith(_$ClubStateUpdatedImpl value,
          $Res Function(_$ClubStateUpdatedImpl) then) =
      __$$ClubStateUpdatedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ClubModel club});

  $ClubModelCopyWith<$Res> get club;
}

/// @nodoc
class __$$ClubStateUpdatedImplCopyWithImpl<$Res>
    extends _$ClubStateCopyWithImpl<$Res, _$ClubStateUpdatedImpl>
    implements _$$ClubStateUpdatedImplCopyWith<$Res> {
  __$$ClubStateUpdatedImplCopyWithImpl(_$ClubStateUpdatedImpl _value,
      $Res Function(_$ClubStateUpdatedImpl) _then)
      : super(_value, _then);

  /// Create a copy of ClubState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? club = null,
  }) {
    return _then(_$ClubStateUpdatedImpl(
      null == club
          ? _value.club
          : club // ignore: cast_nullable_to_non_nullable
              as ClubModel,
    ));
  }

  /// Create a copy of ClubState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ClubModelCopyWith<$Res> get club {
    return $ClubModelCopyWith<$Res>(_value.club, (value) {
      return _then(_value.copyWith(club: value));
    });
  }
}

/// @nodoc

class _$ClubStateUpdatedImpl implements ClubStateUpdated {
  const _$ClubStateUpdatedImpl(this.club);

  @override
  final ClubModel club;

  @override
  String toString() {
    return 'ClubState.updated(club: $club)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClubStateUpdatedImpl &&
            (identical(other.club, club) || other.club == club));
  }

  @override
  int get hashCode => Object.hash(runtimeType, club);

  /// Create a copy of ClubState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ClubStateUpdatedImplCopyWith<_$ClubStateUpdatedImpl> get copyWith =>
      __$$ClubStateUpdatedImplCopyWithImpl<_$ClubStateUpdatedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            List<ClubModel> clubs, List<ClubModel> filteredClubs)
        loaded,
    required TResult Function(String message) failure,
    required TResult Function(ClubModel club) created,
    required TResult Function(ClubModel club) updated,
    required TResult Function(ClubModel club) deleted,
  }) {
    return updated(club);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<ClubModel> clubs, List<ClubModel> filteredClubs)?
        loaded,
    TResult? Function(String message)? failure,
    TResult? Function(ClubModel club)? created,
    TResult? Function(ClubModel club)? updated,
    TResult? Function(ClubModel club)? deleted,
  }) {
    return updated?.call(club);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ClubModel> clubs, List<ClubModel> filteredClubs)?
        loaded,
    TResult Function(String message)? failure,
    TResult Function(ClubModel club)? created,
    TResult Function(ClubModel club)? updated,
    TResult Function(ClubModel club)? deleted,
    required TResult orElse(),
  }) {
    if (updated != null) {
      return updated(club);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ClubStateInitial value) initial,
    required TResult Function(ClubStateLoading value) loading,
    required TResult Function(ClubStateLoaded value) loaded,
    required TResult Function(ClubStateFailure value) failure,
    required TResult Function(ClubStateCreated value) created,
    required TResult Function(ClubStateUpdated value) updated,
    required TResult Function(ClubStateDeleted value) deleted,
  }) {
    return updated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ClubStateInitial value)? initial,
    TResult? Function(ClubStateLoading value)? loading,
    TResult? Function(ClubStateLoaded value)? loaded,
    TResult? Function(ClubStateFailure value)? failure,
    TResult? Function(ClubStateCreated value)? created,
    TResult? Function(ClubStateUpdated value)? updated,
    TResult? Function(ClubStateDeleted value)? deleted,
  }) {
    return updated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ClubStateInitial value)? initial,
    TResult Function(ClubStateLoading value)? loading,
    TResult Function(ClubStateLoaded value)? loaded,
    TResult Function(ClubStateFailure value)? failure,
    TResult Function(ClubStateCreated value)? created,
    TResult Function(ClubStateUpdated value)? updated,
    TResult Function(ClubStateDeleted value)? deleted,
    required TResult orElse(),
  }) {
    if (updated != null) {
      return updated(this);
    }
    return orElse();
  }
}

abstract class ClubStateUpdated implements ClubState {
  const factory ClubStateUpdated(final ClubModel club) = _$ClubStateUpdatedImpl;

  ClubModel get club;

  /// Create a copy of ClubState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ClubStateUpdatedImplCopyWith<_$ClubStateUpdatedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ClubStateDeletedImplCopyWith<$Res> {
  factory _$$ClubStateDeletedImplCopyWith(_$ClubStateDeletedImpl value,
          $Res Function(_$ClubStateDeletedImpl) then) =
      __$$ClubStateDeletedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ClubModel club});

  $ClubModelCopyWith<$Res> get club;
}

/// @nodoc
class __$$ClubStateDeletedImplCopyWithImpl<$Res>
    extends _$ClubStateCopyWithImpl<$Res, _$ClubStateDeletedImpl>
    implements _$$ClubStateDeletedImplCopyWith<$Res> {
  __$$ClubStateDeletedImplCopyWithImpl(_$ClubStateDeletedImpl _value,
      $Res Function(_$ClubStateDeletedImpl) _then)
      : super(_value, _then);

  /// Create a copy of ClubState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? club = null,
  }) {
    return _then(_$ClubStateDeletedImpl(
      null == club
          ? _value.club
          : club // ignore: cast_nullable_to_non_nullable
              as ClubModel,
    ));
  }

  /// Create a copy of ClubState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ClubModelCopyWith<$Res> get club {
    return $ClubModelCopyWith<$Res>(_value.club, (value) {
      return _then(_value.copyWith(club: value));
    });
  }
}

/// @nodoc

class _$ClubStateDeletedImpl implements ClubStateDeleted {
  const _$ClubStateDeletedImpl(this.club);

  @override
  final ClubModel club;

  @override
  String toString() {
    return 'ClubState.deleted(club: $club)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClubStateDeletedImpl &&
            (identical(other.club, club) || other.club == club));
  }

  @override
  int get hashCode => Object.hash(runtimeType, club);

  /// Create a copy of ClubState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ClubStateDeletedImplCopyWith<_$ClubStateDeletedImpl> get copyWith =>
      __$$ClubStateDeletedImplCopyWithImpl<_$ClubStateDeletedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            List<ClubModel> clubs, List<ClubModel> filteredClubs)
        loaded,
    required TResult Function(String message) failure,
    required TResult Function(ClubModel club) created,
    required TResult Function(ClubModel club) updated,
    required TResult Function(ClubModel club) deleted,
  }) {
    return deleted(club);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<ClubModel> clubs, List<ClubModel> filteredClubs)?
        loaded,
    TResult? Function(String message)? failure,
    TResult? Function(ClubModel club)? created,
    TResult? Function(ClubModel club)? updated,
    TResult? Function(ClubModel club)? deleted,
  }) {
    return deleted?.call(club);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ClubModel> clubs, List<ClubModel> filteredClubs)?
        loaded,
    TResult Function(String message)? failure,
    TResult Function(ClubModel club)? created,
    TResult Function(ClubModel club)? updated,
    TResult Function(ClubModel club)? deleted,
    required TResult orElse(),
  }) {
    if (deleted != null) {
      return deleted(club);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ClubStateInitial value) initial,
    required TResult Function(ClubStateLoading value) loading,
    required TResult Function(ClubStateLoaded value) loaded,
    required TResult Function(ClubStateFailure value) failure,
    required TResult Function(ClubStateCreated value) created,
    required TResult Function(ClubStateUpdated value) updated,
    required TResult Function(ClubStateDeleted value) deleted,
  }) {
    return deleted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ClubStateInitial value)? initial,
    TResult? Function(ClubStateLoading value)? loading,
    TResult? Function(ClubStateLoaded value)? loaded,
    TResult? Function(ClubStateFailure value)? failure,
    TResult? Function(ClubStateCreated value)? created,
    TResult? Function(ClubStateUpdated value)? updated,
    TResult? Function(ClubStateDeleted value)? deleted,
  }) {
    return deleted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ClubStateInitial value)? initial,
    TResult Function(ClubStateLoading value)? loading,
    TResult Function(ClubStateLoaded value)? loaded,
    TResult Function(ClubStateFailure value)? failure,
    TResult Function(ClubStateCreated value)? created,
    TResult Function(ClubStateUpdated value)? updated,
    TResult Function(ClubStateDeleted value)? deleted,
    required TResult orElse(),
  }) {
    if (deleted != null) {
      return deleted(this);
    }
    return orElse();
  }
}

abstract class ClubStateDeleted implements ClubState {
  const factory ClubStateDeleted(final ClubModel club) = _$ClubStateDeletedImpl;

  ClubModel get club;

  /// Create a copy of ClubState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ClubStateDeletedImplCopyWith<_$ClubStateDeletedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
