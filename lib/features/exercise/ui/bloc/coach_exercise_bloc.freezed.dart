// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'coach_exercise_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CoachExerciseEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(GetAllExerciseParams params) getExercises,
    required TResult Function(String query) filterExercises,
    required TResult Function() clear,
    required TResult Function(List<CreateExerciseParams> params) createBatch,
    required TResult Function(List<UpdateExerciseParams> params) update,
    required TResult Function(DeleteExerciseParams params) delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(GetAllExerciseParams params)? getExercises,
    TResult? Function(String query)? filterExercises,
    TResult? Function()? clear,
    TResult? Function(List<CreateExerciseParams> params)? createBatch,
    TResult? Function(List<UpdateExerciseParams> params)? update,
    TResult? Function(DeleteExerciseParams params)? delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GetAllExerciseParams params)? getExercises,
    TResult Function(String query)? filterExercises,
    TResult Function()? clear,
    TResult Function(List<CreateExerciseParams> params)? createBatch,
    TResult Function(List<UpdateExerciseParams> params)? update,
    TResult Function(DeleteExerciseParams params)? delete,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CoachExerciseEventGetExercises value)
        getExercises,
    required TResult Function(CoachExerciseEventFilterExercises value)
        filterExercises,
    required TResult Function(CoachExerciseEventClear value) clear,
    required TResult Function(CoachExerciseEventCreateBatch value) createBatch,
    required TResult Function(CoachExerciseEventUpdateBatch value) update,
    required TResult Function(CoachExerciseEventDelete value) delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CoachExerciseEventGetExercises value)? getExercises,
    TResult? Function(CoachExerciseEventFilterExercises value)? filterExercises,
    TResult? Function(CoachExerciseEventClear value)? clear,
    TResult? Function(CoachExerciseEventCreateBatch value)? createBatch,
    TResult? Function(CoachExerciseEventUpdateBatch value)? update,
    TResult? Function(CoachExerciseEventDelete value)? delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CoachExerciseEventGetExercises value)? getExercises,
    TResult Function(CoachExerciseEventFilterExercises value)? filterExercises,
    TResult Function(CoachExerciseEventClear value)? clear,
    TResult Function(CoachExerciseEventCreateBatch value)? createBatch,
    TResult Function(CoachExerciseEventUpdateBatch value)? update,
    TResult Function(CoachExerciseEventDelete value)? delete,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CoachExerciseEventCopyWith<$Res> {
  factory $CoachExerciseEventCopyWith(
          CoachExerciseEvent value, $Res Function(CoachExerciseEvent) then) =
      _$CoachExerciseEventCopyWithImpl<$Res, CoachExerciseEvent>;
}

/// @nodoc
class _$CoachExerciseEventCopyWithImpl<$Res, $Val extends CoachExerciseEvent>
    implements $CoachExerciseEventCopyWith<$Res> {
  _$CoachExerciseEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CoachExerciseEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$CoachExerciseEventGetExercisesImplCopyWith<$Res> {
  factory _$$CoachExerciseEventGetExercisesImplCopyWith(
          _$CoachExerciseEventGetExercisesImpl value,
          $Res Function(_$CoachExerciseEventGetExercisesImpl) then) =
      __$$CoachExerciseEventGetExercisesImplCopyWithImpl<$Res>;
  @useResult
  $Res call({GetAllExerciseParams params});

  $GetAllExerciseParamsCopyWith<$Res> get params;
}

/// @nodoc
class __$$CoachExerciseEventGetExercisesImplCopyWithImpl<$Res>
    extends _$CoachExerciseEventCopyWithImpl<$Res,
        _$CoachExerciseEventGetExercisesImpl>
    implements _$$CoachExerciseEventGetExercisesImplCopyWith<$Res> {
  __$$CoachExerciseEventGetExercisesImplCopyWithImpl(
      _$CoachExerciseEventGetExercisesImpl _value,
      $Res Function(_$CoachExerciseEventGetExercisesImpl) _then)
      : super(_value, _then);

  /// Create a copy of CoachExerciseEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? params = null,
  }) {
    return _then(_$CoachExerciseEventGetExercisesImpl(
      null == params
          ? _value.params
          : params // ignore: cast_nullable_to_non_nullable
              as GetAllExerciseParams,
    ));
  }

  /// Create a copy of CoachExerciseEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GetAllExerciseParamsCopyWith<$Res> get params {
    return $GetAllExerciseParamsCopyWith<$Res>(_value.params, (value) {
      return _then(_value.copyWith(params: value));
    });
  }
}

/// @nodoc

class _$CoachExerciseEventGetExercisesImpl
    implements CoachExerciseEventGetExercises {
  const _$CoachExerciseEventGetExercisesImpl(this.params);

  @override
  final GetAllExerciseParams params;

  @override
  String toString() {
    return 'CoachExerciseEvent.getExercises(params: $params)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CoachExerciseEventGetExercisesImpl &&
            (identical(other.params, params) || other.params == params));
  }

  @override
  int get hashCode => Object.hash(runtimeType, params);

  /// Create a copy of CoachExerciseEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CoachExerciseEventGetExercisesImplCopyWith<
          _$CoachExerciseEventGetExercisesImpl>
      get copyWith => __$$CoachExerciseEventGetExercisesImplCopyWithImpl<
          _$CoachExerciseEventGetExercisesImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(GetAllExerciseParams params) getExercises,
    required TResult Function(String query) filterExercises,
    required TResult Function() clear,
    required TResult Function(List<CreateExerciseParams> params) createBatch,
    required TResult Function(List<UpdateExerciseParams> params) update,
    required TResult Function(DeleteExerciseParams params) delete,
  }) {
    return getExercises(params);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(GetAllExerciseParams params)? getExercises,
    TResult? Function(String query)? filterExercises,
    TResult? Function()? clear,
    TResult? Function(List<CreateExerciseParams> params)? createBatch,
    TResult? Function(List<UpdateExerciseParams> params)? update,
    TResult? Function(DeleteExerciseParams params)? delete,
  }) {
    return getExercises?.call(params);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GetAllExerciseParams params)? getExercises,
    TResult Function(String query)? filterExercises,
    TResult Function()? clear,
    TResult Function(List<CreateExerciseParams> params)? createBatch,
    TResult Function(List<UpdateExerciseParams> params)? update,
    TResult Function(DeleteExerciseParams params)? delete,
    required TResult orElse(),
  }) {
    if (getExercises != null) {
      return getExercises(params);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CoachExerciseEventGetExercises value)
        getExercises,
    required TResult Function(CoachExerciseEventFilterExercises value)
        filterExercises,
    required TResult Function(CoachExerciseEventClear value) clear,
    required TResult Function(CoachExerciseEventCreateBatch value) createBatch,
    required TResult Function(CoachExerciseEventUpdateBatch value) update,
    required TResult Function(CoachExerciseEventDelete value) delete,
  }) {
    return getExercises(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CoachExerciseEventGetExercises value)? getExercises,
    TResult? Function(CoachExerciseEventFilterExercises value)? filterExercises,
    TResult? Function(CoachExerciseEventClear value)? clear,
    TResult? Function(CoachExerciseEventCreateBatch value)? createBatch,
    TResult? Function(CoachExerciseEventUpdateBatch value)? update,
    TResult? Function(CoachExerciseEventDelete value)? delete,
  }) {
    return getExercises?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CoachExerciseEventGetExercises value)? getExercises,
    TResult Function(CoachExerciseEventFilterExercises value)? filterExercises,
    TResult Function(CoachExerciseEventClear value)? clear,
    TResult Function(CoachExerciseEventCreateBatch value)? createBatch,
    TResult Function(CoachExerciseEventUpdateBatch value)? update,
    TResult Function(CoachExerciseEventDelete value)? delete,
    required TResult orElse(),
  }) {
    if (getExercises != null) {
      return getExercises(this);
    }
    return orElse();
  }
}

abstract class CoachExerciseEventGetExercises implements CoachExerciseEvent {
  const factory CoachExerciseEventGetExercises(
      final GetAllExerciseParams params) = _$CoachExerciseEventGetExercisesImpl;

  GetAllExerciseParams get params;

  /// Create a copy of CoachExerciseEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CoachExerciseEventGetExercisesImplCopyWith<
          _$CoachExerciseEventGetExercisesImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CoachExerciseEventFilterExercisesImplCopyWith<$Res> {
  factory _$$CoachExerciseEventFilterExercisesImplCopyWith(
          _$CoachExerciseEventFilterExercisesImpl value,
          $Res Function(_$CoachExerciseEventFilterExercisesImpl) then) =
      __$$CoachExerciseEventFilterExercisesImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String query});
}

