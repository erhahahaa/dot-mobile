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
    required TResult Function(_GetTacticals value) getTacticals,
    required TResult Function(_FilterTacticals value) filterTacticals,
    required TResult Function(_Clear value) clear,
    required TResult Function(_Create value) create,
    required TResult Function(_Update value) update,
    required TResult Function(_Delete value) delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetTacticals value)? getTacticals,
    TResult? Function(_FilterTacticals value)? filterTacticals,
    TResult? Function(_Clear value)? clear,
    TResult? Function(_Create value)? create,
    TResult? Function(_Update value)? update,
    TResult? Function(_Delete value)? delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetTacticals value)? getTacticals,
    TResult Function(_FilterTacticals value)? filterTacticals,
    TResult Function(_Clear value)? clear,
    TResult Function(_Create value)? create,
    TResult Function(_Update value)? update,
    TResult Function(_Delete value)? delete,
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
abstract class _$$GetTacticalsImplCopyWith<$Res> {
  factory _$$GetTacticalsImplCopyWith(
          _$GetTacticalsImpl value, $Res Function(_$GetTacticalsImpl) then) =
      __$$GetTacticalsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({GetAllTacticalParams params});

  $GetAllTacticalParamsCopyWith<$Res> get params;
}

/// @nodoc
class __$$GetTacticalsImplCopyWithImpl<$Res>
    extends _$CoachTacticalEventCopyWithImpl<$Res, _$GetTacticalsImpl>
    implements _$$GetTacticalsImplCopyWith<$Res> {
  __$$GetTacticalsImplCopyWithImpl(
      _$GetTacticalsImpl _value, $Res Function(_$GetTacticalsImpl) _then)
      : super(_value, _then);

  /// Create a copy of CoachTacticalEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? params = null,
  }) {
    return _then(_$GetTacticalsImpl(
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

class _$GetTacticalsImpl implements _GetTacticals {
  const _$GetTacticalsImpl(this.params);

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
            other is _$GetTacticalsImpl &&
            (identical(other.params, params) || other.params == params));
  }

  @override
  int get hashCode => Object.hash(runtimeType, params);

  /// Create a copy of CoachTacticalEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetTacticalsImplCopyWith<_$GetTacticalsImpl> get copyWith =>
      __$$GetTacticalsImplCopyWithImpl<_$GetTacticalsImpl>(this, _$identity);

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
    required TResult Function(_GetTacticals value) getTacticals,
    required TResult Function(_FilterTacticals value) filterTacticals,
    required TResult Function(_Clear value) clear,
    required TResult Function(_Create value) create,
    required TResult Function(_Update value) update,
    required TResult Function(_Delete value) delete,
  }) {
    return getTacticals(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetTacticals value)? getTacticals,
    TResult? Function(_FilterTacticals value)? filterTacticals,
    TResult? Function(_Clear value)? clear,
    TResult? Function(_Create value)? create,
    TResult? Function(_Update value)? update,
    TResult? Function(_Delete value)? delete,
  }) {
    return getTacticals?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetTacticals value)? getTacticals,
    TResult Function(_FilterTacticals value)? filterTacticals,
    TResult Function(_Clear value)? clear,
    TResult Function(_Create value)? create,
    TResult Function(_Update value)? update,
    TResult Function(_Delete value)? delete,
    required TResult orElse(),
  }) {
    if (getTacticals != null) {
      return getTacticals(this);
    }
    return orElse();
  }
}

abstract class _GetTacticals implements CoachTacticalEvent {
  const factory _GetTacticals(final GetAllTacticalParams params) =
      _$GetTacticalsImpl;

  GetAllTacticalParams get params;

  /// Create a copy of CoachTacticalEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetTacticalsImplCopyWith<_$GetTacticalsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FilterTacticalsImplCopyWith<$Res> {
  factory _$$FilterTacticalsImplCopyWith(_$FilterTacticalsImpl value,
          $Res Function(_$FilterTacticalsImpl) then) =
      __$$FilterTacticalsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String query});
}

