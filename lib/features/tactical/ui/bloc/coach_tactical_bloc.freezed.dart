// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'coach_tactical_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CoachTacticalEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(GetAllTacticalParams params) getTacticals,
    required TResult Function(String query) filterTacticals,
    required TResult Function() clear,
    required TResult Function(CreateTacticalParams params) create,
    required TResult Function(UpdateTacticalParams params) update,
    required TResult Function(DeleteTacticalParams params) delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(GetAllTacticalParams params)? getTacticals,
    TResult? Function(String query)? filterTacticals,
    TResult? Function()? clear,
    TResult? Function(CreateTacticalParams params)? create,
    TResult? Function(UpdateTacticalParams params)? update,
    TResult? Function(DeleteTacticalParams params)? delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GetAllTacticalParams params)? getTacticals,
    TResult Function(String query)? filterTacticals,
    TResult Function()? clear,
    TResult Function(CreateTacticalParams params)? create,
    TResult Function(UpdateTacticalParams params)? update,
    TResult Function(DeleteTacticalParams params)? delete,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CoachTacticalEventGetTacticals value)
        getTacticals,
    required TResult Function(CoachTacticalEventFilterTacticals value)
        filterTacticals,
    required TResult Function(CoachTacticalEventClear value) clear,
    required TResult Function(CoachTacticalEventCreate value) create,
    required TResult Function(CoachTacticalEventUpdate value) update,
    required TResult Function(CoachTacticalEventDelete value) delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CoachTacticalEventGetTacticals value)? getTacticals,
    TResult? Function(CoachTacticalEventFilterTacticals value)? filterTacticals,
    TResult? Function(CoachTacticalEventClear value)? clear,
    TResult? Function(CoachTacticalEventCreate value)? create,
    TResult? Function(CoachTacticalEventUpdate value)? update,
    TResult? Function(CoachTacticalEventDelete value)? delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CoachTacticalEventGetTacticals value)? getTacticals,
    TResult Function(CoachTacticalEventFilterTacticals value)? filterTacticals,
    TResult Function(CoachTacticalEventClear value)? clear,
    TResult Function(CoachTacticalEventCreate value)? create,
    TResult Function(CoachTacticalEventUpdate value)? update,
    TResult Function(CoachTacticalEventDelete value)? delete,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CoachTacticalEventCopyWith<$Res> {
  factory $CoachTacticalEventCopyWith(
          CoachTacticalEvent value, $Res Function(CoachTacticalEvent) then) =
      _$CoachTacticalEventCopyWithImpl<$Res, CoachTacticalEvent>;
}

/// @nodoc
class _$CoachTacticalEventCopyWithImpl<$Res, $Val extends CoachTacticalEvent>
    implements $CoachTacticalEventCopyWith<$Res> {
  _$CoachTacticalEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CoachTacticalEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$CoachTacticalEventGetTacticalsImplCopyWith<$Res> {
  factory _$$CoachTacticalEventGetTacticalsImplCopyWith(
          _$CoachTacticalEventGetTacticalsImpl value,
          $Res Function(_$CoachTacticalEventGetTacticalsImpl) then) =
      __$$CoachTacticalEventGetTacticalsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({GetAllTacticalParams params});

  $GetAllTacticalParamsCopyWith<$Res> get params;
}

/// @nodoc
class __$$CoachTacticalEventGetTacticalsImplCopyWithImpl<$Res>
    extends _$CoachTacticalEventCopyWithImpl<$Res,
        _$CoachTacticalEventGetTacticalsImpl>
    implements _$$CoachTacticalEventGetTacticalsImplCopyWith<$Res> {
  __$$CoachTacticalEventGetTacticalsImplCopyWithImpl(
      _$CoachTacticalEventGetTacticalsImpl _value,
      $Res Function(_$CoachTacticalEventGetTacticalsImpl) _then)
      : super(_value, _then);

  /// Create a copy of CoachTacticalEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? params = null,
  }) {
    return _then(_$CoachTacticalEventGetTacticalsImpl(
      null == params
          ? _value.params
          : params // ignore: cast_nullable_to_non_nullable
              as GetAllTacticalParams,
    ));
  }

  /// Create a copy of CoachTacticalEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GetAllTacticalParamsCopyWith<$Res> get params {
    return $GetAllTacticalParamsCopyWith<$Res>(_value.params, (value) {
      return _then(_value.copyWith(params: value));
    });
  }
}

/// @nodoc

class _$CoachTacticalEventGetTacticalsImpl
    implements CoachTacticalEventGetTacticals {
  const _$CoachTacticalEventGetTacticalsImpl(this.params);

  @override
  final GetAllTacticalParams params;

  @override
  String toString() {
    return 'CoachTacticalEvent.getTacticals(params: $params)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CoachTacticalEventGetTacticalsImpl &&
            (identical(other.params, params) || other.params == params));
  }

  @override
  int get hashCode => Object.hash(runtimeType, params);

  /// Create a copy of CoachTacticalEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CoachTacticalEventGetTacticalsImplCopyWith<
          _$CoachTacticalEventGetTacticalsImpl>
      get copyWith => __$$CoachTacticalEventGetTacticalsImplCopyWithImpl<
          _$CoachTacticalEventGetTacticalsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(GetAllTacticalParams params) getTacticals,
    required TResult Function(String query) filterTacticals,
    required TResult Function() clear,
    required TResult Function(CreateTacticalParams params) create,
    required TResult Function(UpdateTacticalParams params) update,
    required TResult Function(DeleteTacticalParams params) delete,
  }) {
    return getTacticals(params);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(GetAllTacticalParams params)? getTacticals,
    TResult? Function(String query)? filterTacticals,
    TResult? Function()? clear,
    TResult? Function(CreateTacticalParams params)? create,
    TResult? Function(UpdateTacticalParams params)? update,
    TResult? Function(DeleteTacticalParams params)? delete,
  }) {
    return getTacticals?.call(params);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GetAllTacticalParams params)? getTacticals,
    TResult Function(String query)? filterTacticals,
    TResult Function()? clear,
    TResult Function(CreateTacticalParams params)? create,
    TResult Function(UpdateTacticalParams params)? update,
    TResult Function(DeleteTacticalParams params)? delete,
    required TResult orElse(),
  }) {
    if (getTacticals != null) {
      return getTacticals(params);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CoachTacticalEventGetTacticals value)
        getTacticals,
    required TResult Function(CoachTacticalEventFilterTacticals value)
        filterTacticals,
    required TResult Function(CoachTacticalEventClear value) clear,
    required TResult Function(CoachTacticalEventCreate value) create,
    required TResult Function(CoachTacticalEventUpdate value) update,
    required TResult Function(CoachTacticalEventDelete value) delete,
  }) {
    return getTacticals(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CoachTacticalEventGetTacticals value)? getTacticals,
    TResult? Function(CoachTacticalEventFilterTacticals value)? filterTacticals,
    TResult? Function(CoachTacticalEventClear value)? clear,
    TResult? Function(CoachTacticalEventCreate value)? create,
    TResult? Function(CoachTacticalEventUpdate value)? update,
    TResult? Function(CoachTacticalEventDelete value)? delete,
  }) {
    return getTacticals?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CoachTacticalEventGetTacticals value)? getTacticals,
    TResult Function(CoachTacticalEventFilterTacticals value)? filterTacticals,
    TResult Function(CoachTacticalEventClear value)? clear,
    TResult Function(CoachTacticalEventCreate value)? create,
    TResult Function(CoachTacticalEventUpdate value)? update,
    TResult Function(CoachTacticalEventDelete value)? delete,
    required TResult orElse(),
  }) {
    if (getTacticals != null) {
      return getTacticals(this);
    }
    return orElse();
  }
}

abstract class CoachTacticalEventGetTacticals implements CoachTacticalEvent {
  const factory CoachTacticalEventGetTacticals(
      final GetAllTacticalParams params) = _$CoachTacticalEventGetTacticalsImpl;

  GetAllTacticalParams get params;

  /// Create a copy of CoachTacticalEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CoachTacticalEventGetTacticalsImplCopyWith<
          _$CoachTacticalEventGetTacticalsImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CoachTacticalEventFilterTacticalsImplCopyWith<$Res> {
  factory _$$CoachTacticalEventFilterTacticalsImplCopyWith(
          _$CoachTacticalEventFilterTacticalsImpl value,
          $Res Function(_$CoachTacticalEventFilterTacticalsImpl) then) =
      __$$CoachTacticalEventFilterTacticalsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String query});
}