/// @nodoc
class __$$CoachExerciseEventFilterExercisesImplCopyWithImpl<$Res>
    extends _$CoachExerciseEventCopyWithImpl<$Res,
        _$CoachExerciseEventFilterExercisesImpl>
    implements _$$CoachExerciseEventFilterExercisesImplCopyWith<$Res> {
  __$$CoachExerciseEventFilterExercisesImplCopyWithImpl(
      _$CoachExerciseEventFilterExercisesImpl _value,
      $Res Function(_$CoachExerciseEventFilterExercisesImpl) _then)
      : super(_value, _then);

  /// Create a copy of CoachExerciseEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
  }) {
    return _then(_$CoachExerciseEventFilterExercisesImpl(
      null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CoachExerciseEventFilterExercisesImpl
    implements CoachExerciseEventFilterExercises {
  const _$CoachExerciseEventFilterExercisesImpl(this.query);

  @override
  final String query;

  @override
  String toString() {
    return 'CoachExerciseEvent.filterExercises(query: $query)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CoachExerciseEventFilterExercisesImpl &&
            (identical(other.query, query) || other.query == query));
  }

  @override
  int get hashCode => Object.hash(runtimeType, query);

  /// Create a copy of CoachExerciseEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CoachExerciseEventFilterExercisesImplCopyWith<
          _$CoachExerciseEventFilterExercisesImpl>
      get copyWith => __$$CoachExerciseEventFilterExercisesImplCopyWithImpl<
          _$CoachExerciseEventFilterExercisesImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(GetAllExerciseParams params) getExercises,
    required TResult Function(String query) filterExercises,
    required TResult Function() clear,
    required TResult Function(List<CreateExerciseParams> params) createBatch,
    required TResult Function(List<UpdateExerciseParams> params) update,
    required TResult Function(DeleteExerciseParams params) delete,
  }) {
    return filterExercises(query);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(GetAllExerciseParams params)? getExercises,
    TResult? Function(String query)? filterExercises,
    TResult? Function()? clear,
    TResult? Function(List<CreateExerciseParams> params)? createBatch,
    TResult? Function(List<UpdateExerciseParams> params)? update,
    TResult? Function(DeleteExerciseParams params)? delete,
  }) {
    return filterExercises?.call(query);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GetAllExerciseParams params)? getExercises,
    TResult Function(String query)? filterExercises,
    TResult Function()? clear,
    TResult Function(List<CreateExerciseParams> params)? createBatch,
    TResult Function(List<UpdateExerciseParams> params)? update,
    TResult Function(DeleteExerciseParams params)? delete,
    required TResult orElse(),
  }) {
    if (filterExercises != null) {
      return filterExercises(query);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CoachExerciseEventGetExercises value)
        getExercises,
    required TResult Function(CoachExerciseEventFilterExercises value)
        filterExercises,
    required TResult Function(CoachExerciseEventClear value) clear,
    required TResult Function(CoachExerciseEventCreateBatch value) createBatch,
    required TResult Function(CoachExerciseEventUpdateBatch value) update,
    required TResult Function(CoachExerciseEventDelete value) delete,
  }) {
    return filterExercises(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CoachExerciseEventGetExercises value)? getExercises,
    TResult? Function(CoachExerciseEventFilterExercises value)? filterExercises,
    TResult? Function(CoachExerciseEventClear value)? clear,
    TResult? Function(CoachExerciseEventCreateBatch value)? createBatch,
    TResult? Function(CoachExerciseEventUpdateBatch value)? update,
    TResult? Function(CoachExerciseEventDelete value)? delete,
  }) {
    return filterExercises?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CoachExerciseEventGetExercises value)? getExercises,
    TResult Function(CoachExerciseEventFilterExercises value)? filterExercises,
    TResult Function(CoachExerciseEventClear value)? clear,
    TResult Function(CoachExerciseEventCreateBatch value)? createBatch,
    TResult Function(CoachExerciseEventUpdateBatch value)? update,
    TResult Function(CoachExerciseEventDelete value)? delete,
    required TResult orElse(),
  }) {
    if (filterExercises != null) {
      return filterExercises(this);
    }
    return orElse();
  }
}

abstract class CoachExerciseEventFilterExercises implements CoachExerciseEvent {
  const factory CoachExerciseEventFilterExercises(final String query) =
      _$CoachExerciseEventFilterExercisesImpl;

  String get query;

  /// Create a copy of CoachExerciseEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CoachExerciseEventFilterExercisesImplCopyWith<
          _$CoachExerciseEventFilterExercisesImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CoachExerciseEventClearImplCopyWith<$Res> {
  factory _$$CoachExerciseEventClearImplCopyWith(
          _$CoachExerciseEventClearImpl value,
          $Res Function(_$CoachExerciseEventClearImpl) then) =
      __$$CoachExerciseEventClearImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CoachExerciseEventClearImplCopyWithImpl<$Res>
    extends _$CoachExerciseEventCopyWithImpl<$Res,
        _$CoachExerciseEventClearImpl>
    implements _$$CoachExerciseEventClearImplCopyWith<$Res> {
  __$$CoachExerciseEventClearImplCopyWithImpl(
      _$CoachExerciseEventClearImpl _value,
      $Res Function(_$CoachExerciseEventClearImpl) _then)
      : super(_value, _then);

  /// Create a copy of CoachExerciseEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$CoachExerciseEventClearImpl implements CoachExerciseEventClear {
  const _$CoachExerciseEventClearImpl();

  @override
  String toString() {
    return 'CoachExerciseEvent.clear()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CoachExerciseEventClearImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(GetAllExerciseParams params) getExercises,
    required TResult Function(String query) filterExercises,
    required TResult Function() clear,
    required TResult Function(List<CreateExerciseParams> params) createBatch,
    required TResult Function(List<UpdateExerciseParams> params) update,
    required TResult Function(DeleteExerciseParams params) delete,
  }) {
    return clear();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(GetAllExerciseParams params)? getExercises,
    TResult? Function(String query)? filterExercises,
    TResult? Function()? clear,
    TResult? Function(List<CreateExerciseParams> params)? createBatch,
    TResult? Function(List<UpdateExerciseParams> params)? update,
    TResult? Function(DeleteExerciseParams params)? delete,
  }) {
    return clear?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GetAllExerciseParams params)? getExercises,
    TResult Function(String query)? filterExercises,
    TResult Function()? clear,
    TResult Function(List<CreateExerciseParams> params)? createBatch,
    TResult Function(List<UpdateExerciseParams> params)? update,
    TResult Function(DeleteExerciseParams params)? delete,
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
    required TResult Function(CoachExerciseEventGetExercises value)
        getExercises,
    required TResult Function(CoachExerciseEventFilterExercises value)
        filterExercises,
    required TResult Function(CoachExerciseEventClear value) clear,
    required TResult Function(CoachExerciseEventCreateBatch value) createBatch,
    required TResult Function(CoachExerciseEventUpdateBatch value) update,
    required TResult Function(CoachExerciseEventDelete value) delete,
  }) {
    return clear(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CoachExerciseEventGetExercises value)? getExercises,
    TResult? Function(CoachExerciseEventFilterExercises value)? filterExercises,
    TResult? Function(CoachExerciseEventClear value)? clear,
    TResult? Function(CoachExerciseEventCreateBatch value)? createBatch,
    TResult? Function(CoachExerciseEventUpdateBatch value)? update,
    TResult? Function(CoachExerciseEventDelete value)? delete,
  }) {
    return clear?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CoachExerciseEventGetExercises value)? getExercises,
    TResult Function(CoachExerciseEventFilterExercises value)? filterExercises,
    TResult Function(CoachExerciseEventClear value)? clear,
    TResult Function(CoachExerciseEventCreateBatch value)? createBatch,
    TResult Function(CoachExerciseEventUpdateBatch value)? update,
    TResult Function(CoachExerciseEventDelete value)? delete,
    required TResult orElse(),
  }) {
    if (clear != null) {
      return clear(this);
    }
    return orElse();
  }
}

abstract class CoachExerciseEventClear implements CoachExerciseEvent {
  const factory CoachExerciseEventClear() = _$CoachExerciseEventClearImpl;
}

/// @nodoc
abstract class _$$CoachExerciseEventCreateBatchImplCopyWith<$Res> {
  factory _$$CoachExerciseEventCreateBatchImplCopyWith(
          _$CoachExerciseEventCreateBatchImpl value,
          $Res Function(_$CoachExerciseEventCreateBatchImpl) then) =
      __$$CoachExerciseEventCreateBatchImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<CreateExerciseParams> params});
}

