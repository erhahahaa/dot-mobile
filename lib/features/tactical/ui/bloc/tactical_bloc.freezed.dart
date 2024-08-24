// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tactical_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TacticalEvent {
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
    required TResult Function(TacticalEventGetTacticals value) getTacticals,
    required TResult Function(TacticalEventFilterTacticals value)
        filterTacticals,
    required TResult Function(TacticalEventClear value) clear,
    required TResult Function(TacticalEventCreate value) create,
    required TResult Function(TacticalEventUpdate value) update,
    required TResult Function(TacticalEventDelete value) delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TacticalEventGetTacticals value)? getTacticals,
    TResult? Function(TacticalEventFilterTacticals value)? filterTacticals,
    TResult? Function(TacticalEventClear value)? clear,
    TResult? Function(TacticalEventCreate value)? create,
    TResult? Function(TacticalEventUpdate value)? update,
    TResult? Function(TacticalEventDelete value)? delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TacticalEventGetTacticals value)? getTacticals,
    TResult Function(TacticalEventFilterTacticals value)? filterTacticals,
    TResult Function(TacticalEventClear value)? clear,
    TResult Function(TacticalEventCreate value)? create,
    TResult Function(TacticalEventUpdate value)? update,
    TResult Function(TacticalEventDelete value)? delete,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TacticalEventCopyWith<$Res> {
  factory $TacticalEventCopyWith(
          TacticalEvent value, $Res Function(TacticalEvent) then) =
      _$TacticalEventCopyWithImpl<$Res, TacticalEvent>;
}

/// @nodoc
class _$TacticalEventCopyWithImpl<$Res, $Val extends TacticalEvent>
    implements $TacticalEventCopyWith<$Res> {
  _$TacticalEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TacticalEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$TacticalEventGetTacticalsImplCopyWith<$Res> {
  factory _$$TacticalEventGetTacticalsImplCopyWith(
          _$TacticalEventGetTacticalsImpl value,
          $Res Function(_$TacticalEventGetTacticalsImpl) then) =
      __$$TacticalEventGetTacticalsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({GetAllTacticalParams params});

  $GetAllTacticalParamsCopyWith<$Res> get params;
}

/// @nodoc
class __$$TacticalEventGetTacticalsImplCopyWithImpl<$Res>
    extends _$TacticalEventCopyWithImpl<$Res, _$TacticalEventGetTacticalsImpl>
    implements _$$TacticalEventGetTacticalsImplCopyWith<$Res> {
  __$$TacticalEventGetTacticalsImplCopyWithImpl(
      _$TacticalEventGetTacticalsImpl _value,
      $Res Function(_$TacticalEventGetTacticalsImpl) _then)
      : super(_value, _then);

  /// Create a copy of TacticalEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? params = null,
  }) {
    return _then(_$TacticalEventGetTacticalsImpl(
      null == params
          ? _value.params
          : params // ignore: cast_nullable_to_non_nullable
              as GetAllTacticalParams,
    ));
  }

  /// Create a copy of TacticalEvent
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

class _$TacticalEventGetTacticalsImpl implements TacticalEventGetTacticals {
  const _$TacticalEventGetTacticalsImpl(this.params);

  @override
  final GetAllTacticalParams params;

  @override
  String toString() {
    return 'TacticalEvent.getTacticals(params: $params)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TacticalEventGetTacticalsImpl &&
            (identical(other.params, params) || other.params == params));
  }

  @override
  int get hashCode => Object.hash(runtimeType, params);

  /// Create a copy of TacticalEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TacticalEventGetTacticalsImplCopyWith<_$TacticalEventGetTacticalsImpl>
      get copyWith => __$$TacticalEventGetTacticalsImplCopyWithImpl<
          _$TacticalEventGetTacticalsImpl>(this, _$identity);

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
    required TResult Function(TacticalEventGetTacticals value) getTacticals,
    required TResult Function(TacticalEventFilterTacticals value)
        filterTacticals,
    required TResult Function(TacticalEventClear value) clear,
    required TResult Function(TacticalEventCreate value) create,
    required TResult Function(TacticalEventUpdate value) update,
    required TResult Function(TacticalEventDelete value) delete,
  }) {
    return getTacticals(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TacticalEventGetTacticals value)? getTacticals,
    TResult? Function(TacticalEventFilterTacticals value)? filterTacticals,
    TResult? Function(TacticalEventClear value)? clear,
    TResult? Function(TacticalEventCreate value)? create,
    TResult? Function(TacticalEventUpdate value)? update,
    TResult? Function(TacticalEventDelete value)? delete,
  }) {
    return getTacticals?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TacticalEventGetTacticals value)? getTacticals,
    TResult Function(TacticalEventFilterTacticals value)? filterTacticals,
    TResult Function(TacticalEventClear value)? clear,
    TResult Function(TacticalEventCreate value)? create,
    TResult Function(TacticalEventUpdate value)? update,
    TResult Function(TacticalEventDelete value)? delete,
    required TResult orElse(),
  }) {
    if (getTacticals != null) {
      return getTacticals(this);
    }
    return orElse();
  }
}

abstract class TacticalEventGetTacticals implements TacticalEvent {
  const factory TacticalEventGetTacticals(final GetAllTacticalParams params) =
      _$TacticalEventGetTacticalsImpl;

  GetAllTacticalParams get params;