/// @nodoc
class __$$CoachTacticalEventFilterTacticalsImplCopyWithImpl<$Res>
    extends _$CoachTacticalEventCopyWithImpl<$Res,
        _$CoachTacticalEventFilterTacticalsImpl>
    implements _$$CoachTacticalEventFilterTacticalsImplCopyWith<$Res> {
  __$$CoachTacticalEventFilterTacticalsImplCopyWithImpl(
      _$CoachTacticalEventFilterTacticalsImpl _value,
      $Res Function(_$CoachTacticalEventFilterTacticalsImpl) _then)
      : super(_value, _then);

  /// Create a copy of CoachTacticalEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
  }) {
    return _then(_$CoachTacticalEventFilterTacticalsImpl(
      null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CoachTacticalEventFilterTacticalsImpl
    implements CoachTacticalEventFilterTacticals {
  const _$CoachTacticalEventFilterTacticalsImpl(this.query);

  @override
  final String query;

  @override
  String toString() {
    return 'CoachTacticalEvent.filterTacticals(query: $query)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CoachTacticalEventFilterTacticalsImpl &&
            (identical(other.query, query) || other.query == query));
  }

  @override
  int get hashCode => Object.hash(runtimeType, query);

  /// Create a copy of CoachTacticalEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CoachTacticalEventFilterTacticalsImplCopyWith<
          _$CoachTacticalEventFilterTacticalsImpl>
      get copyWith => __$$CoachTacticalEventFilterTacticalsImplCopyWithImpl<
          _$CoachTacticalEventFilterTacticalsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(GetAllTacticalParams params) getTacticals,
    required TResult Function(String query) filterTacticals,
    required TResult Function() clear,
    required TResult Function(CreateTacticalParams params) create,
    required TResult Function(UpdateTacticalParams params) update,
    required TResult Function(DeleteTacticalParams params) delete,
  }) {
    return filterTacticals(query);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(GetAllTacticalParams params)? getTacticals,
    TResult? Function(String query)? filterTacticals,
    TResult? Function()? clear,
    TResult? Function(CreateTacticalParams params)? create,
    TResult? Function(UpdateTacticalParams params)? update,
    TResult? Function(DeleteTacticalParams params)? delete,
  }) {
    return filterTacticals?.call(query);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GetAllTacticalParams params)? getTacticals,
    TResult Function(String query)? filterTacticals,
    TResult Function()? clear,
    TResult Function(CreateTacticalParams params)? create,
    TResult Function(UpdateTacticalParams params)? update,
    TResult Function(DeleteTacticalParams params)? delete,
    required TResult orElse(),
  }) {
    if (filterTacticals != null) {
      return filterTacticals(query);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CoachTacticalEventGetTacticals value)
        getTacticals,
    required TResult Function(CoachTacticalEventFilterTacticals value)
        filterTacticals,
    required TResult Function(CoachTacticalEventClear value) clear,
    required TResult Function(CoachTacticalEventCreate value) create,
    required TResult Function(CoachTacticalEventUpdate value) update,
    required TResult Function(CoachTacticalEventDelete value) delete,
  }) {
    return filterTacticals(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CoachTacticalEventGetTacticals value)? getTacticals,
    TResult? Function(CoachTacticalEventFilterTacticals value)? filterTacticals,
    TResult? Function(CoachTacticalEventClear value)? clear,
    TResult? Function(CoachTacticalEventCreate value)? create,
    TResult? Function(CoachTacticalEventUpdate value)? update,
    TResult? Function(CoachTacticalEventDelete value)? delete,
  }) {
    return filterTacticals?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CoachTacticalEventGetTacticals value)? getTacticals,
    TResult Function(CoachTacticalEventFilterTacticals value)? filterTacticals,
    TResult Function(CoachTacticalEventClear value)? clear,
    TResult Function(CoachTacticalEventCreate value)? create,
    TResult Function(CoachTacticalEventUpdate value)? update,
    TResult Function(CoachTacticalEventDelete value)? delete,
    required TResult orElse(),
  }) {
    if (filterTacticals != null) {
      return filterTacticals(this);
    }
    return orElse();
  }
}

abstract class CoachTacticalEventFilterTacticals implements CoachTacticalEvent {
  const factory CoachTacticalEventFilterTacticals(final String query) =
      _$CoachTacticalEventFilterTacticalsImpl;

  String get query;

  /// Create a copy of CoachTacticalEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CoachTacticalEventFilterTacticalsImplCopyWith<
          _$CoachTacticalEventFilterTacticalsImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CoachTacticalEventClearImplCopyWith<$Res> {
  factory _$$CoachTacticalEventClearImplCopyWith(
          _$CoachTacticalEventClearImpl value,
          $Res Function(_$CoachTacticalEventClearImpl) then) =
      __$$CoachTacticalEventClearImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CoachTacticalEventClearImplCopyWithImpl<$Res>
    extends _$CoachTacticalEventCopyWithImpl<$Res,
        _$CoachTacticalEventClearImpl>
    implements _$$CoachTacticalEventClearImplCopyWith<$Res> {
  __$$CoachTacticalEventClearImplCopyWithImpl(
      _$CoachTacticalEventClearImpl _value,
      $Res Function(_$CoachTacticalEventClearImpl) _then)
      : super(_value, _then);

  /// Create a copy of CoachTacticalEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$CoachTacticalEventClearImpl implements CoachTacticalEventClear {
  const _$CoachTacticalEventClearImpl();

  @override
  String toString() {
    return 'CoachTacticalEvent.clear()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CoachTacticalEventClearImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(GetAllTacticalParams params) getTacticals,
    required TResult Function(String query) filterTacticals,
    required TResult Function() clear,
    required TResult Function(CreateTacticalParams params) create,
    required TResult Function(UpdateTacticalParams params) update,
    required TResult Function(DeleteTacticalParams params) delete,
  }) {
    return clear();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(GetAllTacticalParams params)? getTacticals,
    TResult? Function(String query)? filterTacticals,
    TResult? Function()? clear,
    TResult? Function(CreateTacticalParams params)? create,
    TResult? Function(UpdateTacticalParams params)? update,
    TResult? Function(DeleteTacticalParams params)? delete,
  }) {
    return clear?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GetAllTacticalParams params)? getTacticals,
    TResult Function(String query)? filterTacticals,
    TResult Function()? clear,
    TResult Function(CreateTacticalParams params)? create,
    TResult Function(UpdateTacticalParams params)? update,
    TResult Function(DeleteTacticalParams params)? delete,
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
    required TResult Function(CoachTacticalEventGetTacticals value)
        getTacticals,
    required TResult Function(CoachTacticalEventFilterTacticals value)
        filterTacticals,
    required TResult Function(CoachTacticalEventClear value) clear,
    required TResult Function(CoachTacticalEventCreate value) create,
    required TResult Function(CoachTacticalEventUpdate value) update,
    required TResult Function(CoachTacticalEventDelete value) delete,
  }) {
    return clear(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CoachTacticalEventGetTacticals value)? getTacticals,
    TResult? Function(CoachTacticalEventFilterTacticals value)? filterTacticals,
    TResult? Function(CoachTacticalEventClear value)? clear,
    TResult? Function(CoachTacticalEventCreate value)? create,
    TResult? Function(CoachTacticalEventUpdate value)? update,
    TResult? Function(CoachTacticalEventDelete value)? delete,
  }) {
    return clear?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CoachTacticalEventGetTacticals value)? getTacticals,
    TResult Function(CoachTacticalEventFilterTacticals value)? filterTacticals,
    TResult Function(CoachTacticalEventClear value)? clear,
    TResult Function(CoachTacticalEventCreate value)? create,
    TResult Function(CoachTacticalEventUpdate value)? update,
    TResult Function(CoachTacticalEventDelete value)? delete,
    required TResult orElse(),
  }) {
    if (clear != null) {
      return clear(this);
    }
    return orElse();
  }
}

abstract class CoachTacticalEventClear implements CoachTacticalEvent {
  const factory CoachTacticalEventClear() = _$CoachTacticalEventClearImpl;
}