/// @nodoc
class __$$CoachExerciseEventCreateBatchImplCopyWithImpl<$Res>
    extends _$CoachExerciseEventCopyWithImpl<$Res,
        _$CoachExerciseEventCreateBatchImpl>
    implements _$$CoachExerciseEventCreateBatchImplCopyWith<$Res> {
  __$$CoachExerciseEventCreateBatchImplCopyWithImpl(
      _$CoachExerciseEventCreateBatchImpl _value,
      $Res Function(_$CoachExerciseEventCreateBatchImpl) _then)
      : super(_value, _then);

  /// Create a copy of CoachExerciseEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? params = null,
  }) {
    return _then(_$CoachExerciseEventCreateBatchImpl(
      null == params
          ? _value._params
          : params // ignore: cast_nullable_to_non_nullable
              as List<CreateExerciseParams>,
    ));
  }
}

/// @nodoc

class _$CoachExerciseEventCreateBatchImpl
    implements CoachExerciseEventCreateBatch {
  const _$CoachExerciseEventCreateBatchImpl(
      final List<CreateExerciseParams> params)
      : _params = params;

  final List<CreateExerciseParams> _params;
  @override
  List<CreateExerciseParams> get params {
    if (_params is EqualUnmodifiableListView) return _params;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_params);
  }

  @override
  String toString() {
    return 'CoachExerciseEvent.createBatch(params: $params)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CoachExerciseEventCreateBatchImpl &&
            const DeepCollectionEquality().equals(other._params, _params));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_params));

  /// Create a copy of CoachExerciseEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CoachExerciseEventCreateBatchImplCopyWith<
          _$CoachExerciseEventCreateBatchImpl>
      get copyWith => __$$CoachExerciseEventCreateBatchImplCopyWithImpl<
          _$CoachExerciseEventCreateBatchImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(GetAllExerciseParams params) getExercises,
    required TResult Function(String query) filterExercises,
    required TResult Function() clear,
    required TResult Function(List<CreateExerciseParams> params) createBatch,
    required TResult Function(List<UpdateExerciseParams> params) update,
    required TResult Function(DeleteExerciseParams params) delete,
  }) {
    return createBatch(params);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(GetAllExerciseParams params)? getExercises,
    TResult? Function(String query)? filterExercises,
    TResult? Function()? clear,
    TResult? Function(List<CreateExerciseParams> params)? createBatch,
    TResult? Function(List<UpdateExerciseParams> params)? update,
    TResult? Function(DeleteExerciseParams params)? delete,
  }) {
    return createBatch?.call(params);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GetAllExerciseParams params)? getExercises,
    TResult Function(String query)? filterExercises,
    TResult Function()? clear,
    TResult Function(List<CreateExerciseParams> params)? createBatch,
    TResult Function(List<UpdateExerciseParams> params)? update,
    TResult Function(DeleteExerciseParams params)? delete,
    required TResult orElse(),
  }) {
    if (createBatch != null) {
      return createBatch(params);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CoachExerciseEventGetExercises value)
        getExercises,
    required TResult Function(CoachExerciseEventFilterExercises value)
        filterExercises,
    required TResult Function(CoachExerciseEventClear value) clear,
    required TResult Function(CoachExerciseEventCreateBatch value) createBatch,
    required TResult Function(CoachExerciseEventUpdateBatch value) update,
    required TResult Function(CoachExerciseEventDelete value) delete,
  }) {
    return createBatch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CoachExerciseEventGetExercises value)? getExercises,
    TResult? Function(CoachExerciseEventFilterExercises value)? filterExercises,
    TResult? Function(CoachExerciseEventClear value)? clear,
    TResult? Function(CoachExerciseEventCreateBatch value)? createBatch,
    TResult? Function(CoachExerciseEventUpdateBatch value)? update,
    TResult? Function(CoachExerciseEventDelete value)? delete,
  }) {
    return createBatch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CoachExerciseEventGetExercises value)? getExercises,
    TResult Function(CoachExerciseEventFilterExercises value)? filterExercises,
    TResult Function(CoachExerciseEventClear value)? clear,
    TResult Function(CoachExerciseEventCreateBatch value)? createBatch,
    TResult Function(CoachExerciseEventUpdateBatch value)? update,
    TResult Function(CoachExerciseEventDelete value)? delete,
    required TResult orElse(),
  }) {
    if (createBatch != null) {
      return createBatch(this);
    }
    return orElse();
  }
}

abstract class CoachExerciseEventCreateBatch implements CoachExerciseEvent {
  const factory CoachExerciseEventCreateBatch(
          final List<CreateExerciseParams> params) =
      _$CoachExerciseEventCreateBatchImpl;

  List<CreateExerciseParams> get params;

  /// Create a copy of CoachExerciseEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CoachExerciseEventCreateBatchImplCopyWith<
          _$CoachExerciseEventCreateBatchImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CoachExerciseEventUpdateBatchImplCopyWith<$Res> {
  factory _$$CoachExerciseEventUpdateBatchImplCopyWith(
          _$CoachExerciseEventUpdateBatchImpl value,
          $Res Function(_$CoachExerciseEventUpdateBatchImpl) then) =
      __$$CoachExerciseEventUpdateBatchImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<UpdateExerciseParams> params});
}

/// @nodoc
class __$$CoachExerciseEventUpdateBatchImplCopyWithImpl<$Res>
    extends _$CoachExerciseEventCopyWithImpl<$Res,
        _$CoachExerciseEventUpdateBatchImpl>
    implements _$$CoachExerciseEventUpdateBatchImplCopyWith<$Res> {
  __$$CoachExerciseEventUpdateBatchImplCopyWithImpl(
      _$CoachExerciseEventUpdateBatchImpl _value,
      $Res Function(_$CoachExerciseEventUpdateBatchImpl) _then)
      : super(_value, _then);

  /// Create a copy of CoachExerciseEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? params = null,
  }) {
    return _then(_$CoachExerciseEventUpdateBatchImpl(
      null == params
          ? _value._params
          : params // ignore: cast_nullable_to_non_nullable
              as List<UpdateExerciseParams>,
    ));
  }
}

/// @nodoc

class _$CoachExerciseEventUpdateBatchImpl
    implements CoachExerciseEventUpdateBatch {
  const _$CoachExerciseEventUpdateBatchImpl(
      final List<UpdateExerciseParams> params)
      : _params = params;

  final List<UpdateExerciseParams> _params;
  @override
  List<UpdateExerciseParams> get params {
    if (_params is EqualUnmodifiableListView) return _params;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_params);
  }

  @override
  String toString() {
    return 'CoachExerciseEvent.update(params: $params)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CoachExerciseEventUpdateBatchImpl &&
            const DeepCollectionEquality().equals(other._params, _params));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_params));

  /// Create a copy of CoachExerciseEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CoachExerciseEventUpdateBatchImplCopyWith<
          _$CoachExerciseEventUpdateBatchImpl>
      get copyWith => __$$CoachExerciseEventUpdateBatchImplCopyWithImpl<
          _$CoachExerciseEventUpdateBatchImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(GetAllExerciseParams params) getExercises,
    required TResult Function(String query) filterExercises,
    required TResult Function() clear,
    required TResult Function(List<CreateExerciseParams> params) createBatch,
    required TResult Function(List<UpdateExerciseParams> params) update,
    required TResult Function(DeleteExerciseParams params) delete,
  }) {
    return update(params);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(GetAllExerciseParams params)? getExercises,
    TResult? Function(String query)? filterExercises,
    TResult? Function()? clear,
    TResult? Function(List<CreateExerciseParams> params)? createBatch,
    TResult? Function(List<UpdateExerciseParams> params)? update,
    TResult? Function(DeleteExerciseParams params)? delete,
  }) {
    return update?.call(params);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GetAllExerciseParams params)? getExercises,
    TResult Function(String query)? filterExercises,
    TResult Function()? clear,
    TResult Function(List<CreateExerciseParams> params)? createBatch,
    TResult Function(List<UpdateExerciseParams> params)? update,
    TResult Function(DeleteExerciseParams params)? delete,
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
    required TResult Function(CoachExerciseEventGetExercises value)
        getExercises,
    required TResult Function(CoachExerciseEventFilterExercises value)
        filterExercises,
    required TResult Function(CoachExerciseEventClear value) clear,
    required TResult Function(CoachExerciseEventCreateBatch value) createBatch,
    required TResult Function(CoachExerciseEventUpdateBatch value) update,
    required TResult Function(CoachExerciseEventDelete value) delete,
  }) {
    return update(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CoachExerciseEventGetExercises value)? getExercises,
    TResult? Function(CoachExerciseEventFilterExercises value)? filterExercises,
    TResult? Function(CoachExerciseEventClear value)? clear,
    TResult? Function(CoachExerciseEventCreateBatch value)? createBatch,
    TResult? Function(CoachExerciseEventUpdateBatch value)? update,
    TResult? Function(CoachExerciseEventDelete value)? delete,
  }) {
    return update?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CoachExerciseEventGetExercises value)? getExercises,
    TResult Function(CoachExerciseEventFilterExercises value)? filterExercises,
    TResult Function(CoachExerciseEventClear value)? clear,
    TResult Function(CoachExerciseEventCreateBatch value)? createBatch,
    TResult Function(CoachExerciseEventUpdateBatch value)? update,
    TResult Function(CoachExerciseEventDelete value)? delete,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(this);
    }
    return orElse();
  }
}

