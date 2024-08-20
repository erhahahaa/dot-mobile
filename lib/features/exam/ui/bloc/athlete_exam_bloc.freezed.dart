// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'athlete_exam_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AthleteExamEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() clear,
    required TResult Function(GetAllExamParams params) getExams,
    required TResult Function(String query) filterExams,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? clear,
    TResult? Function(GetAllExamParams params)? getExams,
    TResult? Function(String query)? filterExams,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? clear,
    TResult Function(GetAllExamParams params)? getExams,
    TResult Function(String query)? filterExams,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Clear value) clear,
    required TResult Function(_GetExams value) getExams,
    required TResult Function(_FilterExams value) filterExams,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Clear value)? clear,
    TResult? Function(_GetExams value)? getExams,
    TResult? Function(_FilterExams value)? filterExams,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Clear value)? clear,
    TResult Function(_GetExams value)? getExams,
    TResult Function(_FilterExams value)? filterExams,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AthleteExamEventCopyWith<$Res> {
  factory $AthleteExamEventCopyWith(
          AthleteExamEvent value, $Res Function(AthleteExamEvent) then) =
      _$AthleteExamEventCopyWithImpl<$Res, AthleteExamEvent>;
}

/// @nodoc
class _$AthleteExamEventCopyWithImpl<$Res, $Val extends AthleteExamEvent>
    implements $AthleteExamEventCopyWith<$Res> {
  _$AthleteExamEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AthleteExamEvent
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
    extends _$AthleteExamEventCopyWithImpl<$Res, _$ClearImpl>
    implements _$$ClearImplCopyWith<$Res> {
  __$$ClearImplCopyWithImpl(
      _$ClearImpl _value, $Res Function(_$ClearImpl) _then)
      : super(_value, _then);

  /// Create a copy of AthleteExamEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ClearImpl implements _Clear {
  const _$ClearImpl();

  @override
  String toString() {
    return 'AthleteExamEvent.clear()';
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
    required TResult Function(GetAllExamParams params) getExams,
    required TResult Function(String query) filterExams,
  }) {
    return clear();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? clear,
    TResult? Function(GetAllExamParams params)? getExams,
    TResult? Function(String query)? filterExams,
  }) {
    return clear?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? clear,
    TResult Function(GetAllExamParams params)? getExams,
    TResult Function(String query)? filterExams,
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
    required TResult Function(_GetExams value) getExams,
    required TResult Function(_FilterExams value) filterExams,
  }) {
    return clear(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Clear value)? clear,
    TResult? Function(_GetExams value)? getExams,
    TResult? Function(_FilterExams value)? filterExams,
  }) {
    return clear?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Clear value)? clear,
    TResult Function(_GetExams value)? getExams,
    TResult Function(_FilterExams value)? filterExams,
    required TResult orElse(),
  }) {
    if (clear != null) {
      return clear(this);
    }
    return orElse();
  }
}

abstract class _Clear implements AthleteExamEvent {
  const factory _Clear() = _$ClearImpl;
}

/// @nodoc
abstract class _$$GetExamsImplCopyWith<$Res> {
  factory _$$GetExamsImplCopyWith(
          _$GetExamsImpl value, $Res Function(_$GetExamsImpl) then) =
      __$$GetExamsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({GetAllExamParams params});

  $GetAllExamParamsCopyWith<$Res> get params;
}

/// @nodoc
class __$$GetExamsImplCopyWithImpl<$Res>
    extends _$AthleteExamEventCopyWithImpl<$Res, _$GetExamsImpl>
    implements _$$GetExamsImplCopyWith<$Res> {
  __$$GetExamsImplCopyWithImpl(
      _$GetExamsImpl _value, $Res Function(_$GetExamsImpl) _then)
      : super(_value, _then);

  /// Create a copy of AthleteExamEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? params = null,
  }) {
    return _then(_$GetExamsImpl(
      null == params
          ? _value.params
          : params // ignore: cast_nullable_to_non_nullable
              as GetAllExamParams,
    ));
  }

  /// Create a copy of AthleteExamEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GetAllExamParamsCopyWith<$Res> get params {
    return $GetAllExamParamsCopyWith<$Res>(_value.params, (value) {
      return _then(_value.copyWith(params: value));
    });
  }
}

/// @nodoc

class _$GetExamsImpl implements _GetExams {
  const _$GetExamsImpl(this.params);

  @override
  final GetAllExamParams params;