/// @nodoc
abstract class _$$CoachTacticalEventCreateImplCopyWith<$Res> {
  factory _$$CoachTacticalEventCreateImplCopyWith(
          _$CoachTacticalEventCreateImpl value,
          $Res Function(_$CoachTacticalEventCreateImpl) then) =
      __$$CoachTacticalEventCreateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({CreateTacticalParams params});

  $CreateTacticalParamsCopyWith<$Res> get params;
}

/// @nodoc
class __$$CoachTacticalEventCreateImplCopyWithImpl<$Res>
    extends _$CoachTacticalEventCopyWithImpl<$Res,
        _$CoachTacticalEventCreateImpl>
    implements _$$CoachTacticalEventCreateImplCopyWith<$Res> {
  __$$CoachTacticalEventCreateImplCopyWithImpl(
      _$CoachTacticalEventCreateImpl _value,
      $Res Function(_$CoachTacticalEventCreateImpl) _then)
      : super(_value, _then);

  /// Create a copy of CoachTacticalEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? params = null,
  }) {
    return _then(_$CoachTacticalEventCreateImpl(
      null == params
          ? _value.params
          : params // ignore: cast_nullable_to_non_nullable
              as CreateTacticalParams,
    ));
  }

  /// Create a copy of CoachTacticalEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CreateTacticalParamsCopyWith<$Res> get params {
    return $CreateTacticalParamsCopyWith<$Res>(_value.params, (value) {
      return _then(_value.copyWith(params: value));
    });
  }
}

/// @nodoc

class _$CoachTacticalEventCreateImpl implements CoachTacticalEventCreate {
  const _$CoachTacticalEventCreateImpl(this.params);

  @override
  final CreateTacticalParams params;

  @override
  String toString() {
    return 'CoachTacticalEvent.create(params: $params)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CoachTacticalEventCreateImpl &&
            (identical(other.params, params) || other.params == params));
  }

  @override
  int get hashCode => Object.hash(runtimeType, params);

  /// Create a copy of CoachTacticalEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CoachTacticalEventCreateImplCopyWith<_$CoachTacticalEventCreateImpl>
      get copyWith => __$$CoachTacticalEventCreateImplCopyWithImpl<
          _$CoachTacticalEventCreateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(GetAllTacticalParams params) getTacticals,
    required TResult Function(String query) filterTacticals,
    required TResult Function() clear,
    required TResult Function(CreateTacticalParams params) create,
    required TResult Function(UpdateTacticalParams params) update,
    required TResult Function(DeleteTacticalParams params) delete,
  }) {
    return create(params);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(GetAllTacticalParams params)? getTacticals,
    TResult? Function(String query)? filterTacticals,
    TResult? Function()? clear,
    TResult? Function(CreateTacticalParams params)? create,
    TResult? Function(UpdateTacticalParams params)? update,
    TResult? Function(DeleteTacticalParams params)? delete,
  }) {
    return create?.call(params);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GetAllTacticalParams params)? getTacticals,
    TResult Function(String query)? filterTacticals,
    TResult Function()? clear,
    TResult Function(CreateTacticalParams params)? create,
    TResult Function(UpdateTacticalParams params)? update,
    TResult Function(DeleteTacticalParams params)? delete,
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
    required TResult Function(CoachTacticalEventGetTacticals value)
        getTacticals,
    required TResult Function(CoachTacticalEventFilterTacticals value)
        filterTacticals,
    required TResult Function(CoachTacticalEventClear value) clear,
    required TResult Function(CoachTacticalEventCreate value) create,
    required TResult Function(CoachTacticalEventUpdate value) update,
    required TResult Function(CoachTacticalEventDelete value) delete,
  }) {
    return create(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CoachTacticalEventGetTacticals value)? getTacticals,
    TResult? Function(CoachTacticalEventFilterTacticals value)? filterTacticals,
    TResult? Function(CoachTacticalEventClear value)? clear,
    TResult? Function(CoachTacticalEventCreate value)? create,
    TResult? Function(CoachTacticalEventUpdate value)? update,
    TResult? Function(CoachTacticalEventDelete value)? delete,
  }) {
    return create?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CoachTacticalEventGetTacticals value)? getTacticals,
    TResult Function(CoachTacticalEventFilterTacticals value)? filterTacticals,
    TResult Function(CoachTacticalEventClear value)? clear,
    TResult Function(CoachTacticalEventCreate value)? create,
    TResult Function(CoachTacticalEventUpdate value)? update,
    TResult Function(CoachTacticalEventDelete value)? delete,
    required TResult orElse(),
  }) {
    if (create != null) {
      return create(this);
    }
    return orElse();
  }
}

abstract class CoachTacticalEventCreate implements CoachTacticalEvent {
  const factory CoachTacticalEventCreate(final CreateTacticalParams params) =
      _$CoachTacticalEventCreateImpl;

  CreateTacticalParams get params;

  /// Create a copy of CoachTacticalEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CoachTacticalEventCreateImplCopyWith<_$CoachTacticalEventCreateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CoachTacticalEventUpdateImplCopyWith<$Res> {
  factory _$$CoachTacticalEventUpdateImplCopyWith(
          _$CoachTacticalEventUpdateImpl value,
          $Res Function(_$CoachTacticalEventUpdateImpl) then) =
      __$$CoachTacticalEventUpdateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({UpdateTacticalParams params});

  $UpdateTacticalParamsCopyWith<$Res> get params;
}

/// @nodoc
class __$$CoachTacticalEventUpdateImplCopyWithImpl<$Res>
    extends _$CoachTacticalEventCopyWithImpl<$Res,
        _$CoachTacticalEventUpdateImpl>
    implements _$$CoachTacticalEventUpdateImplCopyWith<$Res> {
  __$$CoachTacticalEventUpdateImplCopyWithImpl(
      _$CoachTacticalEventUpdateImpl _value,
      $Res Function(_$CoachTacticalEventUpdateImpl) _then)
      : super(_value, _then);

  /// Create a copy of CoachTacticalEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? params = null,
  }) {
    return _then(_$CoachTacticalEventUpdateImpl(
      null == params
          ? _value.params
          : params // ignore: cast_nullable_to_non_nullable
              as UpdateTacticalParams,
    ));
  }

  /// Create a copy of CoachTacticalEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UpdateTacticalParamsCopyWith<$Res> get params {
    return $UpdateTacticalParamsCopyWith<$Res>(_value.params, (value) {
      return _then(_value.copyWith(params: value));
    });
  }
}

/// @nodoc

class _$CoachTacticalEventUpdateImpl implements CoachTacticalEventUpdate {
  const _$CoachTacticalEventUpdateImpl(this.params);

  @override
  final UpdateTacticalParams params;

  @override
  String toString() {
    return 'CoachTacticalEvent.update(params: $params)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CoachTacticalEventUpdateImpl &&
            (identical(other.params, params) || other.params == params));
  }

  @override
  int get hashCode => Object.hash(runtimeType, params);

  /// Create a copy of CoachTacticalEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CoachTacticalEventUpdateImplCopyWith<_$CoachTacticalEventUpdateImpl>
      get copyWith => __$$CoachTacticalEventUpdateImplCopyWithImpl<
          _$CoachTacticalEventUpdateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(GetAllTacticalParams params) getTacticals,
    required TResult Function(String query) filterTacticals,
    required TResult Function() clear,
    required TResult Function(CreateTacticalParams params) create,
    required TResult Function(UpdateTacticalParams params) update,
    required TResult Function(DeleteTacticalParams params) delete,
  }) {
    return update(params);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(GetAllTacticalParams params)? getTacticals,
    TResult? Function(String query)? filterTacticals,
    TResult? Function()? clear,
    TResult? Function(CreateTacticalParams params)? create,
    TResult? Function(UpdateTacticalParams params)? update,
    TResult? Function(DeleteTacticalParams params)? delete,
  }) {
    return update?.call(params);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GetAllTacticalParams params)? getTacticals,
    TResult Function(String query)? filterTacticals,
    TResult Function()? clear,
    TResult Function(CreateTacticalParams params)? create,
    TResult Function(UpdateTacticalParams params)? update,
    TResult Function(DeleteTacticalParams params)? delete,
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
    required TResult Function(CoachTacticalEventGetTacticals value)
        getTacticals,
    required TResult Function(CoachTacticalEventFilterTacticals value)
        filterTacticals,
    required TResult Function(CoachTacticalEventClear value) clear,
    required TResult Function(CoachTacticalEventCreate value) create,
    required TResult Function(CoachTacticalEventUpdate value) update,
    required TResult Function(CoachTacticalEventDelete value) delete,
  }) {
    return update(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CoachTacticalEventGetTacticals value)? getTacticals,
    TResult? Function(CoachTacticalEventFilterTacticals value)? filterTacticals,
    TResult? Function(CoachTacticalEventClear value)? clear,
    TResult? Function(CoachTacticalEventCreate value)? create,
    TResult? Function(CoachTacticalEventUpdate value)? update,
    TResult? Function(CoachTacticalEventDelete value)? delete,
  }) {
    return update?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CoachTacticalEventGetTacticals value)? getTacticals,
    TResult Function(CoachTacticalEventFilterTacticals value)? filterTacticals,
    TResult Function(CoachTacticalEventClear value)? clear,
    TResult Function(CoachTacticalEventCreate value)? create,
    TResult Function(CoachTacticalEventUpdate value)? update,
    TResult Function(CoachTacticalEventDelete value)? delete,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(this);
    }
    return orElse();
  }
}