abstract class CoachExerciseEventUpdateBatch implements CoachExerciseEvent {
  const factory CoachExerciseEventUpdateBatch(
          final List<UpdateExerciseParams> params) =
      _$CoachExerciseEventUpdateBatchImpl;

  List<UpdateExerciseParams> get params;

  /// Create a copy of CoachExerciseEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CoachExerciseEventUpdateBatchImplCopyWith<
          _$CoachExerciseEventUpdateBatchImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CoachExerciseEventDeleteImplCopyWith<$Res> {
  factory _$$CoachExerciseEventDeleteImplCopyWith(
          _$CoachExerciseEventDeleteImpl value,
          $Res Function(_$CoachExerciseEventDeleteImpl) then) =
      __$$CoachExerciseEventDeleteImplCopyWithImpl<$Res>;
  @useResult
  $Res call({DeleteExerciseParams params});

  $DeleteExerciseParamsCopyWith<$Res> get params;
}

/// @nodoc
class __$$CoachExerciseEventDeleteImplCopyWithImpl<$Res>
    extends _$CoachExerciseEventCopyWithImpl<$Res,
        _$CoachExerciseEventDeleteImpl>
    implements _$$CoachExerciseEventDeleteImplCopyWith<$Res> {
  __$$CoachExerciseEventDeleteImplCopyWithImpl(
      _$CoachExerciseEventDeleteImpl _value,
      $Res Function(_$CoachExerciseEventDeleteImpl) _then)
      : super(_value, _then);

  /// Create a copy of CoachExerciseEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? params = null,
  }) {
    return _then(_$CoachExerciseEventDeleteImpl(
      null == params
          ? _value.params
          : params // ignore: cast_nullable_to_non_nullable
              as DeleteExerciseParams,
    ));
  }

  /// Create a copy of CoachExerciseEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DeleteExerciseParamsCopyWith<$Res> get params {
    return $DeleteExerciseParamsCopyWith<$Res>(_value.params, (value) {
      return _then(_value.copyWith(params: value));
    });
  }
}

/// @nodoc

class _$CoachExerciseEventDeleteImpl implements CoachExerciseEventDelete {
  const _$CoachExerciseEventDeleteImpl(this.params);

  @override
  final DeleteExerciseParams params;

  @override
  String toString() {
    return 'CoachExerciseEvent.delete(params: $params)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CoachExerciseEventDeleteImpl &&
            (identical(other.params, params) || other.params == params));
  }

  @override
  int get hashCode => Object.hash(runtimeType, params);

  /// Create a copy of CoachExerciseEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CoachExerciseEventDeleteImplCopyWith<_$CoachExerciseEventDeleteImpl>
      get copyWith => __$$CoachExerciseEventDeleteImplCopyWithImpl<
          _$CoachExerciseEventDeleteImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(GetAllExerciseParams params) getExercises,
    required TResult Function(String query) filterExercises,
    required TResult Function() clear,
    required TResult Function(List<CreateExerciseParams> params) createBatch,
    required TResult Function(List<UpdateExerciseParams> params) update,
    required TResult Function(DeleteExerciseParams params) delete,
  }) {
    return delete(params);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(GetAllExerciseParams params)? getExercises,
    TResult? Function(String query)? filterExercises,
    TResult? Function()? clear,
    TResult? Function(List<CreateExerciseParams> params)? createBatch,
    TResult? Function(List<UpdateExerciseParams> params)? update,
    TResult? Function(DeleteExerciseParams params)? delete,
  }) {
    return delete?.call(params);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GetAllExerciseParams params)? getExercises,
    TResult Function(String query)? filterExercises,
    TResult Function()? clear,
    TResult Function(List<CreateExerciseParams> params)? createBatch,
    TResult Function(List<UpdateExerciseParams> params)? update,
    TResult Function(DeleteExerciseParams params)? delete,
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
    required TResult Function(CoachExerciseEventGetExercises value)
        getExercises,
    required TResult Function(CoachExerciseEventFilterExercises value)
        filterExercises,
    required TResult Function(CoachExerciseEventClear value) clear,
    required TResult Function(CoachExerciseEventCreateBatch value) createBatch,
    required TResult Function(CoachExerciseEventUpdateBatch value) update,
    required TResult Function(CoachExerciseEventDelete value) delete,
  }) {
    return delete(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CoachExerciseEventGetExercises value)? getExercises,
    TResult? Function(CoachExerciseEventFilterExercises value)? filterExercises,
    TResult? Function(CoachExerciseEventClear value)? clear,
    TResult? Function(CoachExerciseEventCreateBatch value)? createBatch,
    TResult? Function(CoachExerciseEventUpdateBatch value)? update,
    TResult? Function(CoachExerciseEventDelete value)? delete,
  }) {
    return delete?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CoachExerciseEventGetExercises value)? getExercises,
    TResult Function(CoachExerciseEventFilterExercises value)? filterExercises,
    TResult Function(CoachExerciseEventClear value)? clear,
    TResult Function(CoachExerciseEventCreateBatch value)? createBatch,
    TResult Function(CoachExerciseEventUpdateBatch value)? update,
    TResult Function(CoachExerciseEventDelete value)? delete,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete(this);
    }
    return orElse();
  }
}

abstract class CoachExerciseEventDelete implements CoachExerciseEvent {
  const factory CoachExerciseEventDelete(final DeleteExerciseParams params) =
      _$CoachExerciseEventDeleteImpl;

  DeleteExerciseParams get params;

  /// Create a copy of CoachExerciseEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CoachExerciseEventDeleteImplCopyWith<_$CoachExerciseEventDeleteImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CoachExerciseState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<ExerciseModel> exercises,
            List<ExerciseModel> filteredExercises)
        loaded,
    required TResult Function(String message) failure,
    required TResult Function(List<ExerciseModel> exercises) createdBatch,
    required TResult Function(List<ExerciseModel> exercises) updatedBatch,
    required TResult Function(ExerciseModel exercise) deleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<ExerciseModel> exercises,
            List<ExerciseModel> filteredExercises)?
        loaded,
    TResult? Function(String message)? failure,
    TResult? Function(List<ExerciseModel> exercises)? createdBatch,
    TResult? Function(List<ExerciseModel> exercises)? updatedBatch,
    TResult? Function(ExerciseModel exercise)? deleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ExerciseModel> exercises,
            List<ExerciseModel> filteredExercises)?
        loaded,
    TResult Function(String message)? failure,
    TResult Function(List<ExerciseModel> exercises)? createdBatch,
    TResult Function(List<ExerciseModel> exercises)? updatedBatch,
    TResult Function(ExerciseModel exercise)? deleted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CoachExerciseStateInitial value) initial,
    required TResult Function(CoachExerciseStateLoading value) loading,
    required TResult Function(CoachExerciseStateLoaded value) loaded,
    required TResult Function(CoachExerciseStateFailure value) failure,
    required TResult Function(CoachExerciseStateCreatedBatch value)
        createdBatch,
    required TResult Function(CoachExerciseStateUpdatedBatch value)
        updatedBatch,
    required TResult Function(CoachExerciseStateDeleted value) deleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CoachExerciseStateInitial value)? initial,
    TResult? Function(CoachExerciseStateLoading value)? loading,
    TResult? Function(CoachExerciseStateLoaded value)? loaded,
    TResult? Function(CoachExerciseStateFailure value)? failure,
    TResult? Function(CoachExerciseStateCreatedBatch value)? createdBatch,
    TResult? Function(CoachExerciseStateUpdatedBatch value)? updatedBatch,
    TResult? Function(CoachExerciseStateDeleted value)? deleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CoachExerciseStateInitial value)? initial,
    TResult Function(CoachExerciseStateLoading value)? loading,
    TResult Function(CoachExerciseStateLoaded value)? loaded,
    TResult Function(CoachExerciseStateFailure value)? failure,
    TResult Function(CoachExerciseStateCreatedBatch value)? createdBatch,
    TResult Function(CoachExerciseStateUpdatedBatch value)? updatedBatch,
    TResult Function(CoachExerciseStateDeleted value)? deleted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CoachExerciseStateCopyWith<$Res> {
  factory $CoachExerciseStateCopyWith(
          CoachExerciseState value, $Res Function(CoachExerciseState) then) =
      _$CoachExerciseStateCopyWithImpl<$Res, CoachExerciseState>;
}