  /// Create a copy of TacticalEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TacticalEventGetTacticalsImplCopyWith<_$TacticalEventGetTacticalsImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TacticalEventFilterTacticalsImplCopyWith<$Res> {
  factory _$$TacticalEventFilterTacticalsImplCopyWith(
          _$TacticalEventFilterTacticalsImpl value,
          $Res Function(_$TacticalEventFilterTacticalsImpl) then) =
      __$$TacticalEventFilterTacticalsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String query});
}

/// @nodoc
class __$$TacticalEventFilterTacticalsImplCopyWithImpl<$Res>
    extends _$TacticalEventCopyWithImpl<$Res,
        _$TacticalEventFilterTacticalsImpl>
    implements _$$TacticalEventFilterTacticalsImplCopyWith<$Res> {
  __$$TacticalEventFilterTacticalsImplCopyWithImpl(
      _$TacticalEventFilterTacticalsImpl _value,
      $Res Function(_$TacticalEventFilterTacticalsImpl) _then)
      : super(_value, _then);

  /// Create a copy of TacticalEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
  }) {
    return _then(_$TacticalEventFilterTacticalsImpl(
      null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$TacticalEventFilterTacticalsImpl
    implements TacticalEventFilterTacticals {
  const _$TacticalEventFilterTacticalsImpl(this.query);

  @override
  final String query;

  @override
  String toString() {
    return 'TacticalEvent.filterTacticals(query: $query)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TacticalEventFilterTacticalsImpl &&
            (identical(other.query, query) || other.query == query));
  }

  @override
  int get hashCode => Object.hash(runtimeType, query);

  /// Create a copy of TacticalEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TacticalEventFilterTacticalsImplCopyWith<
          _$TacticalEventFilterTacticalsImpl>
      get copyWith => __$$TacticalEventFilterTacticalsImplCopyWithImpl<
          _$TacticalEventFilterTacticalsImpl>(this, _$identity);

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
    required TResult Function(TacticalEventGetTacticals value) getTacticals,
    required TResult Function(TacticalEventFilterTacticals value)
        filterTacticals,
    required TResult Function(TacticalEventClear value) clear,
    required TResult Function(TacticalEventCreate value) create,
    required TResult Function(TacticalEventUpdate value) update,
    required TResult Function(TacticalEventDelete value) delete,
  }) {
    return filterTacticals(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TacticalEventGetTacticals value)? getTacticals,
    TResult? Function(TacticalEventFilterTacticals value)? filterTacticals,
    TResult? Function(TacticalEventClear value)? clear,
    TResult? Function(TacticalEventCreate value)? create,
    TResult? Function(TacticalEventUpdate value)? update,
    TResult? Function(TacticalEventDelete value)? delete,
  }) {
    return filterTacticals?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TacticalEventGetTacticals value)? getTacticals,
    TResult Function(TacticalEventFilterTacticals value)? filterTacticals,
    TResult Function(TacticalEventClear value)? clear,
    TResult Function(TacticalEventCreate value)? create,
    TResult Function(TacticalEventUpdate value)? update,
    TResult Function(TacticalEventDelete value)? delete,
    required TResult orElse(),
  }) {
    if (filterTacticals != null) {
      return filterTacticals(this);
    }
    return orElse();
  }
}

abstract class TacticalEventFilterTacticals implements TacticalEvent {
  const factory TacticalEventFilterTacticals(final String query) =
      _$TacticalEventFilterTacticalsImpl;

  String get query;

  /// Create a copy of TacticalEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TacticalEventFilterTacticalsImplCopyWith<
          _$TacticalEventFilterTacticalsImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TacticalEventClearImplCopyWith<$Res> {
  factory _$$TacticalEventClearImplCopyWith(_$TacticalEventClearImpl value,
          $Res Function(_$TacticalEventClearImpl) then) =
      __$$TacticalEventClearImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TacticalEventClearImplCopyWithImpl<$Res>
    extends _$TacticalEventCopyWithImpl<$Res, _$TacticalEventClearImpl>
    implements _$$TacticalEventClearImplCopyWith<$Res> {
  __$$TacticalEventClearImplCopyWithImpl(_$TacticalEventClearImpl _value,
      $Res Function(_$TacticalEventClearImpl) _then)
      : super(_value, _then);

  /// Create a copy of TacticalEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$TacticalEventClearImpl implements TacticalEventClear {
  const _$TacticalEventClearImpl();

  @override
  String toString() {
    return 'TacticalEvent.clear()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$TacticalEventClearImpl);
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
    required TResult Function(TacticalEventGetTacticals value) getTacticals,
    required TResult Function(TacticalEventFilterTacticals value)
        filterTacticals,
    required TResult Function(TacticalEventClear value) clear,
    required TResult Function(TacticalEventCreate value) create,
    required TResult Function(TacticalEventUpdate value) update,
    required TResult Function(TacticalEventDelete value) delete,
  }) {
    return clear(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TacticalEventGetTacticals value)? getTacticals,
    TResult? Function(TacticalEventFilterTacticals value)? filterTacticals,
    TResult? Function(TacticalEventClear value)? clear,
    TResult? Function(TacticalEventCreate value)? create,
    TResult? Function(TacticalEventUpdate value)? update,
    TResult? Function(TacticalEventDelete value)? delete,
  }) {
    return clear?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TacticalEventGetTacticals value)? getTacticals,
    TResult Function(TacticalEventFilterTacticals value)? filterTacticals,
    TResult Function(TacticalEventClear value)? clear,
    TResult Function(TacticalEventCreate value)? create,
    TResult Function(TacticalEventUpdate value)? update,
    TResult Function(TacticalEventDelete value)? delete,
    required TResult orElse(),
  }) {
    if (clear != null) {
      return clear(this);
    }
    return orElse();
  }
}