  @override
  String toString() {
    return 'AthleteExamEvent.getExams(params: $params)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetExamsImpl &&
            (identical(other.params, params) || other.params == params));
  }

  @override
  int get hashCode => Object.hash(runtimeType, params);

  /// Create a copy of AthleteExamEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetExamsImplCopyWith<_$GetExamsImpl> get copyWith =>
      __$$GetExamsImplCopyWithImpl<_$GetExamsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() clear,
    required TResult Function(GetAllExamParams params) getExams,
    required TResult Function(String query) filterExams,
  }) {
    return getExams(params);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? clear,
    TResult? Function(GetAllExamParams params)? getExams,
    TResult? Function(String query)? filterExams,
  }) {
    return getExams?.call(params);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? clear,
    TResult Function(GetAllExamParams params)? getExams,
    TResult Function(String query)? filterExams,
    required TResult orElse(),
  }) {
    if (getExams != null) {
      return getExams(params);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Clear value) clear,
    required TResult Function(_GetExams value) getExams,
    required TResult Function(_FilterExams value) filterExams,
  }) {
    return getExams(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Clear value)? clear,
    TResult? Function(_GetExams value)? getExams,
    TResult? Function(_FilterExams value)? filterExams,
  }) {
    return getExams?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Clear value)? clear,
    TResult Function(_GetExams value)? getExams,
    TResult Function(_FilterExams value)? filterExams,
    required TResult orElse(),
  }) {
    if (getExams != null) {
      return getExams(this);
    }
    return orElse();
  }
}

abstract class _GetExams implements AthleteExamEvent {
  const factory _GetExams(final GetAllExamParams params) = _$GetExamsImpl;

  GetAllExamParams get params;

  /// Create a copy of AthleteExamEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetExamsImplCopyWith<_$GetExamsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FilterExamsImplCopyWith<$Res> {
  factory _$$FilterExamsImplCopyWith(
          _$FilterExamsImpl value, $Res Function(_$FilterExamsImpl) then) =
      __$$FilterExamsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String query});
}

/// @nodoc
class __$$FilterExamsImplCopyWithImpl<$Res>
    extends _$AthleteExamEventCopyWithImpl<$Res, _$FilterExamsImpl>
    implements _$$FilterExamsImplCopyWith<$Res> {
  __$$FilterExamsImplCopyWithImpl(
      _$FilterExamsImpl _value, $Res Function(_$FilterExamsImpl) _then)
      : super(_value, _then);

  /// Create a copy of AthleteExamEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
  }) {
    return _then(_$FilterExamsImpl(
      null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FilterExamsImpl implements _FilterExams {
  const _$FilterExamsImpl(this.query);

  @override
  final String query;

  @override
  String toString() {
    return 'AthleteExamEvent.filterExams(query: $query)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FilterExamsImpl &&
            (identical(other.query, query) || other.query == query));
  }

  @override
  int get hashCode => Object.hash(runtimeType, query);

  /// Create a copy of AthleteExamEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FilterExamsImplCopyWith<_$FilterExamsImpl> get copyWith =>
      __$$FilterExamsImplCopyWithImpl<_$FilterExamsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() clear,
    required TResult Function(GetAllExamParams params) getExams,
    required TResult Function(String query) filterExams,
  }) {
    return filterExams(query);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? clear,
    TResult? Function(GetAllExamParams params)? getExams,
    TResult? Function(String query)? filterExams,
  }) {
    return filterExams?.call(query);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? clear,
    TResult Function(GetAllExamParams params)? getExams,
    TResult Function(String query)? filterExams,
    required TResult orElse(),
  }) {
    if (filterExams != null) {
      return filterExams(query);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Clear value) clear,
    required TResult Function(_GetExams value) getExams,
    required TResult Function(_FilterExams value) filterExams,
  }) {
    return filterExams(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Clear value)? clear,
    TResult? Function(_GetExams value)? getExams,
    TResult? Function(_FilterExams value)? filterExams,
  }) {
    return filterExams?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Clear value)? clear,
    TResult Function(_GetExams value)? getExams,
    TResult Function(_FilterExams value)? filterExams,
    required TResult orElse(),
  }) {
    if (filterExams != null) {
      return filterExams(this);
    }
    return orElse();
  }
}

abstract class _FilterExams implements AthleteExamEvent {
  const factory _FilterExams(final String query) = _$FilterExamsImpl;

  String get query;