/// @nodoc
class _$CoachExerciseStateCopyWithImpl<$Res, $Val extends CoachExerciseState>
    implements $CoachExerciseStateCopyWith<$Res> {
  _$CoachExerciseStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CoachExerciseState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$CoachExerciseStateInitialImplCopyWith<$Res> {
  factory _$$CoachExerciseStateInitialImplCopyWith(
          _$CoachExerciseStateInitialImpl value,
          $Res Function(_$CoachExerciseStateInitialImpl) then) =
      __$$CoachExerciseStateInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CoachExerciseStateInitialImplCopyWithImpl<$Res>
    extends _$CoachExerciseStateCopyWithImpl<$Res,
        _$CoachExerciseStateInitialImpl>
    implements _$$CoachExerciseStateInitialImplCopyWith<$Res> {
  __$$CoachExerciseStateInitialImplCopyWithImpl(
      _$CoachExerciseStateInitialImpl _value,
      $Res Function(_$CoachExerciseStateInitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of CoachExerciseState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$CoachExerciseStateInitialImpl implements CoachExerciseStateInitial {
  const _$CoachExerciseStateInitialImpl();

  @override
  String toString() {
    return 'CoachExerciseState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CoachExerciseStateInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<ExerciseModel> exercises,
            List<ExerciseModel> filteredExercises)
        loaded,
    required TResult Function(String message) failure,
    required TResult Function(List<ExerciseModel> exercises) createdBatch,
    required TResult Function(List<ExerciseModel> exercises) updatedBatch,
    required TResult Function(ExerciseModel exercise) deleted,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<ExerciseModel> exercises,
            List<ExerciseModel> filteredExercises)?
        loaded,
    TResult? Function(String message)? failure,
    TResult? Function(List<ExerciseModel> exercises)? createdBatch,
    TResult? Function(List<ExerciseModel> exercises)? updatedBatch,
    TResult? Function(ExerciseModel exercise)? deleted,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ExerciseModel> exercises,
            List<ExerciseModel> filteredExercises)?
        loaded,
    TResult Function(String message)? failure,
    TResult Function(List<ExerciseModel> exercises)? createdBatch,
    TResult Function(List<ExerciseModel> exercises)? updatedBatch,
    TResult Function(ExerciseModel exercise)? deleted,
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
    required TResult Function(CoachExerciseStateInitial value) initial,
    required TResult Function(CoachExerciseStateLoading value) loading,
    required TResult Function(CoachExerciseStateLoaded value) loaded,
    required TResult Function(CoachExerciseStateFailure value) failure,
    required TResult Function(CoachExerciseStateCreatedBatch value)
        createdBatch,
    required TResult Function(CoachExerciseStateUpdatedBatch value)
        updatedBatch,
    required TResult Function(CoachExerciseStateDeleted value) deleted,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CoachExerciseStateInitial value)? initial,
    TResult? Function(CoachExerciseStateLoading value)? loading,
    TResult? Function(CoachExerciseStateLoaded value)? loaded,
    TResult? Function(CoachExerciseStateFailure value)? failure,
    TResult? Function(CoachExerciseStateCreatedBatch value)? createdBatch,
    TResult? Function(CoachExerciseStateUpdatedBatch value)? updatedBatch,
    TResult? Function(CoachExerciseStateDeleted value)? deleted,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CoachExerciseStateInitial value)? initial,
    TResult Function(CoachExerciseStateLoading value)? loading,
    TResult Function(CoachExerciseStateLoaded value)? loaded,
    TResult Function(CoachExerciseStateFailure value)? failure,
    TResult Function(CoachExerciseStateCreatedBatch value)? createdBatch,
    TResult Function(CoachExerciseStateUpdatedBatch value)? updatedBatch,
    TResult Function(CoachExerciseStateDeleted value)? deleted,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class CoachExerciseStateInitial implements CoachExerciseState {
  const factory CoachExerciseStateInitial() = _$CoachExerciseStateInitialImpl;
}

/// @nodoc
abstract class _$$CoachExerciseStateLoadingImplCopyWith<$Res> {
  factory _$$CoachExerciseStateLoadingImplCopyWith(
          _$CoachExerciseStateLoadingImpl value,
          $Res Function(_$CoachExerciseStateLoadingImpl) then) =
      __$$CoachExerciseStateLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CoachExerciseStateLoadingImplCopyWithImpl<$Res>
    extends _$CoachExerciseStateCopyWithImpl<$Res,
        _$CoachExerciseStateLoadingImpl>
    implements _$$CoachExerciseStateLoadingImplCopyWith<$Res> {
  __$$CoachExerciseStateLoadingImplCopyWithImpl(
      _$CoachExerciseStateLoadingImpl _value,
      $Res Function(_$CoachExerciseStateLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of CoachExerciseState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$CoachExerciseStateLoadingImpl implements CoachExerciseStateLoading {
  const _$CoachExerciseStateLoadingImpl();

  @override
  String toString() {
    return 'CoachExerciseState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CoachExerciseStateLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<ExerciseModel> exercises,
            List<ExerciseModel> filteredExercises)
        loaded,
    required TResult Function(String message) failure,
    required TResult Function(List<ExerciseModel> exercises) createdBatch,
    required TResult Function(List<ExerciseModel> exercises) updatedBatch,
    required TResult Function(ExerciseModel exercise) deleted,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<ExerciseModel> exercises,
            List<ExerciseModel> filteredExercises)?
        loaded,
    TResult? Function(String message)? failure,
    TResult? Function(List<ExerciseModel> exercises)? createdBatch,
    TResult? Function(List<ExerciseModel> exercises)? updatedBatch,
    TResult? Function(ExerciseModel exercise)? deleted,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ExerciseModel> exercises,
            List<ExerciseModel> filteredExercises)?
        loaded,
    TResult Function(String message)? failure,
    TResult Function(List<ExerciseModel> exercises)? createdBatch,
    TResult Function(List<ExerciseModel> exercises)? updatedBatch,
    TResult Function(ExerciseModel exercise)? deleted,
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
    required TResult Function(CoachExerciseStateInitial value) initial,
    required TResult Function(CoachExerciseStateLoading value) loading,
    required TResult Function(CoachExerciseStateLoaded value) loaded,
    required TResult Function(CoachExerciseStateFailure value) failure,
    required TResult Function(CoachExerciseStateCreatedBatch value)
        createdBatch,
    required TResult Function(CoachExerciseStateUpdatedBatch value)
        updatedBatch,
    required TResult Function(CoachExerciseStateDeleted value) deleted,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CoachExerciseStateInitial value)? initial,
    TResult? Function(CoachExerciseStateLoading value)? loading,
    TResult? Function(CoachExerciseStateLoaded value)? loaded,
    TResult? Function(CoachExerciseStateFailure value)? failure,
    TResult? Function(CoachExerciseStateCreatedBatch value)? createdBatch,
    TResult? Function(CoachExerciseStateUpdatedBatch value)? updatedBatch,
    TResult? Function(CoachExerciseStateDeleted value)? deleted,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CoachExerciseStateInitial value)? initial,
    TResult Function(CoachExerciseStateLoading value)? loading,
    TResult Function(CoachExerciseStateLoaded value)? loaded,
    TResult Function(CoachExerciseStateFailure value)? failure,
    TResult Function(CoachExerciseStateCreatedBatch value)? createdBatch,
    TResult Function(CoachExerciseStateUpdatedBatch value)? updatedBatch,
    TResult Function(CoachExerciseStateDeleted value)? deleted,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class CoachExerciseStateLoading implements CoachExerciseState {
  const factory CoachExerciseStateLoading() = _$CoachExerciseStateLoadingImpl;
}

/// @nodoc
abstract class _$$CoachExerciseStateLoadedImplCopyWith<$Res> {
  factory _$$CoachExerciseStateLoadedImplCopyWith(
          _$CoachExerciseStateLoadedImpl value,
          $Res Function(_$CoachExerciseStateLoadedImpl) then) =
      __$$CoachExerciseStateLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {List<ExerciseModel> exercises, List<ExerciseModel> filteredExercises});
}

/// @nodoc
class __$$CoachExerciseStateLoadedImplCopyWithImpl<$Res>
    extends _$CoachExerciseStateCopyWithImpl<$Res,
        _$CoachExerciseStateLoadedImpl>
    implements _$$CoachExerciseStateLoadedImplCopyWith<$Res> {
  __$$CoachExerciseStateLoadedImplCopyWithImpl(
      _$CoachExerciseStateLoadedImpl _value,
      $Res Function(_$CoachExerciseStateLoadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of CoachExerciseState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? exercises = null,
    Object? filteredExercises = null,
  }) {
    return _then(_$CoachExerciseStateLoadedImpl(
      exercises: null == exercises
          ? _value._exercises
          : exercises // ignore: cast_nullable_to_non_nullable
              as List<ExerciseModel>,
      filteredExercises: null == filteredExercises
          ? _value._filteredExercises
          : filteredExercises // ignore: cast_nullable_to_non_nullable
              as List<ExerciseModel>,
    ));
  }
}

/// @nodoc

class _$CoachExerciseStateLoadedImpl implements CoachExerciseStateLoaded {
  const _$CoachExerciseStateLoadedImpl(
      {required final List<ExerciseModel> exercises,
      required final List<ExerciseModel> filteredExercises})
      : _exercises = exercises,
        _filteredExercises = filteredExercises;

  final List<ExerciseModel> _exercises;
  @override
  List<ExerciseModel> get exercises {
    if (_exercises is EqualUnmodifiableListView) return _exercises;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_exercises);
  }

  final List<ExerciseModel> _filteredExercises;
  @override
  List<ExerciseModel> get filteredExercises {
    if (_filteredExercises is EqualUnmodifiableListView)
      return _filteredExercises;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_filteredExercises);
  }

  @override
  String toString() {
    return 'CoachExerciseState.loaded(exercises: $exercises, filteredExercises: $filteredExercises)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CoachExerciseStateLoadedImpl &&
            const DeepCollectionEquality()
                .equals(other._exercises, _exercises) &&
            const DeepCollectionEquality()
                .equals(other._filteredExercises, _filteredExercises));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_exercises),
      const DeepCollectionEquality().hash(_filteredExercises));

  /// Create a copy of CoachExerciseState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CoachExerciseStateLoadedImplCopyWith<_$CoachExerciseStateLoadedImpl>
      get copyWith => __$$CoachExerciseStateLoadedImplCopyWithImpl<
          _$CoachExerciseStateLoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<ExerciseModel> exercises,
            List<ExerciseModel> filteredExercises)
        loaded,
    required TResult Function(String message) failure,
    required TResult Function(List<ExerciseModel> exercises) createdBatch,
    required TResult Function(List<ExerciseModel> exercises) updatedBatch,
    required TResult Function(ExerciseModel exercise) deleted,
  }) {
    return loaded(exercises, filteredExercises);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<ExerciseModel> exercises,
            List<ExerciseModel> filteredExercises)?
        loaded,
    TResult? Function(String message)? failure,
    TResult? Function(List<ExerciseModel> exercises)? createdBatch,
    TResult? Function(List<ExerciseModel> exercises)? updatedBatch,
    TResult? Function(ExerciseModel exercise)? deleted,
  }) {
    return loaded?.call(exercises, filteredExercises);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ExerciseModel> exercises,
            List<ExerciseModel> filteredExercises)?
        loaded,
    TResult Function(String message)? failure,
    TResult Function(List<ExerciseModel> exercises)? createdBatch,
    TResult Function(List<ExerciseModel> exercises)? updatedBatch,
    TResult Function(ExerciseModel exercise)? deleted,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(exercises, filteredExercises);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CoachExerciseStateInitial value) initial,
    required TResult Function(CoachExerciseStateLoading value) loading,
    required TResult Function(CoachExerciseStateLoaded value) loaded,
    required TResult Function(CoachExerciseStateFailure value) failure,
    required TResult Function(CoachExerciseStateCreatedBatch value)
        createdBatch,
    required TResult Function(CoachExerciseStateUpdatedBatch value)
        updatedBatch,
    required TResult Function(CoachExerciseStateDeleted value) deleted,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CoachExerciseStateInitial value)? initial,
    TResult? Function(CoachExerciseStateLoading value)? loading,
    TResult? Function(CoachExerciseStateLoaded value)? loaded,
    TResult? Function(CoachExerciseStateFailure value)? failure,
    TResult? Function(CoachExerciseStateCreatedBatch value)? createdBatch,
    TResult? Function(CoachExerciseStateUpdatedBatch value)? updatedBatch,
    TResult? Function(CoachExerciseStateDeleted value)? deleted,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CoachExerciseStateInitial value)? initial,
    TResult Function(CoachExerciseStateLoading value)? loading,
    TResult Function(CoachExerciseStateLoaded value)? loaded,
    TResult Function(CoachExerciseStateFailure value)? failure,
    TResult Function(CoachExerciseStateCreatedBatch value)? createdBatch,
    TResult Function(CoachExerciseStateUpdatedBatch value)? updatedBatch,
    TResult Function(CoachExerciseStateDeleted value)? deleted,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class CoachExerciseStateLoaded implements CoachExerciseState {
  const factory CoachExerciseStateLoaded(
          {required final List<ExerciseModel> exercises,
          required final List<ExerciseModel> filteredExercises}) =
      _$CoachExerciseStateLoadedImpl;

  List<ExerciseModel> get exercises;
  List<ExerciseModel> get filteredExercises;

  /// Create a copy of CoachExerciseState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CoachExerciseStateLoadedImplCopyWith<_$CoachExerciseStateLoadedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CoachExerciseStateFailureImplCopyWith<$Res> {
  factory _$$CoachExerciseStateFailureImplCopyWith(
          _$CoachExerciseStateFailureImpl value,
          $Res Function(_$CoachExerciseStateFailureImpl) then) =
      __$$CoachExerciseStateFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$CoachExerciseStateFailureImplCopyWithImpl<$Res>
    extends _$CoachExerciseStateCopyWithImpl<$Res,
        _$CoachExerciseStateFailureImpl>
    implements _$$CoachExerciseStateFailureImplCopyWith<$Res> {
  __$$CoachExerciseStateFailureImplCopyWithImpl(
      _$CoachExerciseStateFailureImpl _value,
      $Res Function(_$CoachExerciseStateFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of CoachExerciseState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$CoachExerciseStateFailureImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CoachExerciseStateFailureImpl implements CoachExerciseStateFailure {
  const _$CoachExerciseStateFailureImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'CoachExerciseState.failure(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CoachExerciseStateFailureImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of CoachExerciseState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CoachExerciseStateFailureImplCopyWith<_$CoachExerciseStateFailureImpl>
      get copyWith => __$$CoachExerciseStateFailureImplCopyWithImpl<
          _$CoachExerciseStateFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<ExerciseModel> exercises,
            List<ExerciseModel> filteredExercises)
        loaded,
    required TResult Function(String message) failure,
    required TResult Function(List<ExerciseModel> exercises) createdBatch,
    required TResult Function(List<ExerciseModel> exercises) updatedBatch,
    required TResult Function(ExerciseModel exercise) deleted,
  }) {
    return failure(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<ExerciseModel> exercises,
            List<ExerciseModel> filteredExercises)?
        loaded,
    TResult? Function(String message)? failure,
    TResult? Function(List<ExerciseModel> exercises)? createdBatch,
    TResult? Function(List<ExerciseModel> exercises)? updatedBatch,
    TResult? Function(ExerciseModel exercise)? deleted,
  }) {
    return failure?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ExerciseModel> exercises,
            List<ExerciseModel> filteredExercises)?
        loaded,
    TResult Function(String message)? failure,
    TResult Function(List<ExerciseModel> exercises)? createdBatch,
    TResult Function(List<ExerciseModel> exercises)? updatedBatch,
    TResult Function(ExerciseModel exercise)? deleted,
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
    required TResult Function(CoachExerciseStateInitial value) initial,
    required TResult Function(CoachExerciseStateLoading value) loading,
    required TResult Function(CoachExerciseStateLoaded value) loaded,
    required TResult Function(CoachExerciseStateFailure value) failure,
    required TResult Function(CoachExerciseStateCreatedBatch value)
        createdBatch,
    required TResult Function(CoachExerciseStateUpdatedBatch value)
        updatedBatch,
    required TResult Function(CoachExerciseStateDeleted value) deleted,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CoachExerciseStateInitial value)? initial,
    TResult? Function(CoachExerciseStateLoading value)? loading,
    TResult? Function(CoachExerciseStateLoaded value)? loaded,
    TResult? Function(CoachExerciseStateFailure value)? failure,
    TResult? Function(CoachExerciseStateCreatedBatch value)? createdBatch,
    TResult? Function(CoachExerciseStateUpdatedBatch value)? updatedBatch,
    TResult? Function(CoachExerciseStateDeleted value)? deleted,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CoachExerciseStateInitial value)? initial,
    TResult Function(CoachExerciseStateLoading value)? loading,
    TResult Function(CoachExerciseStateLoaded value)? loaded,
    TResult Function(CoachExerciseStateFailure value)? failure,
    TResult Function(CoachExerciseStateCreatedBatch value)? createdBatch,
    TResult Function(CoachExerciseStateUpdatedBatch value)? updatedBatch,
    TResult Function(CoachExerciseStateDeleted value)? deleted,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class CoachExerciseStateFailure implements CoachExerciseState {
  const factory CoachExerciseStateFailure(final String message) =
      _$CoachExerciseStateFailureImpl;

  String get message;

  /// Create a copy of CoachExerciseState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CoachExerciseStateFailureImplCopyWith<_$CoachExerciseStateFailureImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CoachExerciseStateCreatedBatchImplCopyWith<$Res> {
  factory _$$CoachExerciseStateCreatedBatchImplCopyWith(
          _$CoachExerciseStateCreatedBatchImpl value,
          $Res Function(_$CoachExerciseStateCreatedBatchImpl) then) =
      __$$CoachExerciseStateCreatedBatchImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<ExerciseModel> exercises});
}

