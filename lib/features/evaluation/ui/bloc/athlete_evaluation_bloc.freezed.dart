// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'athlete_evaluation_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AthleteEvaluationEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() clear,
    required TResult Function(GetAllEvaluationParams params) getEvaluations,
    required TResult Function(String query) filterEvaluations,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? clear,
    TResult? Function(GetAllEvaluationParams params)? getEvaluations,
    TResult? Function(String query)? filterEvaluations,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? clear,
    TResult Function(GetAllEvaluationParams params)? getEvaluations,
    TResult Function(String query)? filterEvaluations,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Clear value) clear,
    required TResult Function(_GetEvaluations value) getEvaluations,
    required TResult Function(_FilterEvaluations value) filterEvaluations,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Clear value)? clear,
    TResult? Function(_GetEvaluations value)? getEvaluations,
    TResult? Function(_FilterEvaluations value)? filterEvaluations,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Clear value)? clear,
    TResult Function(_GetEvaluations value)? getEvaluations,
    TResult Function(_FilterEvaluations value)? filterEvaluations,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AthleteEvaluationEventCopyWith<$Res> {
  factory $AthleteEvaluationEventCopyWith(AthleteEvaluationEvent value,
          $Res Function(AthleteEvaluationEvent) then) =
      _$AthleteEvaluationEventCopyWithImpl<$Res, AthleteEvaluationEvent>;
}

/// @nodoc
class _$AthleteEvaluationEventCopyWithImpl<$Res,
        $Val extends AthleteEvaluationEvent>
    implements $AthleteEvaluationEventCopyWith<$Res> {
  _$AthleteEvaluationEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AthleteEvaluationEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$ClearImplCopyWith<$Res> {
  factory _$$ClearImplCopyWith(
          _$ClearImpl value, $Res Function(_$ClearImpl) then) =
      __$$ClearImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ClearImplCopyWithImpl<$Res>
    extends _$AthleteEvaluationEventCopyWithImpl<$Res, _$ClearImpl>
    implements _$$ClearImplCopyWith<$Res> {
  __$$ClearImplCopyWithImpl(
      _$ClearImpl _value, $Res Function(_$ClearImpl) _then)
      : super(_value, _then);

  /// Create a copy of AthleteEvaluationEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ClearImpl implements _Clear {
  const _$ClearImpl();

  @override
  String toString() {
    return 'AthleteEvaluationEvent.clear()';
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
    required TResult Function() clear,
    required TResult Function(GetAllEvaluationParams params) getEvaluations,
    required TResult Function(String query) filterEvaluations,
  }) {
    return clear();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? clear,
    TResult? Function(GetAllEvaluationParams params)? getEvaluations,
    TResult? Function(String query)? filterEvaluations,
  }) {
    return clear?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? clear,
    TResult Function(GetAllEvaluationParams params)? getEvaluations,
    TResult Function(String query)? filterEvaluations,
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
    required TResult Function(_Clear value) clear,
    required TResult Function(_GetEvaluations value) getEvaluations,
    required TResult Function(_FilterEvaluations value) filterEvaluations,
  }) {
    return clear(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Clear value)? clear,
    TResult? Function(_GetEvaluations value)? getEvaluations,
    TResult? Function(_FilterEvaluations value)? filterEvaluations,
  }) {
    return clear?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Clear value)? clear,
    TResult Function(_GetEvaluations value)? getEvaluations,
    TResult Function(_FilterEvaluations value)? filterEvaluations,
    required TResult orElse(),
  }) {
    if (clear != null) {
      return clear(this);
    }
    return orElse();
  }
}

abstract class _Clear implements AthleteEvaluationEvent {
  const factory _Clear() = _$ClearImpl;
}

/// @nodoc
abstract class _$$GetEvaluationsImplCopyWith<$Res> {
  factory _$$GetEvaluationsImplCopyWith(_$GetEvaluationsImpl value,
          $Res Function(_$GetEvaluationsImpl) then) =
      __$$GetEvaluationsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({GetAllEvaluationParams params});

  $GetAllEvaluationParamsCopyWith<$Res> get params;
}