abstract class CoachTacticalEventUpdate implements CoachTacticalEvent {
  const factory CoachTacticalEventUpdate(final UpdateTacticalParams params) =
      _$CoachTacticalEventUpdateImpl;

  UpdateTacticalParams get params;

  /// Create a copy of CoachTacticalEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CoachTacticalEventUpdateImplCopyWith<_$CoachTacticalEventUpdateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CoachTacticalEventDeleteImplCopyWith<$Res> {
  factory _$$CoachTacticalEventDeleteImplCopyWith(
          _$CoachTacticalEventDeleteImpl value,
          $Res Function(_$CoachTacticalEventDeleteImpl) then) =
      __$$CoachTacticalEventDeleteImplCopyWithImpl<$Res>;
  @useResult
  $Res call({DeleteTacticalParams params});

  $DeleteTacticalParamsCopyWith<$Res> get params;
}

/// @nodoc
class __$$CoachTacticalEventDeleteImplCopyWithImpl<$Res>
    extends _$CoachTacticalEventCopyWithImpl<$Res,
        _$CoachTacticalEventDeleteImpl>
    implements _$$CoachTacticalEventDeleteImplCopyWith<$Res> {
  __$$CoachTacticalEventDeleteImplCopyWithImpl(
      _$CoachTacticalEventDeleteImpl _value,
      $Res Function(_$CoachTacticalEventDeleteImpl) _then)
      : super(_value, _then);

  /// Create a copy of CoachTacticalEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? params = null,
  }) {
    return _then(_$CoachTacticalEventDeleteImpl(
      null == params
          ? _value.params
          : params // ignore: cast_nullable_to_non_nullable
              as DeleteTacticalParams,
    ));
  }

  /// Create a copy of CoachTacticalEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DeleteTacticalParamsCopyWith<$Res> get params {
    return $DeleteTacticalParamsCopyWith<$Res>(_value.params, (value) {
      return _then(_value.copyWith(params: value));
    });
  }
}

/// @nodoc

class _$CoachTacticalEventDeleteImpl implements CoachTacticalEventDelete {
  const _$CoachTacticalEventDeleteImpl(this.params);

  @override
  final DeleteTacticalParams params;

  @override
  String toString() {
    return 'CoachTacticalEvent.delete(params: $params)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CoachTacticalEventDeleteImpl &&
            (identical(other.params, params) || other.params == params));
  }

  @override
  int get hashCode => Object.hash(runtimeType, params);

  /// Create a copy of CoachTacticalEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CoachTacticalEventDeleteImplCopyWith<_$CoachTacticalEventDeleteImpl>
      get copyWith => __$$CoachTacticalEventDeleteImplCopyWithImpl<
          _$CoachTacticalEventDeleteImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(GetAllTacticalParams params) getTacticals,
    required TResult Function(String query) filterTacticals,
    required TResult Function() clear,
    required TResult Function(CreateTacticalParams params) create,
    required TResult Function(UpdateTacticalParams params) update,
    required TResult Function(DeleteTacticalParams params) delete,
  }) {
    return delete(params);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(GetAllTacticalParams params)? getTacticals,
    TResult? Function(String query)? filterTacticals,
    TResult? Function()? clear,
    TResult? Function(CreateTacticalParams params)? create,
    TResult? Function(UpdateTacticalParams params)? update,
    TResult? Function(DeleteTacticalParams params)? delete,
  }) {
    return delete?.call(params);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GetAllTacticalParams params)? getTacticals,
    TResult Function(String query)? filterTacticals,
    TResult Function()? clear,
    TResult Function(CreateTacticalParams params)? create,
    TResult Function(UpdateTacticalParams params)? update,
    TResult Function(DeleteTacticalParams params)? delete,
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
    required TResult Function(CoachTacticalEventGetTacticals value)
        getTacticals,
    required TResult Function(CoachTacticalEventFilterTacticals value)
        filterTacticals,
    required TResult Function(CoachTacticalEventClear value) clear,
    required TResult Function(CoachTacticalEventCreate value) create,
    required TResult Function(CoachTacticalEventUpdate value) update,
    required TResult Function(CoachTacticalEventDelete value) delete,
  }) {
    return delete(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CoachTacticalEventGetTacticals value)? getTacticals,
    TResult? Function(CoachTacticalEventFilterTacticals value)? filterTacticals,
    TResult? Function(CoachTacticalEventClear value)? clear,
    TResult? Function(CoachTacticalEventCreate value)? create,
    TResult? Function(CoachTacticalEventUpdate value)? update,
    TResult? Function(CoachTacticalEventDelete value)? delete,
  }) {
    return delete?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CoachTacticalEventGetTacticals value)? getTacticals,
    TResult Function(CoachTacticalEventFilterTacticals value)? filterTacticals,
    TResult Function(CoachTacticalEventClear value)? clear,
    TResult Function(CoachTacticalEventCreate value)? create,
    TResult Function(CoachTacticalEventUpdate value)? update,
    TResult Function(CoachTacticalEventDelete value)? delete,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete(this);
    }
    return orElse();
  }
}

abstract class CoachTacticalEventDelete implements CoachTacticalEvent {
  const factory CoachTacticalEventDelete(final DeleteTacticalParams params) =
      _$CoachTacticalEventDeleteImpl;

  DeleteTacticalParams get params;

  /// Create a copy of CoachTacticalEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CoachTacticalEventDeleteImplCopyWith<_$CoachTacticalEventDeleteImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CoachTacticalState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<TacticalModel> tacticals,
            List<TacticalModel> filteredTacticals)
        loaded,
    required TResult Function(String message) failure,
    required TResult Function(TacticalModel tactical) created,
    required TResult Function(TacticalModel tactical) updated,
    required TResult Function(TacticalModel tactical) deleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<TacticalModel> tacticals,
            List<TacticalModel> filteredTacticals)?
        loaded,
    TResult? Function(String message)? failure,
    TResult? Function(TacticalModel tactical)? created,
    TResult? Function(TacticalModel tactical)? updated,
    TResult? Function(TacticalModel tactical)? deleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<TacticalModel> tacticals,
            List<TacticalModel> filteredTacticals)?
        loaded,
    TResult Function(String message)? failure,
    TResult Function(TacticalModel tactical)? created,
    TResult Function(TacticalModel tactical)? updated,
    TResult Function(TacticalModel tactical)? deleted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CoachTacticalStateInitial value) initial,
    required TResult Function(CoachTacticalStateLoading value) loading,
    required TResult Function(CoachTacticalStateLoaded value) loaded,
    required TResult Function(CoachTacticalStateFailure value) failure,
    required TResult Function(CoachTacticalStateCreated value) created,
    required TResult Function(CoachTacticalStateUpdated value) updated,
    required TResult Function(CoachTacticalStateDeleted value) deleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CoachTacticalStateInitial value)? initial,
    TResult? Function(CoachTacticalStateLoading value)? loading,
    TResult? Function(CoachTacticalStateLoaded value)? loaded,
    TResult? Function(CoachTacticalStateFailure value)? failure,
    TResult? Function(CoachTacticalStateCreated value)? created,
    TResult? Function(CoachTacticalStateUpdated value)? updated,
    TResult? Function(CoachTacticalStateDeleted value)? deleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CoachTacticalStateInitial value)? initial,
    TResult Function(CoachTacticalStateLoading value)? loading,
    TResult Function(CoachTacticalStateLoaded value)? loaded,
    TResult Function(CoachTacticalStateFailure value)? failure,
    TResult Function(CoachTacticalStateCreated value)? created,
    TResult Function(CoachTacticalStateUpdated value)? updated,
    TResult Function(CoachTacticalStateDeleted value)? deleted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CoachTacticalStateCopyWith<$Res> {
  factory $CoachTacticalStateCopyWith(
          CoachTacticalState value, $Res Function(CoachTacticalState) then) =
      _$CoachTacticalStateCopyWithImpl<$Res, CoachTacticalState>;
}