/// @nodoc
class __$$CoachExerciseStateCreatedBatchImplCopyWithImpl<$Res>
    extends _$CoachExerciseStateCopyWithImpl<$Res,
        _$CoachExerciseStateCreatedBatchImpl>
    implements _$$CoachExerciseStateCreatedBatchImplCopyWith<$Res> {
  __$$CoachExerciseStateCreatedBatchImplCopyWithImpl(
      _$CoachExerciseStateCreatedBatchImpl _value,
      $Res Function(_$CoachExerciseStateCreatedBatchImpl) _then)
      : super(_value, _then);

  /// Create a copy of CoachExerciseState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? exercises = null,
  }) {
    return _then(_$CoachExerciseStateCreatedBatchImpl(
      null == exercises
          ? _value._exercises
          : exercises // ignore: cast_nullable_to_non_nullable
              as List<ExerciseModel>,
    ));
  }
}

/// @nodoc

class _$CoachExerciseStateCreatedBatchImpl
    implements CoachExerciseStateCreatedBatch {
  const _$CoachExerciseStateCreatedBatchImpl(
      final List<ExerciseModel> exercises)
      : _exercises = exercises;

  final List<ExerciseModel> _exercises;
  @override
  List<ExerciseModel> get exercises {
    if (_exercises is EqualUnmodifiableListView) return _exercises;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_exercises);
  }

  @override
  String toString() {
    return 'CoachExerciseState.createdBatch(exercises: $exercises)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CoachExerciseStateCreatedBatchImpl &&
            const DeepCollectionEquality()
                .equals(other._exercises, _exercises));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_exercises));

  /// Create a copy of CoachExerciseState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CoachExerciseStateCreatedBatchImplCopyWith<
          _$CoachExerciseStateCreatedBatchImpl>
      get copyWith => __$$CoachExerciseStateCreatedBatchImplCopyWithImpl<
          _$CoachExerciseStateCreatedBatchImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<ExerciseModel> exercises,
            List<ExerciseModel> filteredExercises)
        loaded,
    required TResult Function(String message) failure,
    required TResult Function(List<ExerciseModel> exercises) createdBatch,
    required TResult Function(List<ExerciseModel> exercises) updatedBatch,
    required TResult Function(ExerciseModel exercise) deleted,
  }) {
    return createdBatch(exercises);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<ExerciseModel> exercises,
            List<ExerciseModel> filteredExercises)?
        loaded,
    TResult? Function(String message)? failure,
    TResult? Function(List<ExerciseModel> exercises)? createdBatch,
    TResult? Function(List<ExerciseModel> exercises)? updatedBatch,
    TResult? Function(ExerciseModel exercise)? deleted,
  }) {
    return createdBatch?.call(exercises);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ExerciseModel> exercises,
            List<ExerciseModel> filteredExercises)?
        loaded,
    TResult Function(String message)? failure,
    TResult Function(List<ExerciseModel> exercises)? createdBatch,
    TResult Function(List<ExerciseModel> exercises)? updatedBatch,
    TResult Function(ExerciseModel exercise)? deleted,
    required TResult orElse(),
  }) {
    if (createdBatch != null) {
      return createdBatch(exercises);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CoachExerciseStateInitial value) initial,
    required TResult Function(CoachExerciseStateLoading value) loading,
    required TResult Function(CoachExerciseStateLoaded value) loaded,
    required TResult Function(CoachExerciseStateFailure value) failure,
    required TResult Function(CoachExerciseStateCreatedBatch value)
        createdBatch,
    required TResult Function(CoachExerciseStateUpdatedBatch value)
        updatedBatch,
    required TResult Function(CoachExerciseStateDeleted value) deleted,
  }) {
    return createdBatch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CoachExerciseStateInitial value)? initial,
    TResult? Function(CoachExerciseStateLoading value)? loading,
    TResult? Function(CoachExerciseStateLoaded value)? loaded,
    TResult? Function(CoachExerciseStateFailure value)? failure,
    TResult? Function(CoachExerciseStateCreatedBatch value)? createdBatch,
    TResult? Function(CoachExerciseStateUpdatedBatch value)? updatedBatch,
    TResult? Function(CoachExerciseStateDeleted value)? deleted,
  }) {
    return createdBatch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CoachExerciseStateInitial value)? initial,
    TResult Function(CoachExerciseStateLoading value)? loading,
    TResult Function(CoachExerciseStateLoaded value)? loaded,
    TResult Function(CoachExerciseStateFailure value)? failure,
    TResult Function(CoachExerciseStateCreatedBatch value)? createdBatch,
    TResult Function(CoachExerciseStateUpdatedBatch value)? updatedBatch,
    TResult Function(CoachExerciseStateDeleted value)? deleted,
    required TResult orElse(),
  }) {
    if (createdBatch != null) {
      return createdBatch(this);
    }
    return orElse();
  }
}