/// @nodoc
class __$$FilterTacticalsImplCopyWithImpl<$Res>
    extends _$CoachTacticalEventCopyWithImpl<$Res, _$FilterTacticalsImpl>
    implements _$$FilterTacticalsImplCopyWith<$Res> {
  __$$FilterTacticalsImplCopyWithImpl(
      _$FilterTacticalsImpl _value, $Res Function(_$FilterTacticalsImpl) _then)
      : super(_value, _then);

  /// Create a copy of CoachTacticalEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
  }) {
    return _then(_$FilterTacticalsImpl(
      null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FilterTacticalsImpl implements _FilterTacticals {
  const _$FilterTacticalsImpl(this.query);

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
            other is _$FilterTacticalsImpl &&
            (identical(other.query, query) || other.query == query));
  }

  @override
  int get hashCode => Object.hash(runtimeType, query);

  /// Create a copy of CoachTacticalEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FilterTacticalsImplCopyWith<_$FilterTacticalsImpl> get copyWith =>
      __$$FilterTacticalsImplCopyWithImpl<_$FilterTacticalsImpl>(
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
    required TResult Function(_GetTacticals value) getTacticals,
    required TResult Function(_FilterTacticals value) filterTacticals,
    required TResult Function(_Clear value) clear,
    required TResult Function(_Create value) create,
    required TResult Function(_Update value) update,
    required TResult Function(_Delete value) delete,
  }) {
    return filterTacticals(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetTacticals value)? getTacticals,
    TResult? Function(_FilterTacticals value)? filterTacticals,
    TResult? Function(_Clear value)? clear,
    TResult? Function(_Create value)? create,
    TResult? Function(_Update value)? update,
    TResult? Function(_Delete value)? delete,
  }) {
    return filterTacticals?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetTacticals value)? getTacticals,
    TResult Function(_FilterTacticals value)? filterTacticals,
    TResult Function(_Clear value)? clear,
    TResult Function(_Create value)? create,
    TResult Function(_Update value)? update,
    TResult Function(_Delete value)? delete,
    required TResult orElse(),
  }) {
    if (filterTacticals != null) {
      return filterTacticals(this);
    }
    return orElse();
  }
}

abstract class _FilterTacticals implements CoachTacticalEvent {
  const factory _FilterTacticals(final String query) = _$FilterTacticalsImpl;

  String get query;

  /// Create a copy of CoachTacticalEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FilterTacticalsImplCopyWith<_$FilterTacticalsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ClearImplCopyWith<$Res> {
  factory _$$ClearImplCopyWith(
          _$ClearImpl value, $Res Function(_$ClearImpl) then) =
      __$$ClearImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ClearImplCopyWithImpl<$Res>
    extends _$CoachTacticalEventCopyWithImpl<$Res, _$ClearImpl>
    implements _$$ClearImplCopyWith<$Res> {
  __$$ClearImplCopyWithImpl(
      _$ClearImpl _value, $Res Function(_$ClearImpl) _then)
      : super(_value, _then);

  /// Create a copy of CoachTacticalEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ClearImpl implements _Clear {
  const _$ClearImpl();

  @override
  String toString() {
    return 'CoachTacticalEvent.clear()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ClearImpl);
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
    required TResult Function(_GetTacticals value) getTacticals,
    required TResult Function(_FilterTacticals value) filterTacticals,
    required TResult Function(_Clear value) clear,
    required TResult Function(_Create value) create,
    required TResult Function(_Update value) update,
    required TResult Function(_Delete value) delete,
  }) {
    return clear(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetTacticals value)? getTacticals,
    TResult? Function(_FilterTacticals value)? filterTacticals,
    TResult? Function(_Clear value)? clear,
    TResult? Function(_Create value)? create,
    TResult? Function(_Update value)? update,
    TResult? Function(_Delete value)? delete,
  }) {
    return clear?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetTacticals value)? getTacticals,
    TResult Function(_FilterTacticals value)? filterTacticals,
    TResult Function(_Clear value)? clear,
    TResult Function(_Create value)? create,
    TResult Function(_Update value)? update,
    TResult Function(_Delete value)? delete,
    required TResult orElse(),
  }) {
    if (clear != null) {
      return clear(this);
    }
    return orElse();
  }
}

abstract class _Clear implements CoachTacticalEvent {
  const factory _Clear() = _$ClearImpl;
}

/// @nodoc
abstract class _$$CreateImplCopyWith<$Res> {
  factory _$$CreateImplCopyWith(
          _$CreateImpl value, $Res Function(_$CreateImpl) then) =
      __$$CreateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({CreateTacticalParams params});