/// @nodoc
class _$CoachTacticalStateCopyWithImpl<$Res, $Val extends CoachTacticalState>
    implements $CoachTacticalStateCopyWith<$Res> {
  _$CoachTacticalStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CoachTacticalState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$CoachTacticalStateInitialImplCopyWith<$Res> {
  factory _$$CoachTacticalStateInitialImplCopyWith(
          _$CoachTacticalStateInitialImpl value,
          $Res Function(_$CoachTacticalStateInitialImpl) then) =
      __$$CoachTacticalStateInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CoachTacticalStateInitialImplCopyWithImpl<$Res>
    extends _$CoachTacticalStateCopyWithImpl<$Res,
        _$CoachTacticalStateInitialImpl>
    implements _$$CoachTacticalStateInitialImplCopyWith<$Res> {
  __$$CoachTacticalStateInitialImplCopyWithImpl(
      _$CoachTacticalStateInitialImpl _value,
      $Res Function(_$CoachTacticalStateInitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of CoachTacticalState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$CoachTacticalStateInitialImpl implements CoachTacticalStateInitial {
  const _$CoachTacticalStateInitialImpl();

  @override
  String toString() {
    return 'CoachTacticalState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CoachTacticalStateInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<TacticalModel> tacticals,
            List<TacticalModel> filteredTacticals)
        loaded,
    required TResult Function(String message) failure,
    required TResult Function(TacticalModel tactical) created,
    required TResult Function(TacticalModel tactical) updated,
    required TResult Function(TacticalModel tactical) deleted,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<TacticalModel> tacticals,
            List<TacticalModel> filteredTacticals)?
        loaded,
    TResult? Function(String message)? failure,
    TResult? Function(TacticalModel tactical)? created,
    TResult? Function(TacticalModel tactical)? updated,
    TResult? Function(TacticalModel tactical)? deleted,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<TacticalModel> tacticals,
            List<TacticalModel> filteredTacticals)?
        loaded,
    TResult Function(String message)? failure,
    TResult Function(TacticalModel tactical)? created,
    TResult Function(TacticalModel tactical)? updated,
    TResult Function(TacticalModel tactical)? deleted,
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
    required TResult Function(CoachTacticalStateInitial value) initial,
    required TResult Function(CoachTacticalStateLoading value) loading,
    required TResult Function(CoachTacticalStateLoaded value) loaded,
    required TResult Function(CoachTacticalStateFailure value) failure,
    required TResult Function(CoachTacticalStateCreated value) created,
    required TResult Function(CoachTacticalStateUpdated value) updated,
    required TResult Function(CoachTacticalStateDeleted value) deleted,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CoachTacticalStateInitial value)? initial,
    TResult? Function(CoachTacticalStateLoading value)? loading,
    TResult? Function(CoachTacticalStateLoaded value)? loaded,
    TResult? Function(CoachTacticalStateFailure value)? failure,
    TResult? Function(CoachTacticalStateCreated value)? created,
    TResult? Function(CoachTacticalStateUpdated value)? updated,
    TResult? Function(CoachTacticalStateDeleted value)? deleted,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CoachTacticalStateInitial value)? initial,
    TResult Function(CoachTacticalStateLoading value)? loading,
    TResult Function(CoachTacticalStateLoaded value)? loaded,
    TResult Function(CoachTacticalStateFailure value)? failure,
    TResult Function(CoachTacticalStateCreated value)? created,
    TResult Function(CoachTacticalStateUpdated value)? updated,
    TResult Function(CoachTacticalStateDeleted value)? deleted,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class CoachTacticalStateInitial implements CoachTacticalState {
  const factory CoachTacticalStateInitial() = _$CoachTacticalStateInitialImpl;
}

/// @nodoc
abstract class _$$CoachTacticalStateLoadingImplCopyWith<$Res> {
  factory _$$CoachTacticalStateLoadingImplCopyWith(
          _$CoachTacticalStateLoadingImpl value,
          $Res Function(_$CoachTacticalStateLoadingImpl) then) =
      __$$CoachTacticalStateLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CoachTacticalStateLoadingImplCopyWithImpl<$Res>
    extends _$CoachTacticalStateCopyWithImpl<$Res,
        _$CoachTacticalStateLoadingImpl>
    implements _$$CoachTacticalStateLoadingImplCopyWith<$Res> {
  __$$CoachTacticalStateLoadingImplCopyWithImpl(
      _$CoachTacticalStateLoadingImpl _value,
      $Res Function(_$CoachTacticalStateLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of CoachTacticalState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$CoachTacticalStateLoadingImpl implements CoachTacticalStateLoading {
  const _$CoachTacticalStateLoadingImpl();

  @override
  String toString() {
    return 'CoachTacticalState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CoachTacticalStateLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<TacticalModel> tacticals,
            List<TacticalModel> filteredTacticals)
        loaded,
    required TResult Function(String message) failure,
    required TResult Function(TacticalModel tactical) created,
    required TResult Function(TacticalModel tactical) updated,
    required TResult Function(TacticalModel tactical) deleted,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<TacticalModel> tacticals,
            List<TacticalModel> filteredTacticals)?
        loaded,
    TResult? Function(String message)? failure,
    TResult? Function(TacticalModel tactical)? created,
    TResult? Function(TacticalModel tactical)? updated,
    TResult? Function(TacticalModel tactical)? deleted,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<TacticalModel> tacticals,
            List<TacticalModel> filteredTacticals)?
        loaded,
    TResult Function(String message)? failure,
    TResult Function(TacticalModel tactical)? created,
    TResult Function(TacticalModel tactical)? updated,
    TResult Function(TacticalModel tactical)? deleted,
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
    required TResult Function(CoachTacticalStateInitial value) initial,
    required TResult Function(CoachTacticalStateLoading value) loading,
    required TResult Function(CoachTacticalStateLoaded value) loaded,
    required TResult Function(CoachTacticalStateFailure value) failure,
    required TResult Function(CoachTacticalStateCreated value) created,
    required TResult Function(CoachTacticalStateUpdated value) updated,
    required TResult Function(CoachTacticalStateDeleted value) deleted,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CoachTacticalStateInitial value)? initial,
    TResult? Function(CoachTacticalStateLoading value)? loading,
    TResult? Function(CoachTacticalStateLoaded value)? loaded,
    TResult? Function(CoachTacticalStateFailure value)? failure,
    TResult? Function(CoachTacticalStateCreated value)? created,
    TResult? Function(CoachTacticalStateUpdated value)? updated,
    TResult? Function(CoachTacticalStateDeleted value)? deleted,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CoachTacticalStateInitial value)? initial,
    TResult Function(CoachTacticalStateLoading value)? loading,
    TResult Function(CoachTacticalStateLoaded value)? loaded,
    TResult Function(CoachTacticalStateFailure value)? failure,
    TResult Function(CoachTacticalStateCreated value)? created,
    TResult Function(CoachTacticalStateUpdated value)? updated,
    TResult Function(CoachTacticalStateDeleted value)? deleted,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class CoachTacticalStateLoading implements CoachTacticalState {
  const factory CoachTacticalStateLoading() = _$CoachTacticalStateLoadingImpl;
}

/// @nodoc
abstract class _$$CoachTacticalStateLoadedImplCopyWith<$Res> {
  factory _$$CoachTacticalStateLoadedImplCopyWith(
          _$CoachTacticalStateLoadedImpl value,
          $Res Function(_$CoachTacticalStateLoadedImpl) then) =
      __$$CoachTacticalStateLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {List<TacticalModel> tacticals, List<TacticalModel> filteredTacticals});
}

/// @nodoc
class __$$CoachTacticalStateLoadedImplCopyWithImpl<$Res>
    extends _$CoachTacticalStateCopyWithImpl<$Res,
        _$CoachTacticalStateLoadedImpl>
    implements _$$CoachTacticalStateLoadedImplCopyWith<$Res> {
  __$$CoachTacticalStateLoadedImplCopyWithImpl(
      _$CoachTacticalStateLoadedImpl _value,
      $Res Function(_$CoachTacticalStateLoadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of CoachTacticalState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tacticals = null,
    Object? filteredTacticals = null,
  }) {
    return _then(_$CoachTacticalStateLoadedImpl(
      tacticals: null == tacticals
          ? _value._tacticals
          : tacticals // ignore: cast_nullable_to_non_nullable
              as List<TacticalModel>,
      filteredTacticals: null == filteredTacticals
          ? _value._filteredTacticals
          : filteredTacticals // ignore: cast_nullable_to_non_nullable
              as List<TacticalModel>,
    ));
  }
}

/// @nodoc

class _$CoachTacticalStateLoadedImpl implements CoachTacticalStateLoaded {
  const _$CoachTacticalStateLoadedImpl(
      {required final List<TacticalModel> tacticals,
      required final List<TacticalModel> filteredTacticals})
      : _tacticals = tacticals,
        _filteredTacticals = filteredTacticals;

  final List<TacticalModel> _tacticals;
  @override
  List<TacticalModel> get tacticals {
    if (_tacticals is EqualUnmodifiableListView) return _tacticals;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tacticals);
  }

  final List<TacticalModel> _filteredTacticals;
  @override
  List<TacticalModel> get filteredTacticals {
    if (_filteredTacticals is EqualUnmodifiableListView)
      return _filteredTacticals;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_filteredTacticals);
  }

  @override
  String toString() {
    return 'CoachTacticalState.loaded(tacticals: $tacticals, filteredTacticals: $filteredTacticals)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CoachTacticalStateLoadedImpl &&
            const DeepCollectionEquality()
                .equals(other._tacticals, _tacticals) &&
            const DeepCollectionEquality()
                .equals(other._filteredTacticals, _filteredTacticals));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_tacticals),
      const DeepCollectionEquality().hash(_filteredTacticals));

  /// Create a copy of CoachTacticalState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CoachTacticalStateLoadedImplCopyWith<_$CoachTacticalStateLoadedImpl>
      get copyWith => __$$CoachTacticalStateLoadedImplCopyWithImpl<
          _$CoachTacticalStateLoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<TacticalModel> tacticals,
            List<TacticalModel> filteredTacticals)
        loaded,
    required TResult Function(String message) failure,
    required TResult Function(TacticalModel tactical) created,
    required TResult Function(TacticalModel tactical) updated,
    required TResult Function(TacticalModel tactical) deleted,
  }) {
    return loaded(tacticals, filteredTacticals);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<TacticalModel> tacticals,
            List<TacticalModel> filteredTacticals)?
        loaded,
    TResult? Function(String message)? failure,
    TResult? Function(TacticalModel tactical)? created,
    TResult? Function(TacticalModel tactical)? updated,
    TResult? Function(TacticalModel tactical)? deleted,
  }) {
    return loaded?.call(tacticals, filteredTacticals);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<TacticalModel> tacticals,
            List<TacticalModel> filteredTacticals)?
        loaded,
    TResult Function(String message)? failure,
    TResult Function(TacticalModel tactical)? created,
    TResult Function(TacticalModel tactical)? updated,
    TResult Function(TacticalModel tactical)? deleted,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(tacticals, filteredTacticals);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CoachTacticalStateInitial value) initial,
    required TResult Function(CoachTacticalStateLoading value) loading,
    required TResult Function(CoachTacticalStateLoaded value) loaded,
    required TResult Function(CoachTacticalStateFailure value) failure,
    required TResult Function(CoachTacticalStateCreated value) created,
    required TResult Function(CoachTacticalStateUpdated value) updated,
    required TResult Function(CoachTacticalStateDeleted value) deleted,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CoachTacticalStateInitial value)? initial,
    TResult? Function(CoachTacticalStateLoading value)? loading,
    TResult? Function(CoachTacticalStateLoaded value)? loaded,
    TResult? Function(CoachTacticalStateFailure value)? failure,
    TResult? Function(CoachTacticalStateCreated value)? created,
    TResult? Function(CoachTacticalStateUpdated value)? updated,
    TResult? Function(CoachTacticalStateDeleted value)? deleted,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CoachTacticalStateInitial value)? initial,
    TResult Function(CoachTacticalStateLoading value)? loading,
    TResult Function(CoachTacticalStateLoaded value)? loaded,
    TResult Function(CoachTacticalStateFailure value)? failure,
    TResult Function(CoachTacticalStateCreated value)? created,
    TResult Function(CoachTacticalStateUpdated value)? updated,
    TResult Function(CoachTacticalStateDeleted value)? deleted,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class CoachTacticalStateLoaded implements CoachTacticalState {
  const factory CoachTacticalStateLoaded(
          {required final List<TacticalModel> tacticals,
          required final List<TacticalModel> filteredTacticals}) =
      _$CoachTacticalStateLoadedImpl;

  List<TacticalModel> get tacticals;
  List<TacticalModel> get filteredTacticals;

  /// Create a copy of CoachTacticalState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CoachTacticalStateLoadedImplCopyWith<_$CoachTacticalStateLoadedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CoachTacticalStateFailureImplCopyWith<$Res> {
  factory _$$CoachTacticalStateFailureImplCopyWith(
          _$CoachTacticalStateFailureImpl value,
          $Res Function(_$CoachTacticalStateFailureImpl) then) =
      __$$CoachTacticalStateFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$CoachTacticalStateFailureImplCopyWithImpl<$Res>
    extends _$CoachTacticalStateCopyWithImpl<$Res,
        _$CoachTacticalStateFailureImpl>
    implements _$$CoachTacticalStateFailureImplCopyWith<$Res> {
  __$$CoachTacticalStateFailureImplCopyWithImpl(
      _$CoachTacticalStateFailureImpl _value,
      $Res Function(_$CoachTacticalStateFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of CoachTacticalState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$CoachTacticalStateFailureImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CoachTacticalStateFailureImpl implements CoachTacticalStateFailure {
  const _$CoachTacticalStateFailureImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'CoachTacticalState.failure(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CoachTacticalStateFailureImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of CoachTacticalState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CoachTacticalStateFailureImplCopyWith<_$CoachTacticalStateFailureImpl>
      get copyWith => __$$CoachTacticalStateFailureImplCopyWithImpl<
          _$CoachTacticalStateFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<TacticalModel> tacticals,
            List<TacticalModel> filteredTacticals)
        loaded,
    required TResult Function(String message) failure,
    required TResult Function(TacticalModel tactical) created,
    required TResult Function(TacticalModel tactical) updated,
    required TResult Function(TacticalModel tactical) deleted,
  }) {
    return failure(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<TacticalModel> tacticals,
            List<TacticalModel> filteredTacticals)?
        loaded,
    TResult? Function(String message)? failure,
    TResult? Function(TacticalModel tactical)? created,
    TResult? Function(TacticalModel tactical)? updated,
    TResult? Function(TacticalModel tactical)? deleted,
  }) {
    return failure?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<TacticalModel> tacticals,
            List<TacticalModel> filteredTacticals)?
        loaded,
    TResult Function(String message)? failure,
    TResult Function(TacticalModel tactical)? created,
    TResult Function(TacticalModel tactical)? updated,
    TResult Function(TacticalModel tactical)? deleted,
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
    required TResult Function(CoachTacticalStateInitial value) initial,
    required TResult Function(CoachTacticalStateLoading value) loading,
    required TResult Function(CoachTacticalStateLoaded value) loaded,
    required TResult Function(CoachTacticalStateFailure value) failure,
    required TResult Function(CoachTacticalStateCreated value) created,
    required TResult Function(CoachTacticalStateUpdated value) updated,
    required TResult Function(CoachTacticalStateDeleted value) deleted,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CoachTacticalStateInitial value)? initial,
    TResult? Function(CoachTacticalStateLoading value)? loading,
    TResult? Function(CoachTacticalStateLoaded value)? loaded,
    TResult? Function(CoachTacticalStateFailure value)? failure,
    TResult? Function(CoachTacticalStateCreated value)? created,
    TResult? Function(CoachTacticalStateUpdated value)? updated,
    TResult? Function(CoachTacticalStateDeleted value)? deleted,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CoachTacticalStateInitial value)? initial,
    TResult Function(CoachTacticalStateLoading value)? loading,
    TResult Function(CoachTacticalStateLoaded value)? loaded,
    TResult Function(CoachTacticalStateFailure value)? failure,
    TResult Function(CoachTacticalStateCreated value)? created,
    TResult Function(CoachTacticalStateUpdated value)? updated,
    TResult Function(CoachTacticalStateDeleted value)? deleted,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class CoachTacticalStateFailure implements CoachTacticalState {
  const factory CoachTacticalStateFailure(final String message) =
      _$CoachTacticalStateFailureImpl;

  String get message;

  /// Create a copy of CoachTacticalState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CoachTacticalStateFailureImplCopyWith<_$CoachTacticalStateFailureImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CoachTacticalStateCreatedImplCopyWith<$Res> {
  factory _$$CoachTacticalStateCreatedImplCopyWith(
          _$CoachTacticalStateCreatedImpl value,
          $Res Function(_$CoachTacticalStateCreatedImpl) then) =
      __$$CoachTacticalStateCreatedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({TacticalModel tactical});

  $TacticalModelCopyWith<$Res> get tactical;
}