abstract class CoachExerciseStateCreatedBatch implements CoachExerciseState {
  const factory CoachExerciseStateCreatedBatch(
          final List<ExerciseModel> exercises) =
      _$CoachExerciseStateCreatedBatchImpl;

  List<ExerciseModel> get exercises;

  /// Create a copy of CoachExerciseState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CoachExerciseStateCreatedBatchImplCopyWith<
          _$CoachExerciseStateCreatedBatchImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CoachExerciseStateUpdatedBatchImplCopyWith<$Res> {
  factory _$$CoachExerciseStateUpdatedBatchImplCopyWith(
          _$CoachExerciseStateUpdatedBatchImpl value,
          $Res Function(_$CoachExerciseStateUpdatedBatchImpl) then) =
      __$$CoachExerciseStateUpdatedBatchImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<ExerciseModel> exercises});
}

/// @nodoc
class __$$CoachExerciseStateUpdatedBatchImplCopyWithImpl<$Res>
    extends _$CoachExerciseStateCopyWithImpl<$Res,
        _$CoachExerciseStateUpdatedBatchImpl>
    implements _$$CoachExerciseStateUpdatedBatchImplCopyWith<$Res> {
  __$$CoachExerciseStateUpdatedBatchImplCopyWithImpl(
      _$CoachExerciseStateUpdatedBatchImpl _value,
      $Res Function(_$CoachExerciseStateUpdatedBatchImpl) _then)
      : super(_value, _then);

  /// Create a copy of CoachExerciseState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? exercises = null,
  }) {
    return _then(_$CoachExerciseStateUpdatedBatchImpl(
      null == exercises
          ? _value._exercises
          : exercises // ignore: cast_nullable_to_non_nullable
              as List<ExerciseModel>,
    ));
  }
}

/// @nodoc