abstract class TacticalEventClear implements TacticalEvent {
  const factory TacticalEventClear() = _$TacticalEventClearImpl;
}

/// @nodoc
abstract class _$$TacticalEventCreateImplCopyWith<$Res> {
  factory _$$TacticalEventCreateImplCopyWith(_$TacticalEventCreateImpl value,
          $Res Function(_$TacticalEventCreateImpl) then) =
      __$$TacticalEventCreateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({CreateTacticalParams params});

  $CreateTacticalParamsCopyWith<$Res> get params;
}

/// @nodoc
class __$$TacticalEventCreateImplCopyWithImpl<$Res>
    extends _$TacticalEventCopyWithImpl<$Res, _$TacticalEventCreateImpl>
    implements _$$TacticalEventCreateImplCopyWith<$Res> {
  __$$TacticalEventCreateImplCopyWithImpl(_$TacticalEventCreateImpl _value,
      $Res Function(_$TacticalEventCreateImpl) _then)
      : super(_value, _then);

  /// Create a copy of TacticalEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? params = null,
  }) {
    return _then(_$TacticalEventCreateImpl(
      null == params
          ? _value.params
          : params // ignore: cast_nullable_to_non_nullable
              as CreateTacticalParams,
    ));
  }

  /// Create a copy of TacticalEvent
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

class _$TacticalEventCreateImpl implements TacticalEventCreate {
  const _$TacticalEventCreateImpl(this.params);

  @override
  final CreateTacticalParams params;

  @override
  String toString() {
    return 'TacticalEvent.create(params: $params)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TacticalEventCreateImpl &&
            (identical(other.params, params) || other.params == params));
  }

  @override
  int get hashCode => Object.hash(runtimeType, params);

  /// Create a copy of TacticalEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TacticalEventCreateImplCopyWith<_$TacticalEventCreateImpl> get copyWith =>
      __$$TacticalEventCreateImplCopyWithImpl<_$TacticalEventCreateImpl>(
          this, _$identity);

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
    required TResult Function(TacticalEventGetTacticals value) getTacticals,
    required TResult Function(TacticalEventFilterTacticals value)
        filterTacticals,
    required TResult Function(TacticalEventClear value) clear,
    required TResult Function(TacticalEventCreate value) create,
    required TResult Function(TacticalEventUpdate value) update,
    required TResult Function(TacticalEventDelete value) delete,
  }) {
    return create(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TacticalEventGetTacticals value)? getTacticals,
    TResult? Function(TacticalEventFilterTacticals value)? filterTacticals,
    TResult? Function(TacticalEventClear value)? clear,
    TResult? Function(TacticalEventCreate value)? create,
    TResult? Function(TacticalEventUpdate value)? update,
    TResult? Function(TacticalEventDelete value)? delete,
  }) {
    return create?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TacticalEventGetTacticals value)? getTacticals,
    TResult Function(TacticalEventFilterTacticals value)? filterTacticals,
    TResult Function(TacticalEventClear value)? clear,
    TResult Function(TacticalEventCreate value)? create,
    TResult Function(TacticalEventUpdate value)? update,
    TResult Function(TacticalEventDelete value)? delete,
    required TResult orElse(),
  }) {
    if (create != null) {
      return create(this);
    }
    return orElse();
  }
}

abstract class TacticalEventCreate implements TacticalEvent {
  const factory TacticalEventCreate(final CreateTacticalParams params) =
      _$TacticalEventCreateImpl;

  CreateTacticalParams get params;

  /// Create a copy of TacticalEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TacticalEventCreateImplCopyWith<_$TacticalEventCreateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TacticalEventUpdateImplCopyWith<$Res> {
  factory _$$TacticalEventUpdateImplCopyWith(_$TacticalEventUpdateImpl value,
          $Res Function(_$TacticalEventUpdateImpl) then) =
      __$$TacticalEventUpdateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({UpdateTacticalParams params});

  $UpdateTacticalParamsCopyWith<$Res> get params;
}

/// @nodoc
class __$$TacticalEventUpdateImplCopyWithImpl<$Res>
    extends _$TacticalEventCopyWithImpl<$Res, _$TacticalEventUpdateImpl>
    implements _$$TacticalEventUpdateImplCopyWith<$Res> {
  __$$TacticalEventUpdateImplCopyWithImpl(_$TacticalEventUpdateImpl _value,
      $Res Function(_$TacticalEventUpdateImpl) _then)
      : super(_value, _then);

  /// Create a copy of TacticalEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? params = null,
  }) {
    return _then(_$TacticalEventUpdateImpl(
      null == params
          ? _value.params
          : params // ignore: cast_nullable_to_non_nullable
              as UpdateTacticalParams,
    ));
  }

  /// Create a copy of TacticalEvent
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

class _$TacticalEventUpdateImpl implements TacticalEventUpdate {
  const _$TacticalEventUpdateImpl(this.params);

  @override
  final UpdateTacticalParams params;