  /// Create a copy of AthleteExamEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FilterExamsImplCopyWith<_$FilterExamsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AthleteExamState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(AthleteExamLoadedEvent data) loaded,
    required TResult Function(String message) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(AthleteExamLoadedEvent data)? loaded,
    TResult? Function(String message)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(AthleteExamLoadedEvent data)? loaded,
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
abstract class $AthleteExamStateCopyWith<$Res> {
  factory $AthleteExamStateCopyWith(
          AthleteExamState value, $Res Function(AthleteExamState) then) =
      _$AthleteExamStateCopyWithImpl<$Res, AthleteExamState>;
}

/// @nodoc
class _$AthleteExamStateCopyWithImpl<$Res, $Val extends AthleteExamState>
    implements $AthleteExamStateCopyWith<$Res> {
  _$AthleteExamStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AthleteExamState
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
    extends _$AthleteExamStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of AthleteExamState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'AthleteExamState.initial()';
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
    required TResult Function(AthleteExamLoadedEvent data) loaded,
    required TResult Function(String message) failure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(AthleteExamLoadedEvent data)? loaded,
    TResult? Function(String message)? failure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(AthleteExamLoadedEvent data)? loaded,
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

abstract class _Initial implements AthleteExamState {
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
    extends _$AthleteExamStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of AthleteExamState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'AthleteExamState.loading()';
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
    required TResult Function(AthleteExamLoadedEvent data) loaded,
    required TResult Function(String message) failure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(AthleteExamLoadedEvent data)? loaded,
    TResult? Function(String message)? failure,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(AthleteExamLoadedEvent data)? loaded,
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

abstract class _Loading implements AthleteExamState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$LoadedImplCopyWith<$Res> {
  factory _$$LoadedImplCopyWith(
          _$LoadedImpl value, $Res Function(_$LoadedImpl) then) =
      __$$LoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AthleteExamLoadedEvent data});

  $AthleteExamLoadedEventCopyWith<$Res> get data;
}

/// @nodoc
class __$$LoadedImplCopyWithImpl<$Res>
    extends _$AthleteExamStateCopyWithImpl<$Res, _$LoadedImpl>
    implements _$$LoadedImplCopyWith<$Res> {
  __$$LoadedImplCopyWithImpl(
      _$LoadedImpl _value, $Res Function(_$LoadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of AthleteExamState
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
              as AthleteExamLoadedEvent,
    ));
  }

  /// Create a copy of AthleteExamState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AthleteExamLoadedEventCopyWith<$Res> get data {
    return $AthleteExamLoadedEventCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc

class _$LoadedImpl implements _Loaded {
  const _$LoadedImpl(this.data);

  @override
  final AthleteExamLoadedEvent data;