class _$CoachExerciseStateUpdatedBatchImpl
    implements CoachExerciseStateUpdatedBatch {
  const _$CoachExerciseStateUpdatedBatchImpl(
      final List<ExerciseModel> exercises)
      : _exercises = exercises;

  final List<ExerciseModel> _exercises;
  @override
  List<ExerciseModel> get exercises {
    if (_exercises is EqualUnmodifiableListView) return _exercises;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_exercises);
  }

  @override
  String toString() {
    return 'CoachExerciseState.updatedBatch(exercises: $exercises)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CoachExerciseStateUpdatedBatchImpl &&
            const DeepCollectionEquality()
                .equals(other._exercises, _exercises));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_exercises));

  /// Create a copy of CoachExerciseState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CoachExerciseStateUpdatedBatchImplCopyWith<
          _$CoachExerciseStateUpdatedBatchImpl>
      get copyWith => __$$CoachExerciseStateUpdatedBatchImplCopyWithImpl<
          _$CoachExerciseStateUpdatedBatchImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<ExerciseModel> exercises,
            List<ExerciseModel> filteredExercises)
        loaded,
    required TResult Function(String message) failure,
    required TResult Function(List<ExerciseModel> exercises) createdBatch,
    required TResult Function(List<ExerciseModel> exercises) updatedBatch,
    required TResult Function(ExerciseModel exercise) deleted,
  }) {
    return updatedBatch(exercises);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<ExerciseModel> exercises,
            List<ExerciseModel> filteredExercises)?
        loaded,
    TResult? Function(String message)? failure,
    TResult? Function(List<ExerciseModel> exercises)? createdBatch,
    TResult? Function(List<ExerciseModel> exercises)? updatedBatch,
    TResult? Function(ExerciseModel exercise)? deleted,
  }) {
    return updatedBatch?.call(exercises);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ExerciseModel> exercises,
            List<ExerciseModel> filteredExercises)?
        loaded,
    TResult Function(String message)? failure,
    TResult Function(List<ExerciseModel> exercises)? createdBatch,
    TResult Function(List<ExerciseModel> exercises)? updatedBatch,
    TResult Function(ExerciseModel exercise)? deleted,
    required TResult orElse(),
  }) {
    if (updatedBatch != null) {
      return updatedBatch(exercises);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CoachExerciseStateInitial value) initial,
    required TResult Function(CoachExerciseStateLoading value) loading,
    required TResult Function(CoachExerciseStateLoaded value) loaded,
    required TResult Function(CoachExerciseStateFailure value) failure,
    required TResult Function(CoachExerciseStateCreatedBatch value)
        createdBatch,
    required TResult Function(CoachExerciseStateUpdatedBatch value)
        updatedBatch,
    required TResult Function(CoachExerciseStateDeleted value) deleted,
  }) {
    return updatedBatch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CoachExerciseStateInitial value)? initial,
    TResult? Function(CoachExerciseStateLoading value)? loading,
    TResult? Function(CoachExerciseStateLoaded value)? loaded,
    TResult? Function(CoachExerciseStateFailure value)? failure,
    TResult? Function(CoachExerciseStateCreatedBatch value)? createdBatch,
    TResult? Function(CoachExerciseStateUpdatedBatch value)? updatedBatch,
    TResult? Function(CoachExerciseStateDeleted value)? deleted,
  }) {
    return updatedBatch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CoachExerciseStateInitial value)? initial,
    TResult Function(CoachExerciseStateLoading value)? loading,
    TResult Function(CoachExerciseStateLoaded value)? loaded,
    TResult Function(CoachExerciseStateFailure value)? failure,
    TResult Function(CoachExerciseStateCreatedBatch value)? createdBatch,
    TResult Function(CoachExerciseStateUpdatedBatch value)? updatedBatch,
    TResult Function(CoachExerciseStateDeleted value)? deleted,
    required TResult orElse(),
  }) {
    if (updatedBatch != null) {
      return updatedBatch(this);
    }
    return orElse();
  }
}

abstract class CoachExerciseStateUpdatedBatch implements CoachExerciseState {
  const factory CoachExerciseStateUpdatedBatch(
          final List<ExerciseModel> exercises) =
      _$CoachExerciseStateUpdatedBatchImpl;

  List<ExerciseModel> get exercises;

  /// Create a copy of CoachExerciseState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CoachExerciseStateUpdatedBatchImplCopyWith<
          _$CoachExerciseStateUpdatedBatchImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CoachExerciseStateDeletedImplCopyWith<$Res> {
  factory _$$CoachExerciseStateDeletedImplCopyWith(
          _$CoachExerciseStateDeletedImpl value,
          $Res Function(_$CoachExerciseStateDeletedImpl) then) =
      __$$CoachExerciseStateDeletedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ExerciseModel exercise});

  $ExerciseModelCopyWith<$Res> get exercise;
}

/// @nodoc
class __$$CoachExerciseStateDeletedImplCopyWithImpl<$Res>
    extends _$CoachExerciseStateCopyWithImpl<$Res,
        _$CoachExerciseStateDeletedImpl>
    implements _$$CoachExerciseStateDeletedImplCopyWith<$Res> {
  __$$CoachExerciseStateDeletedImplCopyWithImpl(
      _$CoachExerciseStateDeletedImpl _value,
      $Res Function(_$CoachExerciseStateDeletedImpl) _then)
      : super(_value, _then);

  /// Create a copy of CoachExerciseState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? exercise = null,
  }) {
    return _then(_$CoachExerciseStateDeletedImpl(
      null == exercise
          ? _value.exercise
          : exercise // ignore: cast_nullable_to_non_nullable
              as ExerciseModel,
    ));
  }

  /// Create a copy of CoachExerciseState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ExerciseModelCopyWith<$Res> get exercise {
    return $ExerciseModelCopyWith<$Res>(_value.exercise, (value) {
      return _then(_value.copyWith(exercise: value));
    });
  }
}

/// @nodoc

class _$CoachExerciseStateDeletedImpl implements CoachExerciseStateDeleted {
  const _$CoachExerciseStateDeletedImpl(this.exercise);

  @override
  final ExerciseModel exercise;

  @override
  String toString() {
    return 'CoachExerciseState.deleted(exercise: $exercise)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CoachExerciseStateDeletedImpl &&
            (identical(other.exercise, exercise) ||
                other.exercise == exercise));
  }

  @override
  int get hashCode => Object.hash(runtimeType, exercise);

  /// Create a copy of CoachExerciseState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CoachExerciseStateDeletedImplCopyWith<_$CoachExerciseStateDeletedImpl>
      get copyWith => __$$CoachExerciseStateDeletedImplCopyWithImpl<
          _$CoachExerciseStateDeletedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<ExerciseModel> exercises,
            List<ExerciseModel> filteredExercises)
        loaded,
    required TResult Function(String message) failure,
    required TResult Function(List<ExerciseModel> exercises) createdBatch,
    required TResult Function(List<ExerciseModel> exercises) updatedBatch,
    required TResult Function(ExerciseModel exercise) deleted,
  }) {
    return deleted(exercise);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<ExerciseModel> exercises,
            List<ExerciseModel> filteredExercises)?
        loaded,
    TResult? Function(String message)? failure,
    TResult? Function(List<ExerciseModel> exercises)? createdBatch,
    TResult? Function(List<ExerciseModel> exercises)? updatedBatch,
    TResult? Function(ExerciseModel exercise)? deleted,
  }) {
    return deleted?.call(exercise);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ExerciseModel> exercises,
            List<ExerciseModel> filteredExercises)?
        loaded,
    TResult Function(String message)? failure,
    TResult Function(List<ExerciseModel> exercises)? createdBatch,
    TResult Function(List<ExerciseModel> exercises)? updatedBatch,
    TResult Function(ExerciseModel exercise)? deleted,
    required TResult orElse(),
  }) {
    if (deleted != null) {
      return deleted(exercise);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CoachExerciseStateInitial value) initial,
    required TResult Function(CoachExerciseStateLoading value) loading,
    required TResult Function(CoachExerciseStateLoaded value) loaded,
    required TResult Function(CoachExerciseStateFailure value) failure,
    required TResult Function(CoachExerciseStateCreatedBatch value)
        createdBatch,
    required TResult Function(CoachExerciseStateUpdatedBatch value)
        updatedBatch,
    required TResult Function(CoachExerciseStateDeleted value) deleted,
  }) {
    return deleted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CoachExerciseStateInitial value)? initial,
    TResult? Function(CoachExerciseStateLoading value)? loading,
    TResult? Function(CoachExerciseStateLoaded value)? loaded,
    TResult? Function(CoachExerciseStateFailure value)? failure,
    TResult? Function(CoachExerciseStateCreatedBatch value)? createdBatch,
    TResult? Function(CoachExerciseStateUpdatedBatch value)? updatedBatch,
    TResult? Function(CoachExerciseStateDeleted value)? deleted,
  }) {
    return deleted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CoachExerciseStateInitial value)? initial,
    TResult Function(CoachExerciseStateLoading value)? loading,
    TResult Function(CoachExerciseStateLoaded value)? loaded,
    TResult Function(CoachExerciseStateFailure value)? failure,
    TResult Function(CoachExerciseStateCreatedBatch value)? createdBatch,
    TResult Function(CoachExerciseStateUpdatedBatch value)? updatedBatch,
    TResult Function(CoachExerciseStateDeleted value)? deleted,
    required TResult orElse(),
  }) {
    if (deleted != null) {
      return deleted(this);
    }
    return orElse();
  }
}

abstract class CoachExerciseStateDeleted implements CoachExerciseState {
  const factory CoachExerciseStateDeleted(final ExerciseModel exercise) =
      _$CoachExerciseStateDeletedImpl;

  ExerciseModel get exercise;

  /// Create a copy of CoachExerciseState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CoachExerciseStateDeletedImplCopyWith<_$CoachExerciseStateDeletedImpl>
      get copyWith => throw _privateConstructorUsedError;
}