  $CreateTacticalParamsCopyWith<$Res> get params;
}

/// @nodoc
class __$$CreateImplCopyWithImpl<$Res>
    extends _$CoachTacticalEventCopyWithImpl<$Res, _$CreateImpl>
    implements _$$CreateImplCopyWith<$Res> {
  __$$CreateImplCopyWithImpl(
      _$CreateImpl _value, $Res Function(_$CreateImpl) _then)
      : super(_value, _then);

  /// Create a copy of CoachTacticalEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? params = null,
  }) {
    return _then(_$CreateImpl(
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

class _$CreateImpl implements _Create {
  const _$CreateImpl(this.params);

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
            other is _$CreateImpl &&
            (identical(other.params, params) || other.params == params));
  }

  @override
  int get hashCode => Object.hash(runtimeType, params);

  /// Create a copy of CoachTacticalEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateImplCopyWith<_$CreateImpl> get copyWith =>
      __$$CreateImplCopyWithImpl<_$CreateImpl>(this, _$identity);

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
    required TResult Function(_GetTacticals value) getTacticals,
    required TResult Function(_FilterTacticals value) filterTacticals,
    required TResult Function(_Clear value) clear,
    required TResult Function(_Create value) create,
    required TResult Function(_Update value) update,
    required TResult Function(_Delete value) delete,
  }) {
    return create(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetTacticals value)? getTacticals,
    TResult? Function(_FilterTacticals value)? filterTacticals,
    TResult? Function(_Clear value)? clear,
    TResult? Function(_Create value)? create,
    TResult? Function(_Update value)? update,
    TResult? Function(_Delete value)? delete,
  }) {
    return create?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetTacticals value)? getTacticals,
    TResult Function(_FilterTacticals value)? filterTacticals,
    TResult Function(_Clear value)? clear,
    TResult Function(_Create value)? create,
    TResult Function(_Update value)? update,
    TResult Function(_Delete value)? delete,
    required TResult orElse(),
  }) {
    if (create != null) {
      return create(this);
    }
    return orElse();
  }
}

abstract class _Create implements CoachTacticalEvent {
  const factory _Create(final CreateTacticalParams params) = _$CreateImpl;

  CreateTacticalParams get params;

  /// Create a copy of CoachTacticalEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateImplCopyWith<_$CreateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateImplCopyWith<$Res> {
  factory _$$UpdateImplCopyWith(
          _$UpdateImpl value, $Res Function(_$UpdateImpl) then) =
      __$$UpdateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({UpdateTacticalParams params});

  $UpdateTacticalParamsCopyWith<$Res> get params;
}

/// @nodoc
class __$$UpdateImplCopyWithImpl<$Res>
    extends _$CoachTacticalEventCopyWithImpl<$Res, _$UpdateImpl>
    implements _$$UpdateImplCopyWith<$Res> {
  __$$UpdateImplCopyWithImpl(
      _$UpdateImpl _value, $Res Function(_$UpdateImpl) _then)
      : super(_value, _then);

  /// Create a copy of CoachTacticalEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? params = null,
  }) {
    return _then(_$UpdateImpl(
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

class _$UpdateImpl implements _Update {
  const _$UpdateImpl(this.params);

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
            other is _$UpdateImpl &&
            (identical(other.params, params) || other.params == params));
  }

  @override
  int get hashCode => Object.hash(runtimeType, params);

  /// Create a copy of CoachTacticalEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateImplCopyWith<_$UpdateImpl> get copyWith =>
      __$$UpdateImplCopyWithImpl<_$UpdateImpl>(this, _$identity);

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
    required TResult Function(_GetTacticals value) getTacticals,
    required TResult Function(_FilterTacticals value) filterTacticals,
    required TResult Function(_Clear value) clear,
    required TResult Function(_Create value) create,
    required TResult Function(_Update value) update,
    required TResult Function(_Delete value) delete,
  }) {
    return update(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetTacticals value)? getTacticals,
    TResult? Function(_FilterTacticals value)? filterTacticals,
    TResult? Function(_Clear value)? clear,
    TResult? Function(_Create value)? create,
    TResult? Function(_Update value)? update,
    TResult? Function(_Delete value)? delete,
  }) {
    return update?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetTacticals value)? getTacticals,
    TResult Function(_FilterTacticals value)? filterTacticals,
    TResult Function(_Clear value)? clear,
    TResult Function(_Create value)? create,
    TResult Function(_Update value)? update,
    TResult Function(_Delete value)? delete,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(this);
    }
    return orElse();
  }
}