/// @nodoc
class __$$GetEvaluationsImplCopyWithImpl<$Res>
    extends _$AthleteEvaluationEventCopyWithImpl<$Res, _$GetEvaluationsImpl>
    implements _$$GetEvaluationsImplCopyWith<$Res> {
  __$$GetEvaluationsImplCopyWithImpl(
      _$GetEvaluationsImpl _value, $Res Function(_$GetEvaluationsImpl) _then)
      : super(_value, _then);

  /// Create a copy of AthleteEvaluationEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? params = null,
  }) {
    return _then(_$GetEvaluationsImpl(
      null == params
          ? _value.params
          : params // ignore: cast_nullable_to_non_nullable
              as GetAllEvaluationParams,
    ));
  }

  /// Create a copy of AthleteEvaluationEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GetAllEvaluationParamsCopyWith<$Res> get params {
    return $GetAllEvaluationParamsCopyWith<$Res>(_value.params, (value) {
      return _then(_value.copyWith(params: value));
    });
  }
}

/// @nodoc

class _$GetEvaluationsImpl implements _GetEvaluations {
  const _$GetEvaluationsImpl(this.params);

  @override
  final GetAllEvaluationParams params;

  @override
  String toString() {
    return 'AthleteEvaluationEvent.getEvaluations(params: $params)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetEvaluationsImpl &&
            (identical(other.params, params) || other.params == params));
  }

  @override
  int get hashCode => Object.hash(runtimeType, params);

  /// Create a copy of AthleteEvaluationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetEvaluationsImplCopyWith<_$GetEvaluationsImpl> get copyWith =>
      __$$GetEvaluationsImplCopyWithImpl<_$GetEvaluationsImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() clear,
    required TResult Function(GetAllEvaluationParams params) getEvaluations,
    required TResult Function(String query) filterEvaluations,
  }) {
    return getEvaluations(params);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? clear,
    TResult? Function(GetAllEvaluationParams params)? getEvaluations,
    TResult? Function(String query)? filterEvaluations,
  }) {
    return getEvaluations?.call(params);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? clear,
    TResult Function(GetAllEvaluationParams params)? getEvaluations,
    TResult Function(String query)? filterEvaluations,
    required TResult orElse(),
  }) {
    if (getEvaluations != null) {
      return getEvaluations(params);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Clear value) clear,
    required TResult Function(_GetEvaluations value) getEvaluations,
    required TResult Function(_FilterEvaluations value) filterEvaluations,
  }) {
    return getEvaluations(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Clear value)? clear,
    TResult? Function(_GetEvaluations value)? getEvaluations,
    TResult? Function(_FilterEvaluations value)? filterEvaluations,
  }) {
    return getEvaluations?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Clear value)? clear,
    TResult Function(_GetEvaluations value)? getEvaluations,
    TResult Function(_FilterEvaluations value)? filterEvaluations,
    required TResult orElse(),
  }) {
    if (getEvaluations != null) {
      return getEvaluations(this);
    }
    return orElse();
  }
}

abstract class _GetEvaluations implements AthleteEvaluationEvent {
  const factory _GetEvaluations(final GetAllEvaluationParams params) =
      _$GetEvaluationsImpl;

  GetAllEvaluationParams get params;

  /// Create a copy of AthleteEvaluationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetEvaluationsImplCopyWith<_$GetEvaluationsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FilterEvaluationsImplCopyWith<$Res> {
  factory _$$FilterEvaluationsImplCopyWith(_$FilterEvaluationsImpl value,
          $Res Function(_$FilterEvaluationsImpl) then) =
      __$$FilterEvaluationsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String query});
}