/// @nodoc
class __$$CoachTacticalStateCreatedImplCopyWithImpl<$Res>
    extends _$CoachTacticalStateCopyWithImpl<$Res,
        _$CoachTacticalStateCreatedImpl>
    implements _$$CoachTacticalStateCreatedImplCopyWith<$Res> {
  __$$CoachTacticalStateCreatedImplCopyWithImpl(
      _$CoachTacticalStateCreatedImpl _value,
      $Res Function(_$CoachTacticalStateCreatedImpl) _then)
      : super(_value, _then);

  /// Create a copy of CoachTacticalState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tactical = null,
  }) {
    return _then(_$CoachTacticalStateCreatedImpl(
      null == tactical
          ? _value.tactical
          : tactical // ignore: cast_nullable_to_non_nullable
              as TacticalModel,
    ));
  }

  /// Create a copy of CoachTacticalState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TacticalModelCopyWith<$Res> get tactical {
    return $TacticalModelCopyWith<$Res>(_value.tactical, (value) {
      return _then(_value.copyWith(tactical: value));
    });
  }
}

/// @nodoc

class _$CoachTacticalStateCreatedImpl implements CoachTacticalStateCreated {
  const _$CoachTacticalStateCreatedImpl(this.tactical);

  @override
  final TacticalModel tactical;