abstract class _Update implements CoachTacticalEvent {
  const factory _Update(final UpdateTacticalParams params) = _$UpdateImpl;

  UpdateTacticalParams get params;

  /// Create a copy of CoachTacticalEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateImplCopyWith<_$UpdateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteImplCopyWith<$Res> {
  factory _$$DeleteImplCopyWith(
          _$DeleteImpl value, $Res Function(_$DeleteImpl) then) =
      __$$DeleteImplCopyWithImpl<$Res>;
  @useResult
  $Res call({DeleteTacticalParams params});

  $DeleteTacticalParamsCopyWith<$Res> get params;
}

/// @nodoc
class __$$DeleteImplCopyWithImpl<$Res>
    extends _$CoachTacticalEventCopyWithImpl<$Res, _$DeleteImpl>
    implements _$$DeleteImplCopyWith<$Res> {
  __$$DeleteImplCopyWithImpl(
      _$DeleteImpl _value, $Res Function(_$DeleteImpl) _then)
      : super(_value, _then);

  /// Create a copy of CoachTacticalEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? params = null,
  }) {
    return _then(_$DeleteImpl(
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

class _$DeleteImpl implements _Delete {
  const _$DeleteImpl(this.params);

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
            other is _$DeleteImpl &&
            (identical(other.params, params) || other.params == params));
  }

  @override
  int get hashCode => Object.hash(runtimeType, params);

  /// Create a copy of CoachTacticalEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteImplCopyWith<_$DeleteImpl> get copyWith =>
      __$$DeleteImplCopyWithImpl<_$DeleteImpl>(this, _$identity);

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
    required TResult Function(_GetTacticals value) getTacticals,
    required TResult Function(_FilterTacticals value) filterTacticals,
    required TResult Function(_Clear value) clear,
    required TResult Function(_Create value) create,
    required TResult Function(_Update value) update,
    required TResult Function(_Delete value) delete,
  }) {
    return delete(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetTacticals value)? getTacticals,
    TResult? Function(_FilterTacticals value)? filterTacticals,
    TResult? Function(_Clear value)? clear,
    TResult? Function(_Create value)? create,
    TResult? Function(_Update value)? update,
    TResult? Function(_Delete value)? delete,
  }) {
    return delete?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetTacticals value)? getTacticals,
    TResult Function(_FilterTacticals value)? filterTacticals,
    TResult Function(_Clear value)? clear,
    TResult Function(_Create value)? create,
    TResult Function(_Update value)? update,
    TResult Function(_Delete value)? delete,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete(this);
    }
    return orElse();
  }
}

abstract class _Delete implements CoachTacticalEvent {
  const factory _Delete(final DeleteTacticalParams params) = _$DeleteImpl;

  DeleteTacticalParams get params;