  @override
  String toString() {
    return 'TacticalEvent.update(params: $params)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TacticalEventUpdateImpl &&
            (identical(other.params, params) || other.params == params));
  }

  @override
  int get hashCode => Object.hash(runtimeType, params);

  /// Create a copy of TacticalEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TacticalEventUpdateImplCopyWith<_$TacticalEventUpdateImpl> get copyWith =>
      __$$TacticalEventUpdateImplCopyWithImpl<_$TacticalEventUpdateImpl>(
          this, _$identity);

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
    required TResult Function(TacticalEventGetTacticals value) getTacticals,
    required TResult Function(TacticalEventFilterTacticals value)
        filterTacticals,
    required TResult Function(TacticalEventClear value) clear,
    required TResult Function(TacticalEventCreate value) create,
    required TResult Function(TacticalEventUpdate value) update,
    required TResult Function(TacticalEventDelete value) delete,
  }) {
    return update(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TacticalEventGetTacticals value)? getTacticals,
    TResult? Function(TacticalEventFilterTacticals value)? filterTacticals,
    TResult? Function(TacticalEventClear value)? clear,
    TResult? Function(TacticalEventCreate value)? create,
    TResult? Function(TacticalEventUpdate value)? update,
    TResult? Function(TacticalEventDelete value)? delete,
  }) {
    return update?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TacticalEventGetTacticals value)? getTacticals,
    TResult Function(TacticalEventFilterTacticals value)? filterTacticals,
    TResult Function(TacticalEventClear value)? clear,
    TResult Function(TacticalEventCreate value)? create,
    TResult Function(TacticalEventUpdate value)? update,
    TResult Function(TacticalEventDelete value)? delete,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(this);
    }
    return orElse();
  }
}

abstract class TacticalEventUpdate implements TacticalEvent {
  const factory TacticalEventUpdate(final UpdateTacticalParams params) =
      _$TacticalEventUpdateImpl;

  UpdateTacticalParams get params;

  /// Create a copy of TacticalEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TacticalEventUpdateImplCopyWith<_$TacticalEventUpdateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TacticalEventDeleteImplCopyWith<$Res> {
  factory _$$TacticalEventDeleteImplCopyWith(_$TacticalEventDeleteImpl value,
          $Res Function(_$TacticalEventDeleteImpl) then) =
      __$$TacticalEventDeleteImplCopyWithImpl<$Res>;
  @useResult
  $Res call({DeleteTacticalParams params});

  $DeleteTacticalParamsCopyWith<$Res> get params;
}

/// @nodoc
class __$$TacticalEventDeleteImplCopyWithImpl<$Res>
    extends _$TacticalEventCopyWithImpl<$Res, _$TacticalEventDeleteImpl>
    implements _$$TacticalEventDeleteImplCopyWith<$Res> {
  __$$TacticalEventDeleteImplCopyWithImpl(_$TacticalEventDeleteImpl _value,
      $Res Function(_$TacticalEventDeleteImpl) _then)
      : super(_value, _then);

  /// Create a copy of TacticalEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? params = null,
  }) {
    return _then(_$TacticalEventDeleteImpl(
      null == params
          ? _value.params
          : params // ignore: cast_nullable_to_non_nullable
              as DeleteTacticalParams,
    ));
  }

  /// Create a copy of TacticalEvent
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

class _$TacticalEventDeleteImpl implements TacticalEventDelete {
  const _$TacticalEventDeleteImpl(this.params);

  @override
  final DeleteTacticalParams params;

  @override
  String toString() {
    return 'TacticalEvent.delete(params: $params)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TacticalEventDeleteImpl &&
            (identical(other.params, params) || other.params == params));
  }

  @override
  int get hashCode => Object.hash(runtimeType, params);

  /// Create a copy of TacticalEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TacticalEventDeleteImplCopyWith<_$TacticalEventDeleteImpl> get copyWith =>
      __$$TacticalEventDeleteImplCopyWithImpl<_$TacticalEventDeleteImpl>(
          this, _$identity);

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
    required TResult Function(TacticalEventGetTacticals value) getTacticals,
    required TResult Function(TacticalEventFilterTacticals value)
        filterTacticals,
    required TResult Function(TacticalEventClear value) clear,
    required TResult Function(TacticalEventCreate value) create,
    required TResult Function(TacticalEventUpdate value) update,
    required TResult Function(TacticalEventDelete value) delete,
  }) {
    return delete(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TacticalEventGetTacticals value)? getTacticals,
    TResult? Function(TacticalEventFilterTacticals value)? filterTacticals,
    TResult? Function(TacticalEventClear value)? clear,
    TResult? Function(TacticalEventCreate value)? create,
    TResult? Function(TacticalEventUpdate value)? update,
    TResult? Function(TacticalEventDelete value)? delete,
  }) {
    return delete?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TacticalEventGetTacticals value)? getTacticals,
    TResult Function(TacticalEventFilterTacticals value)? filterTacticals,
    TResult Function(TacticalEventClear value)? clear,
    TResult Function(TacticalEventCreate value)? create,
    TResult Function(TacticalEventUpdate value)? update,
    TResult Function(TacticalEventDelete value)? delete,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete(this);
    }
    return orElse();
  }
}

abstract class TacticalEventDelete implements TacticalEvent {
  const factory TacticalEventDelete(final DeleteTacticalParams params) =
      _$TacticalEventDeleteImpl;

  DeleteTacticalParams get params;