  @override
  String toString() {
    return 'CoachTacticalState.created(tactical: $tactical)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CoachTacticalStateCreatedImpl &&
            (identical(other.tactical, tactical) ||
                other.tactical == tactical));
  }

  @override
  int get hashCode => Object.hash(runtimeType, tactical);

  /// Create a copy of CoachTacticalState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CoachTacticalStateCreatedImplCopyWith<_$CoachTacticalStateCreatedImpl>
      get copyWith => __$$CoachTacticalStateCreatedImplCopyWithImpl<
          _$CoachTacticalStateCreatedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<TacticalModel> tacticals,
            List<TacticalModel> filteredTacticals)
        loaded,
    required TResult Function(String message) failure,
    required TResult Function(TacticalModel tactical) created,
    required TResult Function(TacticalModel tactical) updated,
    required TResult Function(TacticalModel tactical) deleted,
  }) {
    return created(tactical);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<TacticalModel> tacticals,
            List<TacticalModel> filteredTacticals)?
        loaded,
    TResult? Function(String message)? failure,
    TResult? Function(TacticalModel tactical)? created,
    TResult? Function(TacticalModel tactical)? updated,
    TResult? Function(TacticalModel tactical)? deleted,
  }) {
    return created?.call(tactical);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<TacticalModel> tacticals,
            List<TacticalModel> filteredTacticals)?
        loaded,
    TResult Function(String message)? failure,
    TResult Function(TacticalModel tactical)? created,
    TResult Function(TacticalModel tactical)? updated,
    TResult Function(TacticalModel tactical)? deleted,
    required TResult orElse(),
  }) {
    if (created != null) {
      return created(tactical);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CoachTacticalStateInitial value) initial,
    required TResult Function(CoachTacticalStateLoading value) loading,
    required TResult Function(CoachTacticalStateLoaded value) loaded,
    required TResult Function(CoachTacticalStateFailure value) failure,
    required TResult Function(CoachTacticalStateCreated value) created,
    required TResult Function(CoachTacticalStateUpdated value) updated,
    required TResult Function(CoachTacticalStateDeleted value) deleted,
  }) {
    return created(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CoachTacticalStateInitial value)? initial,
    TResult? Function(CoachTacticalStateLoading value)? loading,
    TResult? Function(CoachTacticalStateLoaded value)? loaded,
    TResult? Function(CoachTacticalStateFailure value)? failure,
    TResult? Function(CoachTacticalStateCreated value)? created,
    TResult? Function(CoachTacticalStateUpdated value)? updated,
    TResult? Function(CoachTacticalStateDeleted value)? deleted,
  }) {
    return created?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CoachTacticalStateInitial value)? initial,
    TResult Function(CoachTacticalStateLoading value)? loading,
    TResult Function(CoachTacticalStateLoaded value)? loaded,
    TResult Function(CoachTacticalStateFailure value)? failure,
    TResult Function(CoachTacticalStateCreated value)? created,
    TResult Function(CoachTacticalStateUpdated value)? updated,
    TResult Function(CoachTacticalStateDeleted value)? deleted,
    required TResult orElse(),
  }) {
    if (created != null) {
      return created(this);
    }
    return orElse();
  }
}

abstract class CoachTacticalStateCreated implements CoachTacticalState {
  const factory CoachTacticalStateCreated(final TacticalModel tactical) =
      _$CoachTacticalStateCreatedImpl;

  TacticalModel get tactical;

  /// Create a copy of CoachTacticalState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CoachTacticalStateCreatedImplCopyWith<_$CoachTacticalStateCreatedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CoachTacticalStateUpdatedImplCopyWith<$Res> {
  factory _$$CoachTacticalStateUpdatedImplCopyWith(
          _$CoachTacticalStateUpdatedImpl value,
          $Res Function(_$CoachTacticalStateUpdatedImpl) then) =
      __$$CoachTacticalStateUpdatedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({TacticalModel tactical});

  $TacticalModelCopyWith<$Res> get tactical;
}

/// @nodoc
class __$$CoachTacticalStateUpdatedImplCopyWithImpl<$Res>
    extends _$CoachTacticalStateCopyWithImpl<$Res,
        _$CoachTacticalStateUpdatedImpl>
    implements _$$CoachTacticalStateUpdatedImplCopyWith<$Res> {
  __$$CoachTacticalStateUpdatedImplCopyWithImpl(
      _$CoachTacticalStateUpdatedImpl _value,
      $Res Function(_$CoachTacticalStateUpdatedImpl) _then)
      : super(_value, _then);

  /// Create a copy of CoachTacticalState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tactical = null,
  }) {
    return _then(_$CoachTacticalStateUpdatedImpl(
      null == tactical
          ? _value.tactical
          : tactical // ignore: cast_nullable_to_non_nullable
              as TacticalModel,
    ));
  }

  /// Create a copy of CoachTacticalState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TacticalModelCopyWith<$Res> get tactical {
    return $TacticalModelCopyWith<$Res>(_value.tactical, (value) {
      return _then(_value.copyWith(tactical: value));
    });
  }
}

/// @nodoc

class _$CoachTacticalStateUpdatedImpl implements CoachTacticalStateUpdated {
  const _$CoachTacticalStateUpdatedImpl(this.tactical);

  @override
  final TacticalModel tactical;