  /// Create a copy of CoachTacticalEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeleteImplCopyWith<_$DeleteImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CoachTacticalState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(CoachTacticalLoadedEvent data) loaded,
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
    TResult? Function(CoachTacticalLoadedEvent data)? loaded,
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
    TResult Function(CoachTacticalLoadedEvent data)? loaded,
    TResult Function(String message)? failure,
    TResult Function(TacticalModel tactical)? created,
    TResult Function(TacticalModel tactical)? updated,
    TResult Function(TacticalModel tactical)? deleted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Failure value) failure,
    required TResult Function(_Created value) created,
    required TResult Function(_Updated value) updated,
    required TResult Function(_Deleted value) deleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_Created value)? created,
    TResult? Function(_Updated value)? updated,
    TResult? Function(_Deleted value)? deleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Failure value)? failure,
    TResult Function(_Created value)? created,
    TResult Function(_Updated value)? updated,
    TResult Function(_Deleted value)? deleted,
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
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$CoachTacticalStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of CoachTacticalState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'CoachTacticalState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(CoachTacticalLoadedEvent data) loaded,
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
    TResult? Function(CoachTacticalLoadedEvent data)? loaded,
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
    TResult Function(CoachTacticalLoadedEvent data)? loaded,
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
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Failure value) failure,
    required TResult Function(_Created value) created,
    required TResult Function(_Updated value) updated,
    required TResult Function(_Deleted value) deleted,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_Created value)? created,
    TResult? Function(_Updated value)? updated,
    TResult? Function(_Deleted value)? deleted,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Failure value)? failure,
    TResult Function(_Created value)? created,
    TResult Function(_Updated value)? updated,
    TResult Function(_Deleted value)? deleted,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements CoachTacticalState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$CoachTacticalStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of CoachTacticalState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'CoachTacticalState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(CoachTacticalLoadedEvent data) loaded,
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
    TResult? Function(CoachTacticalLoadedEvent data)? loaded,
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
    TResult Function(CoachTacticalLoadedEvent data)? loaded,
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
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Failure value) failure,
    required TResult Function(_Created value) created,
    required TResult Function(_Updated value) updated,
    required TResult Function(_Deleted value) deleted,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_Created value)? created,
    TResult? Function(_Updated value)? updated,
    TResult? Function(_Deleted value)? deleted,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Failure value)? failure,
    TResult Function(_Created value)? created,
    TResult Function(_Updated value)? updated,
    TResult Function(_Deleted value)? deleted,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements CoachTacticalState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$LoadedImplCopyWith<$Res> {
  factory _$$LoadedImplCopyWith(
          _$LoadedImpl value, $Res Function(_$LoadedImpl) then) =
      __$$LoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({CoachTacticalLoadedEvent data});

  $CoachTacticalLoadedEventCopyWith<$Res> get data;
}