  /// Create a copy of TacticalEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TacticalEventDeleteImplCopyWith<_$TacticalEventDeleteImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TacticalState {
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
    required TResult Function(TacticalStateInitial value) initial,
    required TResult Function(TacticalStateLoading value) loading,
    required TResult Function(TacticalStateLoaded value) loaded,
    required TResult Function(TacticalStateFailure value) failure,
    required TResult Function(TacticalStateCreated value) created,
    required TResult Function(TacticalStateUpdated value) updated,
    required TResult Function(TacticalStateDeleted value) deleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TacticalStateInitial value)? initial,
    TResult? Function(TacticalStateLoading value)? loading,
    TResult? Function(TacticalStateLoaded value)? loaded,
    TResult? Function(TacticalStateFailure value)? failure,
    TResult? Function(TacticalStateCreated value)? created,
    TResult? Function(TacticalStateUpdated value)? updated,
    TResult? Function(TacticalStateDeleted value)? deleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TacticalStateInitial value)? initial,
    TResult Function(TacticalStateLoading value)? loading,
    TResult Function(TacticalStateLoaded value)? loaded,
    TResult Function(TacticalStateFailure value)? failure,
    TResult Function(TacticalStateCreated value)? created,
    TResult Function(TacticalStateUpdated value)? updated,
    TResult Function(TacticalStateDeleted value)? deleted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TacticalStateCopyWith<$Res> {
  factory $TacticalStateCopyWith(
          TacticalState value, $Res Function(TacticalState) then) =
      _$TacticalStateCopyWithImpl<$Res, TacticalState>;
}