  @override
  String toString() {
    return 'CoachTacticalState.updated(tactical: $tactical)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CoachTacticalStateUpdatedImpl &&
            (identical(other.tactical, tactical) ||
                other.tactical == tactical));
  }

  @override
  int get hashCode => Object.hash(runtimeType, tactical);

  /// Create a copy of CoachTacticalState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CoachTacticalStateUpdatedImplCopyWith<_$CoachTacticalStateUpdatedImpl>
      get copyWith => __$$CoachTacticalStateUpdatedImplCopyWithImpl<
          _$CoachTacticalStateUpdatedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<TacticalModel> tacticals,
            List<TacticalModel> filteredTacticals)
        loaded,
    required TResult Function(String message) failure,
    required TResult Function(TacticalModel tactical) created,
    required TResult Function(TacticalModel tactical) updated,
    required TResult Function(TacticalModel tactical) deleted,
  }) {
    return updated(tactical);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<TacticalModel> tacticals,
            List<TacticalModel> filteredTacticals)?
        loaded,
    TResult? Function(String message)? failure,
    TResult? Function(TacticalModel tactical)? created,
    TResult? Function(TacticalModel tactical)? updated,
    TResult? Function(TacticalModel tactical)? deleted,
  }) {
    return updated?.call(tactical);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<TacticalModel> tacticals,
            List<TacticalModel> filteredTacticals)?
        loaded,
    TResult Function(String message)? failure,
    TResult Function(TacticalModel tactical)? created,
    TResult Function(TacticalModel tactical)? updated,
    TResult Function(TacticalModel tactical)? deleted,
    required TResult orElse(),
  }) {
    if (updated != null) {
      return updated(tactical);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CoachTacticalStateInitial value) initial,
    required TResult Function(CoachTacticalStateLoading value) loading,
    required TResult Function(CoachTacticalStateLoaded value) loaded,
    required TResult Function(CoachTacticalStateFailure value) failure,
    required TResult Function(CoachTacticalStateCreated value) created,
    required TResult Function(CoachTacticalStateUpdated value) updated,
    required TResult Function(CoachTacticalStateDeleted value) deleted,
  }) {
    return updated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CoachTacticalStateInitial value)? initial,
    TResult? Function(CoachTacticalStateLoading value)? loading,
    TResult? Function(CoachTacticalStateLoaded value)? loaded,
    TResult? Function(CoachTacticalStateFailure value)? failure,
    TResult? Function(CoachTacticalStateCreated value)? created,
    TResult? Function(CoachTacticalStateUpdated value)? updated,
    TResult? Function(CoachTacticalStateDeleted value)? deleted,
  }) {
    return updated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CoachTacticalStateInitial value)? initial,
    TResult Function(CoachTacticalStateLoading value)? loading,
    TResult Function(CoachTacticalStateLoaded value)? loaded,
    TResult Function(CoachTacticalStateFailure value)? failure,
    TResult Function(CoachTacticalStateCreated value)? created,
    TResult Function(CoachTacticalStateUpdated value)? updated,
    TResult Function(CoachTacticalStateDeleted value)? deleted,
    required TResult orElse(),
  }) {
    if (updated != null) {
      return updated(this);
    }
    return orElse();
  }
}

abstract class CoachTacticalStateUpdated implements CoachTacticalState {
  const factory CoachTacticalStateUpdated(final TacticalModel tactical) =
      _$CoachTacticalStateUpdatedImpl;

  TacticalModel get tactical;

  /// Create a copy of CoachTacticalState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CoachTacticalStateUpdatedImplCopyWith<_$CoachTacticalStateUpdatedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CoachTacticalStateDeletedImplCopyWith<$Res> {
  factory _$$CoachTacticalStateDeletedImplCopyWith(
          _$CoachTacticalStateDeletedImpl value,
          $Res Function(_$CoachTacticalStateDeletedImpl) then) =
      __$$CoachTacticalStateDeletedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({TacticalModel tactical});

  $TacticalModelCopyWith<$Res> get tactical;
}

/// @nodoc
class __$$CoachTacticalStateDeletedImplCopyWithImpl<$Res>
    extends _$CoachTacticalStateCopyWithImpl<$Res,
        _$CoachTacticalStateDeletedImpl>
    implements _$$CoachTacticalStateDeletedImplCopyWith<$Res> {
  __$$CoachTacticalStateDeletedImplCopyWithImpl(
      _$CoachTacticalStateDeletedImpl _value,
      $Res Function(_$CoachTacticalStateDeletedImpl) _then)
      : super(_value, _then);

  /// Create a copy of CoachTacticalState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tactical = null,
  }) {
    return _then(_$CoachTacticalStateDeletedImpl(
      null == tactical
          ? _value.tactical
          : tactical // ignore: cast_nullable_to_non_nullable
              as TacticalModel,
    ));
  }

  /// Create a copy of CoachTacticalState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TacticalModelCopyWith<$Res> get tactical {
    return $TacticalModelCopyWith<$Res>(_value.tactical, (value) {
      return _then(_value.copyWith(tactical: value));
    });
  }
}

/// @nodoc

class _$CoachTacticalStateDeletedImpl implements CoachTacticalStateDeleted {
  const _$CoachTacticalStateDeletedImpl(this.tactical);

  @override
  final TacticalModel tactical;

  @override
  String toString() {
    return 'CoachTacticalState.deleted(tactical: $tactical)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CoachTacticalStateDeletedImpl &&
            (identical(other.tactical, tactical) ||
                other.tactical == tactical));
  }

  @override
  int get hashCode => Object.hash(runtimeType, tactical);

  /// Create a copy of CoachTacticalState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CoachTacticalStateDeletedImplCopyWith<_$CoachTacticalStateDeletedImpl>
      get copyWith => __$$CoachTacticalStateDeletedImplCopyWithImpl<
          _$CoachTacticalStateDeletedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<TacticalModel> tacticals,
            List<TacticalModel> filteredTacticals)
        loaded,
    required TResult Function(String message) failure,
    required TResult Function(TacticalModel tactical) created,
    required TResult Function(TacticalModel tactical) updated,
    required TResult Function(TacticalModel tactical) deleted,
  }) {
    return deleted(tactical);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<TacticalModel> tacticals,
            List<TacticalModel> filteredTacticals)?
        loaded,
    TResult? Function(String message)? failure,
    TResult? Function(TacticalModel tactical)? created,
    TResult? Function(TacticalModel tactical)? updated,
    TResult? Function(TacticalModel tactical)? deleted,
  }) {
    return deleted?.call(tactical);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<TacticalModel> tacticals,
            List<TacticalModel> filteredTacticals)?
        loaded,
    TResult Function(String message)? failure,
    TResult Function(TacticalModel tactical)? created,
    TResult Function(TacticalModel tactical)? updated,
    TResult Function(TacticalModel tactical)? deleted,
    required TResult orElse(),
  }) {
    if (deleted != null) {
      return deleted(tactical);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CoachTacticalStateInitial value) initial,
    required TResult Function(CoachTacticalStateLoading value) loading,
    required TResult Function(CoachTacticalStateLoaded value) loaded,
    required TResult Function(CoachTacticalStateFailure value) failure,
    required TResult Function(CoachTacticalStateCreated value) created,
    required TResult Function(CoachTacticalStateUpdated value) updated,
    required TResult Function(CoachTacticalStateDeleted value) deleted,
  }) {
    return deleted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CoachTacticalStateInitial value)? initial,
    TResult? Function(CoachTacticalStateLoading value)? loading,
    TResult? Function(CoachTacticalStateLoaded value)? loaded,
    TResult? Function(CoachTacticalStateFailure value)? failure,
    TResult? Function(CoachTacticalStateCreated value)? created,
    TResult? Function(CoachTacticalStateUpdated value)? updated,
    TResult? Function(CoachTacticalStateDeleted value)? deleted,
  }) {
    return deleted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CoachTacticalStateInitial value)? initial,
    TResult Function(CoachTacticalStateLoading value)? loading,
    TResult Function(CoachTacticalStateLoaded value)? loaded,
    TResult Function(CoachTacticalStateFailure value)? failure,
    TResult Function(CoachTacticalStateCreated value)? created,
    TResult Function(CoachTacticalStateUpdated value)? updated,
    TResult Function(CoachTacticalStateDeleted value)? deleted,
    required TResult orElse(),
  }) {
    if (deleted != null) {
      return deleted(this);
    }
    return orElse();
  }
}

abstract class CoachTacticalStateDeleted implements CoachTacticalState {
  const factory CoachTacticalStateDeleted(final TacticalModel tactical) =
      _$CoachTacticalStateDeletedImpl;

  TacticalModel get tactical;

  /// Create a copy of CoachTacticalState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CoachTacticalStateDeletedImplCopyWith<_$CoachTacticalStateDeletedImpl>
      get copyWith => throw _privateConstructorUsedError;
}