/// @nodoc
class __$$LoadedImplCopyWithImpl<$Res>
    extends _$CoachTacticalStateCopyWithImpl<$Res, _$LoadedImpl>
    implements _$$LoadedImplCopyWith<$Res> {
  __$$LoadedImplCopyWithImpl(
      _$LoadedImpl _value, $Res Function(_$LoadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of CoachTacticalState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$LoadedImpl(
      null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as CoachTacticalLoadedEvent,
    ));
  }

  /// Create a copy of CoachTacticalState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CoachTacticalLoadedEventCopyWith<$Res> get data {
    return $CoachTacticalLoadedEventCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc

class _$LoadedImpl implements _Loaded {
  const _$LoadedImpl(this.data);

  @override
  final CoachTacticalLoadedEvent data;

  @override
  String toString() {
    return 'CoachTacticalState.loaded(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  /// Create a copy of CoachTacticalState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      __$$LoadedImplCopyWithImpl<_$LoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(CoachTacticalLoadedEvent data) loaded,
    required TResult Function(String message) failure,
    required TResult Function(TacticalModel tactical) created,
    required TResult Function(TacticalModel tactical) updated,
    required TResult Function(TacticalModel tactical) deleted,
  }) {
    return loaded(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(CoachTacticalLoadedEvent data)? loaded,
    TResult? Function(String message)? failure,
    TResult? Function(TacticalModel tactical)? created,
    TResult? Function(TacticalModel tactical)? updated,
    TResult? Function(TacticalModel tactical)? deleted,
  }) {
    return loaded?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(CoachTacticalLoadedEvent data)? loaded,
    TResult Function(String message)? failure,
    TResult Function(TacticalModel tactical)? created,
    TResult Function(TacticalModel tactical)? updated,
    TResult Function(TacticalModel tactical)? deleted,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Failure value) failure,
    required TResult Function(_Created value) created,
    required TResult Function(_Updated value) updated,
    required TResult Function(_Deleted value) deleted,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_Created value)? created,
    TResult? Function(_Updated value)? updated,
    TResult? Function(_Deleted value)? deleted,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Failure value)? failure,
    TResult Function(_Created value)? created,
    TResult Function(_Updated value)? updated,
    TResult Function(_Deleted value)? deleted,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded implements CoachTacticalState {
  const factory _Loaded(final CoachTacticalLoadedEvent data) = _$LoadedImpl;

  CoachTacticalLoadedEvent get data;

  /// Create a copy of CoachTacticalState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FailureImplCopyWith<$Res> {
  factory _$$FailureImplCopyWith(
          _$FailureImpl value, $Res Function(_$FailureImpl) then) =
      __$$FailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$FailureImplCopyWithImpl<$Res>
    extends _$CoachTacticalStateCopyWithImpl<$Res, _$FailureImpl>
    implements _$$FailureImplCopyWith<$Res> {
  __$$FailureImplCopyWithImpl(
      _$FailureImpl _value, $Res Function(_$FailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of CoachTacticalState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$FailureImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FailureImpl implements _Failure {
  const _$FailureImpl(this.message);

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
            other is _$FailureImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of CoachTacticalState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FailureImplCopyWith<_$FailureImpl> get copyWith =>
      __$$FailureImplCopyWithImpl<_$FailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(CoachTacticalLoadedEvent data) loaded,
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
    TResult? Function(CoachTacticalLoadedEvent data)? loaded,
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
    TResult Function(CoachTacticalLoadedEvent data)? loaded,
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
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Failure value) failure,
    required TResult Function(_Created value) created,
    required TResult Function(_Updated value) updated,
    required TResult Function(_Deleted value) deleted,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_Created value)? created,
    TResult? Function(_Updated value)? updated,
    TResult? Function(_Deleted value)? deleted,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Failure value)? failure,
    TResult Function(_Created value)? created,
    TResult Function(_Updated value)? updated,
    TResult Function(_Deleted value)? deleted,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _Failure implements CoachTacticalState {
  const factory _Failure(final String message) = _$FailureImpl;

  String get message;

  /// Create a copy of CoachTacticalState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FailureImplCopyWith<_$FailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CreatedImplCopyWith<$Res> {
  factory _$$CreatedImplCopyWith(
          _$CreatedImpl value, $Res Function(_$CreatedImpl) then) =
      __$$CreatedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({TacticalModel tactical});

  $TacticalModelCopyWith<$Res> get tactical;
}

/// @nodoc
class __$$CreatedImplCopyWithImpl<$Res>
    extends _$CoachTacticalStateCopyWithImpl<$Res, _$CreatedImpl>
    implements _$$CreatedImplCopyWith<$Res> {
  __$$CreatedImplCopyWithImpl(
      _$CreatedImpl _value, $Res Function(_$CreatedImpl) _then)
      : super(_value, _then);

  /// Create a copy of CoachTacticalState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tactical = null,
  }) {
    return _then(_$CreatedImpl(
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

class _$CreatedImpl implements _Created {
  const _$CreatedImpl(this.tactical);

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
            other is _$CreatedImpl &&
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
  _$$CreatedImplCopyWith<_$CreatedImpl> get copyWith =>
      __$$CreatedImplCopyWithImpl<_$CreatedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(CoachTacticalLoadedEvent data) loaded,
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
    TResult? Function(CoachTacticalLoadedEvent data)? loaded,
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
    TResult Function(CoachTacticalLoadedEvent data)? loaded,
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
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Failure value) failure,
    required TResult Function(_Created value) created,
    required TResult Function(_Updated value) updated,
    required TResult Function(_Deleted value) deleted,
  }) {
    return created(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_Created value)? created,
    TResult? Function(_Updated value)? updated,
    TResult? Function(_Deleted value)? deleted,
  }) {
    return created?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Failure value)? failure,
    TResult Function(_Created value)? created,
    TResult Function(_Updated value)? updated,
    TResult Function(_Deleted value)? deleted,
    required TResult orElse(),
  }) {
    if (created != null) {
      return created(this);
    }
    return orElse();
  }
}

abstract class _Created implements CoachTacticalState {
  const factory _Created(final TacticalModel tactical) = _$CreatedImpl;

  TacticalModel get tactical;

  /// Create a copy of CoachTacticalState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreatedImplCopyWith<_$CreatedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdatedImplCopyWith<$Res> {
  factory _$$UpdatedImplCopyWith(
          _$UpdatedImpl value, $Res Function(_$UpdatedImpl) then) =
      __$$UpdatedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({TacticalModel tactical});

  $TacticalModelCopyWith<$Res> get tactical;
}