  @override
  String toString() {
    return 'AthleteExamState.loaded(data: $data)';
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

  /// Create a copy of AthleteExamState
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
    required TResult Function(AthleteExamLoadedEvent data) loaded,
    required TResult Function(String message) failure,
  }) {
    return loaded(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(AthleteExamLoadedEvent data)? loaded,
    TResult? Function(String message)? failure,
  }) {
    return loaded?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(AthleteExamLoadedEvent data)? loaded,
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

abstract class _Loaded implements AthleteExamState {
  const factory _Loaded(final AthleteExamLoadedEvent data) = _$LoadedImpl;

  AthleteExamLoadedEvent get data;

  /// Create a copy of AthleteExamState
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
    extends _$AthleteExamStateCopyWithImpl<$Res, _$FailureImpl>
    implements _$$FailureImplCopyWith<$Res> {
  __$$FailureImplCopyWithImpl(
      _$FailureImpl _value, $Res Function(_$FailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of AthleteExamState
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
    return 'AthleteExamState.failure(message: $message)';
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

  /// Create a copy of AthleteExamState
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
    required TResult Function(AthleteExamLoadedEvent data) loaded,
    required TResult Function(String message) failure,
  }) {
    return failure(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(AthleteExamLoadedEvent data)? loaded,
    TResult? Function(String message)? failure,
  }) {
    return failure?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(AthleteExamLoadedEvent data)? loaded,
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

abstract class _Failure implements AthleteExamState {
  const factory _Failure(final String message) = _$FailureImpl;

  String get message;

  /// Create a copy of AthleteExamState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FailureImplCopyWith<_$FailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AthleteExamLoadedEvent {
  List<ExamModel> get exams => throw _privateConstructorUsedError;
  List<ExamModel> get filteredExams => throw _privateConstructorUsedError;

  /// Create a copy of AthleteExamLoadedEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AthleteExamLoadedEventCopyWith<AthleteExamLoadedEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AthleteExamLoadedEventCopyWith<$Res> {
  factory $AthleteExamLoadedEventCopyWith(AthleteExamLoadedEvent value,
          $Res Function(AthleteExamLoadedEvent) then) =
      _$AthleteExamLoadedEventCopyWithImpl<$Res, AthleteExamLoadedEvent>;
  @useResult
  $Res call({List<ExamModel> exams, List<ExamModel> filteredExams});
}

/// @nodoc
class _$AthleteExamLoadedEventCopyWithImpl<$Res,
        $Val extends AthleteExamLoadedEvent>
    implements $AthleteExamLoadedEventCopyWith<$Res> {
  _$AthleteExamLoadedEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AthleteExamLoadedEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? exams = null,
    Object? filteredExams = null,
  }) {
    return _then(_value.copyWith(
      exams: null == exams
          ? _value.exams
          : exams // ignore: cast_nullable_to_non_nullable
              as List<ExamModel>,
      filteredExams: null == filteredExams
          ? _value.filteredExams
          : filteredExams // ignore: cast_nullable_to_non_nullable
              as List<ExamModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AthleteExamLoadedEventImplCopyWith<$Res>
    implements $AthleteExamLoadedEventCopyWith<$Res> {
  factory _$$AthleteExamLoadedEventImplCopyWith(
          _$AthleteExamLoadedEventImpl value,
          $Res Function(_$AthleteExamLoadedEventImpl) then) =
      __$$AthleteExamLoadedEventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<ExamModel> exams, List<ExamModel> filteredExams});
}

/// @nodoc
class __$$AthleteExamLoadedEventImplCopyWithImpl<$Res>
    extends _$AthleteExamLoadedEventCopyWithImpl<$Res,
        _$AthleteExamLoadedEventImpl>
    implements _$$AthleteExamLoadedEventImplCopyWith<$Res> {
  __$$AthleteExamLoadedEventImplCopyWithImpl(
      _$AthleteExamLoadedEventImpl _value,
      $Res Function(_$AthleteExamLoadedEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of AthleteExamLoadedEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? exams = null,
    Object? filteredExams = null,
  }) {
    return _then(_$AthleteExamLoadedEventImpl(
      exams: null == exams
          ? _value._exams
          : exams // ignore: cast_nullable_to_non_nullable
              as List<ExamModel>,
      filteredExams: null == filteredExams
          ? _value._filteredExams
          : filteredExams // ignore: cast_nullable_to_non_nullable
              as List<ExamModel>,
    ));
  }
}

/// @nodoc

class _$AthleteExamLoadedEventImpl implements _AthleteExamLoadedEvent {
  const _$AthleteExamLoadedEventImpl(
      {final List<ExamModel> exams = const [],
      final List<ExamModel> filteredExams = const []})
      : _exams = exams,
        _filteredExams = filteredExams;

  final List<ExamModel> _exams;
  @override
  @JsonKey()
  List<ExamModel> get exams {
    if (_exams is EqualUnmodifiableListView) return _exams;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_exams);
  }

  final List<ExamModel> _filteredExams;
  @override
  @JsonKey()
  List<ExamModel> get filteredExams {
    if (_filteredExams is EqualUnmodifiableListView) return _filteredExams;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_filteredExams);
  }

  @override
  String toString() {
    return 'AthleteExamLoadedEvent(exams: $exams, filteredExams: $filteredExams)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AthleteExamLoadedEventImpl &&
            const DeepCollectionEquality().equals(other._exams, _exams) &&
            const DeepCollectionEquality()
                .equals(other._filteredExams, _filteredExams));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_exams),
      const DeepCollectionEquality().hash(_filteredExams));

  /// Create a copy of AthleteExamLoadedEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AthleteExamLoadedEventImplCopyWith<_$AthleteExamLoadedEventImpl>
      get copyWith => __$$AthleteExamLoadedEventImplCopyWithImpl<
          _$AthleteExamLoadedEventImpl>(this, _$identity);
}

abstract class _AthleteExamLoadedEvent implements AthleteExamLoadedEvent {
  const factory _AthleteExamLoadedEvent(
      {final List<ExamModel> exams,
      final List<ExamModel> filteredExams}) = _$AthleteExamLoadedEventImpl;

  @override
  List<ExamModel> get exams;
  @override
  List<ExamModel> get filteredExams;

  /// Create a copy of AthleteExamLoadedEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AthleteExamLoadedEventImplCopyWith<_$AthleteExamLoadedEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}