/// @nodoc
class __$$FilterEvaluationsImplCopyWithImpl<$Res>
    extends _$AthleteEvaluationEventCopyWithImpl<$Res, _$FilterEvaluationsImpl>
    implements _$$FilterEvaluationsImplCopyWith<$Res> {
  __$$FilterEvaluationsImplCopyWithImpl(_$FilterEvaluationsImpl _value,
      $Res Function(_$FilterEvaluationsImpl) _then)
      : super(_value, _then);

  /// Create a copy of AthleteEvaluationEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
  }) {
    return _then(_$FilterEvaluationsImpl(
      null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FilterEvaluationsImpl implements _FilterEvaluations {
  const _$FilterEvaluationsImpl(this.query);

  @override
  final String query;

  @override
  String toString() {
    return 'AthleteEvaluationEvent.filterEvaluations(query: $query)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FilterEvaluationsImpl &&
            (identical(other.query, query) || other.query == query));
  }

  @override
  int get hashCode => Object.hash(runtimeType, query);

  /// Create a copy of AthleteEvaluationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FilterEvaluationsImplCopyWith<_$FilterEvaluationsImpl> get copyWith =>
      __$$FilterEvaluationsImplCopyWithImpl<_$FilterEvaluationsImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() clear,
    required TResult Function(GetAllEvaluationParams params) getEvaluations,
    required TResult Function(String query) filterEvaluations,
  }) {
    return filterEvaluations(query);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? clear,
    TResult? Function(GetAllEvaluationParams params)? getEvaluations,
    TResult? Function(String query)? filterEvaluations,
  }) {
    return filterEvaluations?.call(query);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? clear,
    TResult Function(GetAllEvaluationParams params)? getEvaluations,
    TResult Function(String query)? filterEvaluations,
    required TResult orElse(),
  }) {
    if (filterEvaluations != null) {
      return filterEvaluations(query);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Clear value) clear,
    required TResult Function(_GetEvaluations value) getEvaluations,
    required TResult Function(_FilterEvaluations value) filterEvaluations,
  }) {
    return filterEvaluations(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Clear value)? clear,
    TResult? Function(_GetEvaluations value)? getEvaluations,
    TResult? Function(_FilterEvaluations value)? filterEvaluations,
  }) {
    return filterEvaluations?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Clear value)? clear,
    TResult Function(_GetEvaluations value)? getEvaluations,
    TResult Function(_FilterEvaluations value)? filterEvaluations,
    required TResult orElse(),
  }) {
    if (filterEvaluations != null) {
      return filterEvaluations(this);
    }
    return orElse();
  }
}

abstract class _FilterEvaluations implements AthleteEvaluationEvent {
  const factory _FilterEvaluations(final String query) =
      _$FilterEvaluationsImpl;

  String get query;

  /// Create a copy of AthleteEvaluationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FilterEvaluationsImplCopyWith<_$FilterEvaluationsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AthleteEvaluationState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(AthleteEvaluationLoadedEvent data) loaded,
    required TResult Function(String message) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(AthleteEvaluationLoadedEvent data)? loaded,
    TResult? Function(String message)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(AthleteEvaluationLoadedEvent data)? loaded,
    TResult Function(String message)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Failure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Failure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AthleteEvaluationStateCopyWith<$Res> {
  factory $AthleteEvaluationStateCopyWith(AthleteEvaluationState value,
          $Res Function(AthleteEvaluationState) then) =
      _$AthleteEvaluationStateCopyWithImpl<$Res, AthleteEvaluationState>;
}

/// @nodoc
class _$AthleteEvaluationStateCopyWithImpl<$Res,
        $Val extends AthleteEvaluationState>
    implements $AthleteEvaluationStateCopyWith<$Res> {
  _$AthleteEvaluationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AthleteEvaluationState
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
    extends _$AthleteEvaluationStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of AthleteEvaluationState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'AthleteEvaluationState.initial()';
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
    required TResult Function(AthleteEvaluationLoadedEvent data) loaded,
    required TResult Function(String message) failure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(AthleteEvaluationLoadedEvent data)? loaded,
    TResult? Function(String message)? failure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(AthleteEvaluationLoadedEvent data)? loaded,
    TResult Function(String message)? failure,
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
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements AthleteEvaluationState {
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
    extends _$AthleteEvaluationStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of AthleteEvaluationState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'AthleteEvaluationState.loading()';
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
    required TResult Function(AthleteEvaluationLoadedEvent data) loaded,
    required TResult Function(String message) failure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(AthleteEvaluationLoadedEvent data)? loaded,
    TResult? Function(String message)? failure,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(AthleteEvaluationLoadedEvent data)? loaded,
    TResult Function(String message)? failure,
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
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements AthleteEvaluationState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$LoadedImplCopyWith<$Res> {
  factory _$$LoadedImplCopyWith(
          _$LoadedImpl value, $Res Function(_$LoadedImpl) then) =
      __$$LoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AthleteEvaluationLoadedEvent data});

  $AthleteEvaluationLoadedEventCopyWith<$Res> get data;
}

/// @nodoc
class __$$LoadedImplCopyWithImpl<$Res>
    extends _$AthleteEvaluationStateCopyWithImpl<$Res, _$LoadedImpl>
    implements _$$LoadedImplCopyWith<$Res> {
  __$$LoadedImplCopyWithImpl(
      _$LoadedImpl _value, $Res Function(_$LoadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of AthleteEvaluationState
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
              as AthleteEvaluationLoadedEvent,
    ));
  }