/// @nodoc
class __$$UpdatedImplCopyWithImpl<$Res>
    extends _$CoachTacticalStateCopyWithImpl<$Res, _$UpdatedImpl>
    implements _$$UpdatedImplCopyWith<$Res> {
  __$$UpdatedImplCopyWithImpl(
      _$UpdatedImpl _value, $Res Function(_$UpdatedImpl) _then)
      : super(_value, _then);

  /// Create a copy of CoachTacticalState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tactical = null,
  }) {
    return _then(_$UpdatedImpl(
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

class _$UpdatedImpl implements _Updated {
  const _$UpdatedImpl(this.tactical);

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
            other is _$UpdatedImpl &&
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
  _$$UpdatedImplCopyWith<_$UpdatedImpl> get copyWith =>
      __$$UpdatedImplCopyWithImpl<_$UpdatedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(CoachTacticalLoadedEvent data) loaded,
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
    TResult? Function(CoachTacticalLoadedEvent data)? loaded,
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
    TResult Function(CoachTacticalLoadedEvent data)? loaded,
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
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Failure value) failure,
    required TResult Function(_Created value) created,
    required TResult Function(_Updated value) updated,
    required TResult Function(_Deleted value) deleted,
  }) {
    return updated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_Created value)? created,
    TResult? Function(_Updated value)? updated,
    TResult? Function(_Deleted value)? deleted,
  }) {
    return updated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Failure value)? failure,
    TResult Function(_Created value)? created,
    TResult Function(_Updated value)? updated,
    TResult Function(_Deleted value)? deleted,
    required TResult orElse(),
  }) {
    if (updated != null) {
      return updated(this);
    }
    return orElse();
  }
}

abstract class _Updated implements CoachTacticalState {
  const factory _Updated(final TacticalModel tactical) = _$UpdatedImpl;

  TacticalModel get tactical;

  /// Create a copy of CoachTacticalState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdatedImplCopyWith<_$UpdatedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeletedImplCopyWith<$Res> {
  factory _$$DeletedImplCopyWith(
          _$DeletedImpl value, $Res Function(_$DeletedImpl) then) =
      __$$DeletedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({TacticalModel tactical});

  $TacticalModelCopyWith<$Res> get tactical;
}

/// @nodoc
class __$$DeletedImplCopyWithImpl<$Res>
    extends _$CoachTacticalStateCopyWithImpl<$Res, _$DeletedImpl>
    implements _$$DeletedImplCopyWith<$Res> {
  __$$DeletedImplCopyWithImpl(
      _$DeletedImpl _value, $Res Function(_$DeletedImpl) _then)
      : super(_value, _then);

  /// Create a copy of CoachTacticalState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tactical = null,
  }) {
    return _then(_$DeletedImpl(
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

class _$DeletedImpl implements _Deleted {
  const _$DeletedImpl(this.tactical);

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
            other is _$DeletedImpl &&
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
  _$$DeletedImplCopyWith<_$DeletedImpl> get copyWith =>
      __$$DeletedImplCopyWithImpl<_$DeletedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(CoachTacticalLoadedEvent data) loaded,
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
    TResult? Function(CoachTacticalLoadedEvent data)? loaded,
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
    TResult Function(CoachTacticalLoadedEvent data)? loaded,
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
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Failure value) failure,
    required TResult Function(_Created value) created,
    required TResult Function(_Updated value) updated,
    required TResult Function(_Deleted value) deleted,
  }) {
    return deleted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_Created value)? created,
    TResult? Function(_Updated value)? updated,
    TResult? Function(_Deleted value)? deleted,
  }) {
    return deleted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Failure value)? failure,
    TResult Function(_Created value)? created,
    TResult Function(_Updated value)? updated,
    TResult Function(_Deleted value)? deleted,
    required TResult orElse(),
  }) {
    if (deleted != null) {
      return deleted(this);
    }
    return orElse();
  }
}

abstract class _Deleted implements CoachTacticalState {
  const factory _Deleted(final TacticalModel tactical) = _$DeletedImpl;

  TacticalModel get tactical;

  /// Create a copy of CoachTacticalState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeletedImplCopyWith<_$DeletedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CoachTacticalLoadedEvent {
  List<TacticalModel> get tacticals => throw _privateConstructorUsedError;
  List<TacticalModel> get filteredTacticals =>
      throw _privateConstructorUsedError;