/// @nodoc
class _$TacticalStateCopyWithImpl<$Res, $Val extends TacticalState>
    implements $TacticalStateCopyWith<$Res> {
  _$TacticalStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TacticalState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$TacticalStateInitialImplCopyWith<$Res> {
  factory _$$TacticalStateInitialImplCopyWith(_$TacticalStateInitialImpl value,
          $Res Function(_$TacticalStateInitialImpl) then) =
      __$$TacticalStateInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TacticalStateInitialImplCopyWithImpl<$Res>
    extends _$TacticalStateCopyWithImpl<$Res, _$TacticalStateInitialImpl>
    implements _$$TacticalStateInitialImplCopyWith<$Res> {
  __$$TacticalStateInitialImplCopyWithImpl(_$TacticalStateInitialImpl _value,
      $Res Function(_$TacticalStateInitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of TacticalState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$TacticalStateInitialImpl implements TacticalStateInitial {
  const _$TacticalStateInitialImpl();

  @override
  String toString() {
    return 'TacticalState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TacticalStateInitialImpl);
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
    required TResult Function(TacticalStateInitial value) initial,
    required TResult Function(TacticalStateLoading value) loading,
    required TResult Function(TacticalStateLoaded value) loaded,
    required TResult Function(TacticalStateFailure value) failure,
    required TResult Function(TacticalStateCreated value) created,
    required TResult Function(TacticalStateUpdated value) updated,
    required TResult Function(TacticalStateDeleted value) deleted,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TacticalStateInitial value)? initial,
    TResult? Function(TacticalStateLoading value)? loading,
    TResult? Function(TacticalStateLoaded value)? loaded,
    TResult? Function(TacticalStateFailure value)? failure,
    TResult? Function(TacticalStateCreated value)? created,
    TResult? Function(TacticalStateUpdated value)? updated,
    TResult? Function(TacticalStateDeleted value)? deleted,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TacticalStateInitial value)? initial,
    TResult Function(TacticalStateLoading value)? loading,
    TResult Function(TacticalStateLoaded value)? loaded,
    TResult Function(TacticalStateFailure value)? failure,
    TResult Function(TacticalStateCreated value)? created,
    TResult Function(TacticalStateUpdated value)? updated,
    TResult Function(TacticalStateDeleted value)? deleted,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class TacticalStateInitial implements TacticalState {
  const factory TacticalStateInitial() = _$TacticalStateInitialImpl;
}

/// @nodoc
abstract class _$$TacticalStateLoadingImplCopyWith<$Res> {
  factory _$$TacticalStateLoadingImplCopyWith(_$TacticalStateLoadingImpl value,
          $Res Function(_$TacticalStateLoadingImpl) then) =
      __$$TacticalStateLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TacticalStateLoadingImplCopyWithImpl<$Res>
    extends _$TacticalStateCopyWithImpl<$Res, _$TacticalStateLoadingImpl>
    implements _$$TacticalStateLoadingImplCopyWith<$Res> {
  __$$TacticalStateLoadingImplCopyWithImpl(_$TacticalStateLoadingImpl _value,
      $Res Function(_$TacticalStateLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of TacticalState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$TacticalStateLoadingImpl implements TacticalStateLoading {
  const _$TacticalStateLoadingImpl();

  @override
  String toString() {
    return 'TacticalState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TacticalStateLoadingImpl);
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
    required TResult Function(TacticalStateInitial value) initial,
    required TResult Function(TacticalStateLoading value) loading,
    required TResult Function(TacticalStateLoaded value) loaded,
    required TResult Function(TacticalStateFailure value) failure,
    required TResult Function(TacticalStateCreated value) created,
    required TResult Function(TacticalStateUpdated value) updated,
    required TResult Function(TacticalStateDeleted value) deleted,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TacticalStateInitial value)? initial,
    TResult? Function(TacticalStateLoading value)? loading,
    TResult? Function(TacticalStateLoaded value)? loaded,
    TResult? Function(TacticalStateFailure value)? failure,
    TResult? Function(TacticalStateCreated value)? created,
    TResult? Function(TacticalStateUpdated value)? updated,
    TResult? Function(TacticalStateDeleted value)? deleted,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TacticalStateInitial value)? initial,
    TResult Function(TacticalStateLoading value)? loading,
    TResult Function(TacticalStateLoaded value)? loaded,
    TResult Function(TacticalStateFailure value)? failure,
    TResult Function(TacticalStateCreated value)? created,
    TResult Function(TacticalStateUpdated value)? updated,
    TResult Function(TacticalStateDeleted value)? deleted,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class TacticalStateLoading implements TacticalState {
  const factory TacticalStateLoading() = _$TacticalStateLoadingImpl;
}

/// @nodoc
abstract class _$$TacticalStateLoadedImplCopyWith<$Res> {
  factory _$$TacticalStateLoadedImplCopyWith(_$TacticalStateLoadedImpl value,
          $Res Function(_$TacticalStateLoadedImpl) then) =
      __$$TacticalStateLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {List<TacticalModel> tacticals, List<TacticalModel> filteredTacticals});
}

/// @nodoc
class __$$TacticalStateLoadedImplCopyWithImpl<$Res>
    extends _$TacticalStateCopyWithImpl<$Res, _$TacticalStateLoadedImpl>
    implements _$$TacticalStateLoadedImplCopyWith<$Res> {
  __$$TacticalStateLoadedImplCopyWithImpl(_$TacticalStateLoadedImpl _value,
      $Res Function(_$TacticalStateLoadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of TacticalState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tacticals = null,
    Object? filteredTacticals = null,
  }) {
    return _then(_$TacticalStateLoadedImpl(
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

class _$TacticalStateLoadedImpl implements TacticalStateLoaded {
  const _$TacticalStateLoadedImpl(
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
    return 'TacticalState.loaded(tacticals: $tacticals, filteredTacticals: $filteredTacticals)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TacticalStateLoadedImpl &&
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

  /// Create a copy of TacticalState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TacticalStateLoadedImplCopyWith<_$TacticalStateLoadedImpl> get copyWith =>
      __$$TacticalStateLoadedImplCopyWithImpl<_$TacticalStateLoadedImpl>(
          this, _$identity);

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
    required TResult Function(TacticalStateInitial value) initial,
    required TResult Function(TacticalStateLoading value) loading,
    required TResult Function(TacticalStateLoaded value) loaded,
    required TResult Function(TacticalStateFailure value) failure,
    required TResult Function(TacticalStateCreated value) created,
    required TResult Function(TacticalStateUpdated value) updated,
    required TResult Function(TacticalStateDeleted value) deleted,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TacticalStateInitial value)? initial,
    TResult? Function(TacticalStateLoading value)? loading,
    TResult? Function(TacticalStateLoaded value)? loaded,
    TResult? Function(TacticalStateFailure value)? failure,
    TResult? Function(TacticalStateCreated value)? created,
    TResult? Function(TacticalStateUpdated value)? updated,
    TResult? Function(TacticalStateDeleted value)? deleted,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TacticalStateInitial value)? initial,
    TResult Function(TacticalStateLoading value)? loading,
    TResult Function(TacticalStateLoaded value)? loaded,
    TResult Function(TacticalStateFailure value)? failure,
    TResult Function(TacticalStateCreated value)? created,
    TResult Function(TacticalStateUpdated value)? updated,
    TResult Function(TacticalStateDeleted value)? deleted,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class TacticalStateLoaded implements TacticalState {
  const factory TacticalStateLoaded(
          {required final List<TacticalModel> tacticals,
          required final List<TacticalModel> filteredTacticals}) =
      _$TacticalStateLoadedImpl;

  List<TacticalModel> get tacticals;
  List<TacticalModel> get filteredTacticals;

  /// Create a copy of TacticalState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TacticalStateLoadedImplCopyWith<_$TacticalStateLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TacticalStateFailureImplCopyWith<$Res> {
  factory _$$TacticalStateFailureImplCopyWith(_$TacticalStateFailureImpl value,
          $Res Function(_$TacticalStateFailureImpl) then) =
      __$$TacticalStateFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$TacticalStateFailureImplCopyWithImpl<$Res>
    extends _$TacticalStateCopyWithImpl<$Res, _$TacticalStateFailureImpl>
    implements _$$TacticalStateFailureImplCopyWith<$Res> {
  __$$TacticalStateFailureImplCopyWithImpl(_$TacticalStateFailureImpl _value,
      $Res Function(_$TacticalStateFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of TacticalState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$TacticalStateFailureImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$TacticalStateFailureImpl implements TacticalStateFailure {
  const _$TacticalStateFailureImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'TacticalState.failure(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TacticalStateFailureImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of TacticalState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TacticalStateFailureImplCopyWith<_$TacticalStateFailureImpl>
      get copyWith =>
          __$$TacticalStateFailureImplCopyWithImpl<_$TacticalStateFailureImpl>(
              this, _$identity);

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
    required TResult Function(TacticalStateInitial value) initial,
    required TResult Function(TacticalStateLoading value) loading,
    required TResult Function(TacticalStateLoaded value) loaded,
    required TResult Function(TacticalStateFailure value) failure,
    required TResult Function(TacticalStateCreated value) created,
    required TResult Function(TacticalStateUpdated value) updated,
    required TResult Function(TacticalStateDeleted value) deleted,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TacticalStateInitial value)? initial,
    TResult? Function(TacticalStateLoading value)? loading,
    TResult? Function(TacticalStateLoaded value)? loaded,
    TResult? Function(TacticalStateFailure value)? failure,
    TResult? Function(TacticalStateCreated value)? created,
    TResult? Function(TacticalStateUpdated value)? updated,
    TResult? Function(TacticalStateDeleted value)? deleted,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TacticalStateInitial value)? initial,
    TResult Function(TacticalStateLoading value)? loading,
    TResult Function(TacticalStateLoaded value)? loaded,
    TResult Function(TacticalStateFailure value)? failure,
    TResult Function(TacticalStateCreated value)? created,
    TResult Function(TacticalStateUpdated value)? updated,
    TResult Function(TacticalStateDeleted value)? deleted,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class TacticalStateFailure implements TacticalState {
  const factory TacticalStateFailure(final String message) =
      _$TacticalStateFailureImpl;

  String get message;

  /// Create a copy of TacticalState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TacticalStateFailureImplCopyWith<_$TacticalStateFailureImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TacticalStateCreatedImplCopyWith<$Res> {
  factory _$$TacticalStateCreatedImplCopyWith(_$TacticalStateCreatedImpl value,
          $Res Function(_$TacticalStateCreatedImpl) then) =
      __$$TacticalStateCreatedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({TacticalModel tactical});

  $TacticalModelCopyWith<$Res> get tactical;
}

/// @nodoc
class __$$TacticalStateCreatedImplCopyWithImpl<$Res>
    extends _$TacticalStateCopyWithImpl<$Res, _$TacticalStateCreatedImpl>
    implements _$$TacticalStateCreatedImplCopyWith<$Res> {
  __$$TacticalStateCreatedImplCopyWithImpl(_$TacticalStateCreatedImpl _value,
      $Res Function(_$TacticalStateCreatedImpl) _then)
      : super(_value, _then);

  /// Create a copy of TacticalState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tactical = null,
  }) {
    return _then(_$TacticalStateCreatedImpl(
      null == tactical
          ? _value.tactical
          : tactical // ignore: cast_nullable_to_non_nullable
              as TacticalModel,
    ));
  }

  /// Create a copy of TacticalState
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

class _$TacticalStateCreatedImpl implements TacticalStateCreated {
  const _$TacticalStateCreatedImpl(this.tactical);

  @override
  final TacticalModel tactical;

  @override
  String toString() {
    return 'TacticalState.created(tactical: $tactical)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TacticalStateCreatedImpl &&
            (identical(other.tactical, tactical) ||
                other.tactical == tactical));
  }

  @override
  int get hashCode => Object.hash(runtimeType, tactical);

  /// Create a copy of TacticalState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TacticalStateCreatedImplCopyWith<_$TacticalStateCreatedImpl>
      get copyWith =>
          __$$TacticalStateCreatedImplCopyWithImpl<_$TacticalStateCreatedImpl>(
              this, _$identity);

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
    required TResult Function(TacticalStateInitial value) initial,
    required TResult Function(TacticalStateLoading value) loading,
    required TResult Function(TacticalStateLoaded value) loaded,
    required TResult Function(TacticalStateFailure value) failure,
    required TResult Function(TacticalStateCreated value) created,
    required TResult Function(TacticalStateUpdated value) updated,
    required TResult Function(TacticalStateDeleted value) deleted,
  }) {
    return created(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TacticalStateInitial value)? initial,
    TResult? Function(TacticalStateLoading value)? loading,
    TResult? Function(TacticalStateLoaded value)? loaded,
    TResult? Function(TacticalStateFailure value)? failure,
    TResult? Function(TacticalStateCreated value)? created,
    TResult? Function(TacticalStateUpdated value)? updated,
    TResult? Function(TacticalStateDeleted value)? deleted,
  }) {
    return created?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TacticalStateInitial value)? initial,
    TResult Function(TacticalStateLoading value)? loading,
    TResult Function(TacticalStateLoaded value)? loaded,
    TResult Function(TacticalStateFailure value)? failure,
    TResult Function(TacticalStateCreated value)? created,
    TResult Function(TacticalStateUpdated value)? updated,
    TResult Function(TacticalStateDeleted value)? deleted,
    required TResult orElse(),
  }) {
    if (created != null) {
      return created(this);
    }
    return orElse();
  }
}

abstract class TacticalStateCreated implements TacticalState {
  const factory TacticalStateCreated(final TacticalModel tactical) =
      _$TacticalStateCreatedImpl;

  TacticalModel get tactical;

  /// Create a copy of TacticalState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TacticalStateCreatedImplCopyWith<_$TacticalStateCreatedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TacticalStateUpdatedImplCopyWith<$Res> {
  factory _$$TacticalStateUpdatedImplCopyWith(_$TacticalStateUpdatedImpl value,
          $Res Function(_$TacticalStateUpdatedImpl) then) =
      __$$TacticalStateUpdatedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({TacticalModel tactical});

  $TacticalModelCopyWith<$Res> get tactical;
}

/// @nodoc
class __$$TacticalStateUpdatedImplCopyWithImpl<$Res>
    extends _$TacticalStateCopyWithImpl<$Res, _$TacticalStateUpdatedImpl>
    implements _$$TacticalStateUpdatedImplCopyWith<$Res> {
  __$$TacticalStateUpdatedImplCopyWithImpl(_$TacticalStateUpdatedImpl _value,
      $Res Function(_$TacticalStateUpdatedImpl) _then)
      : super(_value, _then);

  /// Create a copy of TacticalState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tactical = null,
  }) {
    return _then(_$TacticalStateUpdatedImpl(
      null == tactical
          ? _value.tactical
          : tactical // ignore: cast_nullable_to_non_nullable
              as TacticalModel,
    ));
  }

  /// Create a copy of TacticalState
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

class _$TacticalStateUpdatedImpl implements TacticalStateUpdated {
  const _$TacticalStateUpdatedImpl(this.tactical);

  @override
  final TacticalModel tactical;

  @override
  String toString() {
    return 'TacticalState.updated(tactical: $tactical)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TacticalStateUpdatedImpl &&
            (identical(other.tactical, tactical) ||
                other.tactical == tactical));
  }

  @override
  int get hashCode => Object.hash(runtimeType, tactical);

  /// Create a copy of TacticalState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TacticalStateUpdatedImplCopyWith<_$TacticalStateUpdatedImpl>
      get copyWith =>
          __$$TacticalStateUpdatedImplCopyWithImpl<_$TacticalStateUpdatedImpl>(
              this, _$identity);

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
    required TResult Function(TacticalStateInitial value) initial,
    required TResult Function(TacticalStateLoading value) loading,
    required TResult Function(TacticalStateLoaded value) loaded,
    required TResult Function(TacticalStateFailure value) failure,
    required TResult Function(TacticalStateCreated value) created,
    required TResult Function(TacticalStateUpdated value) updated,
    required TResult Function(TacticalStateDeleted value) deleted,
  }) {
    return updated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TacticalStateInitial value)? initial,
    TResult? Function(TacticalStateLoading value)? loading,
    TResult? Function(TacticalStateLoaded value)? loaded,
    TResult? Function(TacticalStateFailure value)? failure,
    TResult? Function(TacticalStateCreated value)? created,
    TResult? Function(TacticalStateUpdated value)? updated,
    TResult? Function(TacticalStateDeleted value)? deleted,
  }) {
    return updated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TacticalStateInitial value)? initial,
    TResult Function(TacticalStateLoading value)? loading,
    TResult Function(TacticalStateLoaded value)? loaded,
    TResult Function(TacticalStateFailure value)? failure,
    TResult Function(TacticalStateCreated value)? created,
    TResult Function(TacticalStateUpdated value)? updated,
    TResult Function(TacticalStateDeleted value)? deleted,
    required TResult orElse(),
  }) {
    if (updated != null) {
      return updated(this);
    }
    return orElse();
  }
}