  /// Create a copy of AthleteEvaluationState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AthleteEvaluationLoadedEventCopyWith<$Res> get data {
    return $AthleteEvaluationLoadedEventCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc

class _$LoadedImpl implements _Loaded {
  const _$LoadedImpl(this.data);

  @override
  final AthleteEvaluationLoadedEvent data;

  @override
  String toString() {
    return 'AthleteEvaluationState.loaded(data: $data)';
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

  /// Create a copy of AthleteEvaluationState
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
    required TResult Function(AthleteEvaluationLoadedEvent data) loaded,
    required TResult Function(String message) failure,
  }) {
    return loaded(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(AthleteEvaluationLoadedEvent data)? loaded,
    TResult? Function(String message)? failure,
  }) {
    return loaded?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(AthleteEvaluationLoadedEvent data)? loaded,
    TResult Function(String message)? failure,
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
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded implements AthleteEvaluationState {
  const factory _Loaded(final AthleteEvaluationLoadedEvent data) = _$LoadedImpl;

  AthleteEvaluationLoadedEvent get data;

  /// Create a copy of AthleteEvaluationState
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
    extends _$AthleteEvaluationStateCopyWithImpl<$Res, _$FailureImpl>
    implements _$$FailureImplCopyWith<$Res> {
  __$$FailureImplCopyWithImpl(
      _$FailureImpl _value, $Res Function(_$FailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of AthleteEvaluationState
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
    return 'AthleteEvaluationState.failure(message: $message)';
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

  /// Create a copy of AthleteEvaluationState
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
    required TResult Function(AthleteEvaluationLoadedEvent data) loaded,
    required TResult Function(String message) failure,
  }) {
    return failure(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(AthleteEvaluationLoadedEvent data)? loaded,
    TResult? Function(String message)? failure,
  }) {
    return failure?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(AthleteEvaluationLoadedEvent data)? loaded,
    TResult Function(String message)? failure,
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
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _Failure implements AthleteEvaluationState {
  const factory _Failure(final String message) = _$FailureImpl;

  String get message;

  /// Create a copy of AthleteEvaluationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FailureImplCopyWith<_$FailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AthleteEvaluationLoadedEvent {
  List<EvaluationModel> get evaluations => throw _privateConstructorUsedError;
  List<EvaluationModel> get filteredEvaluations =>
      throw _privateConstructorUsedError;

  /// Create a copy of AthleteEvaluationLoadedEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AthleteEvaluationLoadedEventCopyWith<AthleteEvaluationLoadedEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AthleteEvaluationLoadedEventCopyWith<$Res> {
  factory $AthleteEvaluationLoadedEventCopyWith(
          AthleteEvaluationLoadedEvent value,
          $Res Function(AthleteEvaluationLoadedEvent) then) =
      _$AthleteEvaluationLoadedEventCopyWithImpl<$Res,
          AthleteEvaluationLoadedEvent>;
  @useResult
  $Res call(
      {List<EvaluationModel> evaluations,
      List<EvaluationModel> filteredEvaluations});
}

/// @nodoc
class _$AthleteEvaluationLoadedEventCopyWithImpl<$Res,
        $Val extends AthleteEvaluationLoadedEvent>
    implements $AthleteEvaluationLoadedEventCopyWith<$Res> {
  _$AthleteEvaluationLoadedEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AthleteEvaluationLoadedEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? evaluations = null,
    Object? filteredEvaluations = null,
  }) {
    return _then(_value.copyWith(
      evaluations: null == evaluations
          ? _value.evaluations
          : evaluations // ignore: cast_nullable_to_non_nullable
              as List<EvaluationModel>,
      filteredEvaluations: null == filteredEvaluations
          ? _value.filteredEvaluations
          : filteredEvaluations // ignore: cast_nullable_to_non_nullable
              as List<EvaluationModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AthleteEvaluationLoadedEventImplCopyWith<$Res>
    implements $AthleteEvaluationLoadedEventCopyWith<$Res> {
  factory _$$AthleteEvaluationLoadedEventImplCopyWith(
          _$AthleteEvaluationLoadedEventImpl value,
          $Res Function(_$AthleteEvaluationLoadedEventImpl) then) =
      __$$AthleteEvaluationLoadedEventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<EvaluationModel> evaluations,
      List<EvaluationModel> filteredEvaluations});
}

/// @nodoc
class __$$AthleteEvaluationLoadedEventImplCopyWithImpl<$Res>
    extends _$AthleteEvaluationLoadedEventCopyWithImpl<$Res,
        _$AthleteEvaluationLoadedEventImpl>
    implements _$$AthleteEvaluationLoadedEventImplCopyWith<$Res> {
  __$$AthleteEvaluationLoadedEventImplCopyWithImpl(
      _$AthleteEvaluationLoadedEventImpl _value,
      $Res Function(_$AthleteEvaluationLoadedEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of AthleteEvaluationLoadedEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? evaluations = null,
    Object? filteredEvaluations = null,
  }) {
    return _then(_$AthleteEvaluationLoadedEventImpl(
      evaluations: null == evaluations
          ? _value._evaluations
          : evaluations // ignore: cast_nullable_to_non_nullable
              as List<EvaluationModel>,
      filteredEvaluations: null == filteredEvaluations
          ? _value._filteredEvaluations
          : filteredEvaluations // ignore: cast_nullable_to_non_nullable
              as List<EvaluationModel>,
    ));
  }
}

/// @nodoc

class _$AthleteEvaluationLoadedEventImpl
    implements _AthleteEvaluationLoadedEvent {
  const _$AthleteEvaluationLoadedEventImpl(
      {final List<EvaluationModel> evaluations = const [],
      final List<EvaluationModel> filteredEvaluations = const []})
      : _evaluations = evaluations,
        _filteredEvaluations = filteredEvaluations;

  final List<EvaluationModel> _evaluations;
  @override
  @JsonKey()
  List<EvaluationModel> get evaluations {
    if (_evaluations is EqualUnmodifiableListView) return _evaluations;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_evaluations);
  }

  final List<EvaluationModel> _filteredEvaluations;
  @override
  @JsonKey()
  List<EvaluationModel> get filteredEvaluations {
    if (_filteredEvaluations is EqualUnmodifiableListView)
      return _filteredEvaluations;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_filteredEvaluations);
  }

  @override
  String toString() {
    return 'AthleteEvaluationLoadedEvent(evaluations: $evaluations, filteredEvaluations: $filteredEvaluations)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AthleteEvaluationLoadedEventImpl &&
            const DeepCollectionEquality()
                .equals(other._evaluations, _evaluations) &&
            const DeepCollectionEquality()
                .equals(other._filteredEvaluations, _filteredEvaluations));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_evaluations),
      const DeepCollectionEquality().hash(_filteredEvaluations));

  /// Create a copy of AthleteEvaluationLoadedEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AthleteEvaluationLoadedEventImplCopyWith<
          _$AthleteEvaluationLoadedEventImpl>
      get copyWith => __$$AthleteEvaluationLoadedEventImplCopyWithImpl<
          _$AthleteEvaluationLoadedEventImpl>(this, _$identity);
}

abstract class _AthleteEvaluationLoadedEvent
    implements AthleteEvaluationLoadedEvent {
  const factory _AthleteEvaluationLoadedEvent(
          {final List<EvaluationModel> evaluations,
          final List<EvaluationModel> filteredEvaluations}) =
      _$AthleteEvaluationLoadedEventImpl;

  @override
  List<EvaluationModel> get evaluations;
  @override
  List<EvaluationModel> get filteredEvaluations;

  /// Create a copy of AthleteEvaluationLoadedEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AthleteEvaluationLoadedEventImplCopyWith<
          _$AthleteEvaluationLoadedEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}