  /// Create a copy of CoachTacticalLoadedEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CoachTacticalLoadedEventCopyWith<CoachTacticalLoadedEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CoachTacticalLoadedEventCopyWith<$Res> {
  factory $CoachTacticalLoadedEventCopyWith(CoachTacticalLoadedEvent value,
          $Res Function(CoachTacticalLoadedEvent) then) =
      _$CoachTacticalLoadedEventCopyWithImpl<$Res, CoachTacticalLoadedEvent>;
  @useResult
  $Res call(
      {List<TacticalModel> tacticals, List<TacticalModel> filteredTacticals});
}

/// @nodoc
class _$CoachTacticalLoadedEventCopyWithImpl<$Res,
        $Val extends CoachTacticalLoadedEvent>
    implements $CoachTacticalLoadedEventCopyWith<$Res> {
  _$CoachTacticalLoadedEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CoachTacticalLoadedEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tacticals = null,
    Object? filteredTacticals = null,
  }) {
    return _then(_value.copyWith(
      tacticals: null == tacticals
          ? _value.tacticals
          : tacticals // ignore: cast_nullable_to_non_nullable
              as List<TacticalModel>,
      filteredTacticals: null == filteredTacticals
          ? _value.filteredTacticals
          : filteredTacticals // ignore: cast_nullable_to_non_nullable
              as List<TacticalModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CoachTacticalLoadedEventImplCopyWith<$Res>
    implements $CoachTacticalLoadedEventCopyWith<$Res> {
  factory _$$CoachTacticalLoadedEventImplCopyWith(
          _$CoachTacticalLoadedEventImpl value,
          $Res Function(_$CoachTacticalLoadedEventImpl) then) =
      __$$CoachTacticalLoadedEventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<TacticalModel> tacticals, List<TacticalModel> filteredTacticals});
}

/// @nodoc
class __$$CoachTacticalLoadedEventImplCopyWithImpl<$Res>
    extends _$CoachTacticalLoadedEventCopyWithImpl<$Res,
        _$CoachTacticalLoadedEventImpl>
    implements _$$CoachTacticalLoadedEventImplCopyWith<$Res> {
  __$$CoachTacticalLoadedEventImplCopyWithImpl(
      _$CoachTacticalLoadedEventImpl _value,
      $Res Function(_$CoachTacticalLoadedEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of CoachTacticalLoadedEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tacticals = null,
    Object? filteredTacticals = null,
  }) {
    return _then(_$CoachTacticalLoadedEventImpl(
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

class _$CoachTacticalLoadedEventImpl implements _CoachTacticalLoadedEvent {
  const _$CoachTacticalLoadedEventImpl(
      {final List<TacticalModel> tacticals = const [],
      final List<TacticalModel> filteredTacticals = const []})
      : _tacticals = tacticals,
        _filteredTacticals = filteredTacticals;

  final List<TacticalModel> _tacticals;
  @override
  @JsonKey()
  List<TacticalModel> get tacticals {
    if (_tacticals is EqualUnmodifiableListView) return _tacticals;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tacticals);
  }

  final List<TacticalModel> _filteredTacticals;
  @override
  @JsonKey()
  List<TacticalModel> get filteredTacticals {
    if (_filteredTacticals is EqualUnmodifiableListView)
      return _filteredTacticals;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_filteredTacticals);
  }

  @override
  String toString() {
    return 'CoachTacticalLoadedEvent(tacticals: $tacticals, filteredTacticals: $filteredTacticals)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CoachTacticalLoadedEventImpl &&
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

  /// Create a copy of CoachTacticalLoadedEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CoachTacticalLoadedEventImplCopyWith<_$CoachTacticalLoadedEventImpl>
      get copyWith => __$$CoachTacticalLoadedEventImplCopyWithImpl<
          _$CoachTacticalLoadedEventImpl>(this, _$identity);
}

abstract class _CoachTacticalLoadedEvent implements CoachTacticalLoadedEvent {
  const factory _CoachTacticalLoadedEvent(
          {final List<TacticalModel> tacticals,
          final List<TacticalModel> filteredTacticals}) =
      _$CoachTacticalLoadedEventImpl;

  @override
  List<TacticalModel> get tacticals;
  @override
  List<TacticalModel> get filteredTacticals;

  /// Create a copy of CoachTacticalLoadedEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CoachTacticalLoadedEventImplCopyWith<_$CoachTacticalLoadedEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}