abstract class TacticalStateUpdated implements TacticalState {
  const factory TacticalStateUpdated(final TacticalModel tactical) =
      _$TacticalStateUpdatedImpl;

  TacticalModel get tactical;

  /// Create a copy of TacticalState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TacticalStateUpdatedImplCopyWith<_$TacticalStateUpdatedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TacticalStateDeletedImplCopyWith<$Res> {
  factory _$$TacticalStateDeletedImplCopyWith(_$TacticalStateDeletedImpl value,
          $Res Function(_$TacticalStateDeletedImpl) then) =
      __$$TacticalStateDeletedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({TacticalModel tactical});

  $TacticalModelCopyWith<$Res> get tactical;
}

/// @nodoc
class __$$TacticalStateDeletedImplCopyWithImpl<$Res>
    extends _$TacticalStateCopyWithImpl<$Res, _$TacticalStateDeletedImpl>
    implements _$$TacticalStateDeletedImplCopyWith<$Res> {
  __$$TacticalStateDeletedImplCopyWithImpl(_$TacticalStateDeletedImpl _value,
      $Res Function(_$TacticalStateDeletedImpl) _then)
      : super(_value, _then);

  /// Create a copy of TacticalState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tactical = null,
  }) {
    return _then(_$TacticalStateDeletedImpl(
      null == tactical
          ? _value.tactical
          : tactical // ignore: cast_nullable_to_non_nullable
              as TacticalModel,
    ));
  }

  /// Create a copy of TacticalState
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

class _$TacticalStateDeletedImpl implements TacticalStateDeleted {
  const _$TacticalStateDeletedImpl(this.tactical);

  @override
  final TacticalModel tactical;

  @override
  String toString() {
    return 'TacticalState.deleted(tactical: $tactical)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TacticalStateDeletedImpl &&
            (identical(other.tactical, tactical) ||
                other.tactical == tactical));
  }

  @override
  int get hashCode => Object.hash(runtimeType, tactical);

  /// Create a copy of TacticalState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TacticalStateDeletedImplCopyWith<_$TacticalStateDeletedImpl>
      get copyWith =>
          __$$TacticalStateDeletedImplCopyWithImpl<_$TacticalStateDeletedImpl>(
              this, _$identity);

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
    required TResult Function(TacticalStateInitial value) initial,
    required TResult Function(TacticalStateLoading value) loading,
    required TResult Function(TacticalStateLoaded value) loaded,
    required TResult Function(TacticalStateFailure value) failure,
    required TResult Function(TacticalStateCreated value) created,
    required TResult Function(TacticalStateUpdated value) updated,
    required TResult Function(TacticalStateDeleted value) deleted,
  }) {
    return deleted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TacticalStateInitial value)? initial,
    TResult? Function(TacticalStateLoading value)? loading,
    TResult? Function(TacticalStateLoaded value)? loaded,
    TResult? Function(TacticalStateFailure value)? failure,
    TResult? Function(TacticalStateCreated value)? created,
    TResult? Function(TacticalStateUpdated value)? updated,
    TResult? Function(TacticalStateDeleted value)? deleted,
  }) {
    return deleted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TacticalStateInitial value)? initial,
    TResult Function(TacticalStateLoading value)? loading,
    TResult Function(TacticalStateLoaded value)? loaded,
    TResult Function(TacticalStateFailure value)? failure,
    TResult Function(TacticalStateCreated value)? created,
    TResult Function(TacticalStateUpdated value)? updated,
    TResult Function(TacticalStateDeleted value)? deleted,
    required TResult orElse(),
  }) {
    if (deleted != null) {
      return deleted(this);
    }
    return orElse();
  }
}

abstract class TacticalStateDeleted implements TacticalState {
  const factory TacticalStateDeleted(final TacticalModel tactical) =
      _$TacticalStateDeletedImpl;

  TacticalModel get tactical;

  /// Create a copy of TacticalState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TacticalStateDeletedImplCopyWith<_$TacticalStateDeletedImpl>
      get copyWith => throw _privateConstructorUsedError;
}
