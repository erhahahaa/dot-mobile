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
    required TResult Function(_GetExercises value) getExercises,
    required TResult Function(_FilterExercises value) filterExercises,
    required TResult Function(_Clear value) clear,
    required TResult Function(_CreateBatch value) createBatch,
    required TResult Function(_UpdateBatch value) update,
    required TResult Function(_Delete value) delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetExercises value)? getExercises,
    TResult? Function(_FilterExercises value)? filterExercises,
    TResult? Function(_Clear value)? clear,
    TResult? Function(_CreateBatch value)? createBatch,
    TResult? Function(_UpdateBatch value)? update,
    TResult? Function(_Delete value)? delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetExercises value)? getExercises,
    TResult Function(_FilterExercises value)? filterExercises,
    TResult Function(_Clear value)? clear,
    TResult Function(_CreateBatch value)? createBatch,
    TResult Function(_UpdateBatch value)? update,
    TResult Function(_Delete value)? delete,
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
abstract class _$$GetExercisesImplCopyWith<$Res> {
  factory _$$GetExercisesImplCopyWith(
          _$GetExercisesImpl value, $Res Function(_$GetExercisesImpl) then) =
      __$$GetExercisesImplCopyWithImpl<$Res>;
  @useResult
  $Res call({GetAllExerciseParams params});

  $GetAllExerciseParamsCopyWith<$Res> get params;
}

/// @nodoc
class __$$GetExercisesImplCopyWithImpl<$Res>
    extends _$CoachExerciseEventCopyWithImpl<$Res, _$GetExercisesImpl>
    implements _$$GetExercisesImplCopyWith<$Res> {
  __$$GetExercisesImplCopyWithImpl(
      _$GetExercisesImpl _value, $Res Function(_$GetExercisesImpl) _then)
      : super(_value, _then);

  /// Create a copy of CoachExerciseEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? params = null,
  }) {
    return _then(_$GetExercisesImpl(
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

class _$GetExercisesImpl implements _GetExercises {
  const _$GetExercisesImpl(this.params);

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
            other is _$GetExercisesImpl &&
            (identical(other.params, params) || other.params == params));
  }

  @override
  int get hashCode => Object.hash(runtimeType, params);

  /// Create a copy of CoachExerciseEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetExercisesImplCopyWith<_$GetExercisesImpl> get copyWith =>
      __$$GetExercisesImplCopyWithImpl<_$GetExercisesImpl>(this, _$identity);

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
    required TResult Function(_GetExercises value) getExercises,
    required TResult Function(_FilterExercises value) filterExercises,
    required TResult Function(_Clear value) clear,
    required TResult Function(_CreateBatch value) createBatch,
    required TResult Function(_UpdateBatch value) update,
    required TResult Function(_Delete value) delete,
  }) {
    return getExercises(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetExercises value)? getExercises,
    TResult? Function(_FilterExercises value)? filterExercises,
    TResult? Function(_Clear value)? clear,
    TResult? Function(_CreateBatch value)? createBatch,
    TResult? Function(_UpdateBatch value)? update,
    TResult? Function(_Delete value)? delete,
  }) {
    return getExercises?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetExercises value)? getExercises,
    TResult Function(_FilterExercises value)? filterExercises,
    TResult Function(_Clear value)? clear,
    TResult Function(_CreateBatch value)? createBatch,
    TResult Function(_UpdateBatch value)? update,
    TResult Function(_Delete value)? delete,
    required TResult orElse(),
  }) {
    if (getExercises != null) {
      return getExercises(this);
    }
    return orElse();
  }
}

abstract class _GetExercises implements CoachExerciseEvent {
  const factory _GetExercises(final GetAllExerciseParams params) =
      _$GetExercisesImpl;

  GetAllExerciseParams get params;

  /// Create a copy of CoachExerciseEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetExercisesImplCopyWith<_$GetExercisesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FilterExercisesImplCopyWith<$Res> {
  factory _$$FilterExercisesImplCopyWith(_$FilterExercisesImpl value,
          $Res Function(_$FilterExercisesImpl) then) =
      __$$FilterExercisesImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String query});
}

/// @nodoc
class __$$FilterExercisesImplCopyWithImpl<$Res>
    extends _$CoachExerciseEventCopyWithImpl<$Res, _$FilterExercisesImpl>
    implements _$$FilterExercisesImplCopyWith<$Res> {
  __$$FilterExercisesImplCopyWithImpl(
      _$FilterExercisesImpl _value, $Res Function(_$FilterExercisesImpl) _then)
      : super(_value, _then);

  /// Create a copy of CoachExerciseEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
  }) {
    return _then(_$FilterExercisesImpl(
      null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FilterExercisesImpl implements _FilterExercises {
  const _$FilterExercisesImpl(this.query);

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
            other is _$FilterExercisesImpl &&
            (identical(other.query, query) || other.query == query));
  }

  @override
  int get hashCode => Object.hash(runtimeType, query);

  /// Create a copy of CoachExerciseEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FilterExercisesImplCopyWith<_$FilterExercisesImpl> get copyWith =>
      __$$FilterExercisesImplCopyWithImpl<_$FilterExercisesImpl>(
          this, _$identity);

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
    required TResult Function(_GetExercises value) getExercises,
    required TResult Function(_FilterExercises value) filterExercises,
    required TResult Function(_Clear value) clear,
    required TResult Function(_CreateBatch value) createBatch,
    required TResult Function(_UpdateBatch value) update,
    required TResult Function(_Delete value) delete,
  }) {
    return filterExercises(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetExercises value)? getExercises,
    TResult? Function(_FilterExercises value)? filterExercises,
    TResult? Function(_Clear value)? clear,
    TResult? Function(_CreateBatch value)? createBatch,
    TResult? Function(_UpdateBatch value)? update,
    TResult? Function(_Delete value)? delete,
  }) {
    return filterExercises?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetExercises value)? getExercises,
    TResult Function(_FilterExercises value)? filterExercises,
    TResult Function(_Clear value)? clear,
    TResult Function(_CreateBatch value)? createBatch,
    TResult Function(_UpdateBatch value)? update,
    TResult Function(_Delete value)? delete,
    required TResult orElse(),
  }) {
    if (filterExercises != null) {
      return filterExercises(this);
    }
    return orElse();
  }
}

abstract class _FilterExercises implements CoachExerciseEvent {
  const factory _FilterExercises(final String query) = _$FilterExercisesImpl;

  String get query;

  /// Create a copy of CoachExerciseEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FilterExercisesImplCopyWith<_$FilterExercisesImpl> get copyWith =>
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
    extends _$CoachExerciseEventCopyWithImpl<$Res, _$ClearImpl>
    implements _$$ClearImplCopyWith<$Res> {
  __$$ClearImplCopyWithImpl(
      _$ClearImpl _value, $Res Function(_$ClearImpl) _then)
      : super(_value, _then);

  /// Create a copy of CoachExerciseEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ClearImpl implements _Clear {
  const _$ClearImpl();

  @override
  String toString() {
    return 'CoachExerciseEvent.clear()';
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
    required TResult Function(_GetExercises value) getExercises,
    required TResult Function(_FilterExercises value) filterExercises,
    required TResult Function(_Clear value) clear,
    required TResult Function(_CreateBatch value) createBatch,
    required TResult Function(_UpdateBatch value) update,
    required TResult Function(_Delete value) delete,
  }) {
    return clear(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetExercises value)? getExercises,
    TResult? Function(_FilterExercises value)? filterExercises,
    TResult? Function(_Clear value)? clear,
    TResult? Function(_CreateBatch value)? createBatch,
    TResult? Function(_UpdateBatch value)? update,
    TResult? Function(_Delete value)? delete,
  }) {
    return clear?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetExercises value)? getExercises,
    TResult Function(_FilterExercises value)? filterExercises,
    TResult Function(_Clear value)? clear,
    TResult Function(_CreateBatch value)? createBatch,
    TResult Function(_UpdateBatch value)? update,
    TResult Function(_Delete value)? delete,
    required TResult orElse(),
  }) {
    if (clear != null) {
      return clear(this);
    }
    return orElse();
  }
}

abstract class _Clear implements CoachExerciseEvent {
  const factory _Clear() = _$ClearImpl;
}

/// @nodoc
abstract class _$$CreateBatchImplCopyWith<$Res> {
  factory _$$CreateBatchImplCopyWith(
          _$CreateBatchImpl value, $Res Function(_$CreateBatchImpl) then) =
      __$$CreateBatchImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<CreateExerciseParams> params});
}

/// @nodoc
class __$$CreateBatchImplCopyWithImpl<$Res>
    extends _$CoachExerciseEventCopyWithImpl<$Res, _$CreateBatchImpl>
    implements _$$CreateBatchImplCopyWith<$Res> {
  __$$CreateBatchImplCopyWithImpl(
      _$CreateBatchImpl _value, $Res Function(_$CreateBatchImpl) _then)
      : super(_value, _then);

  /// Create a copy of CoachExerciseEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? params = null,
  }) {
    return _then(_$CreateBatchImpl(
      null == params
          ? _value._params
          : params // ignore: cast_nullable_to_non_nullable
              as List<CreateExerciseParams>,
    ));
  }
}

/// @nodoc

class _$CreateBatchImpl implements _CreateBatch {
  const _$CreateBatchImpl(final List<CreateExerciseParams> params)
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
            other is _$CreateBatchImpl &&
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
  _$$CreateBatchImplCopyWith<_$CreateBatchImpl> get copyWith =>
      __$$CreateBatchImplCopyWithImpl<_$CreateBatchImpl>(this, _$identity);

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
    required TResult Function(_GetExercises value) getExercises,
    required TResult Function(_FilterExercises value) filterExercises,
    required TResult Function(_Clear value) clear,
    required TResult Function(_CreateBatch value) createBatch,
    required TResult Function(_UpdateBatch value) update,
    required TResult Function(_Delete value) delete,
  }) {
    return createBatch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetExercises value)? getExercises,
    TResult? Function(_FilterExercises value)? filterExercises,
    TResult? Function(_Clear value)? clear,
    TResult? Function(_CreateBatch value)? createBatch,
    TResult? Function(_UpdateBatch value)? update,
    TResult? Function(_Delete value)? delete,
  }) {
    return createBatch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetExercises value)? getExercises,
    TResult Function(_FilterExercises value)? filterExercises,
    TResult Function(_Clear value)? clear,
    TResult Function(_CreateBatch value)? createBatch,
    TResult Function(_UpdateBatch value)? update,
    TResult Function(_Delete value)? delete,
    required TResult orElse(),
  }) {
    if (createBatch != null) {
      return createBatch(this);
    }
    return orElse();
  }
}

abstract class _CreateBatch implements CoachExerciseEvent {
  const factory _CreateBatch(final List<CreateExerciseParams> params) =
      _$CreateBatchImpl;

  List<CreateExerciseParams> get params;

  /// Create a copy of CoachExerciseEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateBatchImplCopyWith<_$CreateBatchImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateBatchImplCopyWith<$Res> {
  factory _$$UpdateBatchImplCopyWith(
          _$UpdateBatchImpl value, $Res Function(_$UpdateBatchImpl) then) =
      __$$UpdateBatchImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<UpdateExerciseParams> params});
}

/// @nodoc
class __$$UpdateBatchImplCopyWithImpl<$Res>
    extends _$CoachExerciseEventCopyWithImpl<$Res, _$UpdateBatchImpl>
    implements _$$UpdateBatchImplCopyWith<$Res> {
  __$$UpdateBatchImplCopyWithImpl(
      _$UpdateBatchImpl _value, $Res Function(_$UpdateBatchImpl) _then)
      : super(_value, _then);

  /// Create a copy of CoachExerciseEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? params = null,
  }) {
    return _then(_$UpdateBatchImpl(
      null == params
          ? _value._params
          : params // ignore: cast_nullable_to_non_nullable
              as List<UpdateExerciseParams>,
    ));
  }
}

/// @nodoc

class _$UpdateBatchImpl implements _UpdateBatch {
  const _$UpdateBatchImpl(final List<UpdateExerciseParams> params)
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
            other is _$UpdateBatchImpl &&
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
  _$$UpdateBatchImplCopyWith<_$UpdateBatchImpl> get copyWith =>
      __$$UpdateBatchImplCopyWithImpl<_$UpdateBatchImpl>(this, _$identity);

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
    required TResult Function(_GetExercises value) getExercises,
    required TResult Function(_FilterExercises value) filterExercises,
    required TResult Function(_Clear value) clear,
    required TResult Function(_CreateBatch value) createBatch,
    required TResult Function(_UpdateBatch value) update,
    required TResult Function(_Delete value) delete,
  }) {
    return update(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetExercises value)? getExercises,
    TResult? Function(_FilterExercises value)? filterExercises,
    TResult? Function(_Clear value)? clear,
    TResult? Function(_CreateBatch value)? createBatch,
    TResult? Function(_UpdateBatch value)? update,
    TResult? Function(_Delete value)? delete,
  }) {
    return update?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetExercises value)? getExercises,
    TResult Function(_FilterExercises value)? filterExercises,
    TResult Function(_Clear value)? clear,
    TResult Function(_CreateBatch value)? createBatch,
    TResult Function(_UpdateBatch value)? update,
    TResult Function(_Delete value)? delete,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(this);
    }
    return orElse();
  }
}

abstract class _UpdateBatch implements CoachExerciseEvent {
  const factory _UpdateBatch(final List<UpdateExerciseParams> params) =
      _$UpdateBatchImpl;

  List<UpdateExerciseParams> get params;

  /// Create a copy of CoachExerciseEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateBatchImplCopyWith<_$UpdateBatchImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteImplCopyWith<$Res> {
  factory _$$DeleteImplCopyWith(
          _$DeleteImpl value, $Res Function(_$DeleteImpl) then) =
      __$$DeleteImplCopyWithImpl<$Res>;
  @useResult
  $Res call({DeleteExerciseParams params});

  $DeleteExerciseParamsCopyWith<$Res> get params;
}

/// @nodoc
class __$$DeleteImplCopyWithImpl<$Res>
    extends _$CoachExerciseEventCopyWithImpl<$Res, _$DeleteImpl>
    implements _$$DeleteImplCopyWith<$Res> {
  __$$DeleteImplCopyWithImpl(
      _$DeleteImpl _value, $Res Function(_$DeleteImpl) _then)
      : super(_value, _then);

  /// Create a copy of CoachExerciseEvent
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

class _$DeleteImpl implements _Delete {
  const _$DeleteImpl(this.params);

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
            other is _$DeleteImpl &&
            (identical(other.params, params) || other.params == params));
  }

  @override
  int get hashCode => Object.hash(runtimeType, params);

  /// Create a copy of CoachExerciseEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteImplCopyWith<_$DeleteImpl> get copyWith =>
      __$$DeleteImplCopyWithImpl<_$DeleteImpl>(this, _$identity);

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
    required TResult Function(_GetExercises value) getExercises,
    required TResult Function(_FilterExercises value) filterExercises,
    required TResult Function(_Clear value) clear,
    required TResult Function(_CreateBatch value) createBatch,
    required TResult Function(_UpdateBatch value) update,
    required TResult Function(_Delete value) delete,
  }) {
    return delete(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetExercises value)? getExercises,
    TResult? Function(_FilterExercises value)? filterExercises,
    TResult? Function(_Clear value)? clear,
    TResult? Function(_CreateBatch value)? createBatch,
    TResult? Function(_UpdateBatch value)? update,
    TResult? Function(_Delete value)? delete,
  }) {
    return delete?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetExercises value)? getExercises,
    TResult Function(_FilterExercises value)? filterExercises,
    TResult Function(_Clear value)? clear,
    TResult Function(_CreateBatch value)? createBatch,
    TResult Function(_UpdateBatch value)? update,
    TResult Function(_Delete value)? delete,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete(this);
    }
    return orElse();
  }
}

abstract class _Delete implements CoachExerciseEvent {
  const factory _Delete(final DeleteExerciseParams params) = _$DeleteImpl;

  DeleteExerciseParams get params;

  /// Create a copy of CoachExerciseEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeleteImplCopyWith<_$DeleteImpl> get copyWith =>
      throw _privateConstructorUsedError;
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
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Failure value) failure,
    required TResult Function(_CreatedBatch value) createdBatch,
    required TResult Function(_UpdatedBatch value) updatedBatch,
    required TResult Function(_Deleted value) deleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_CreatedBatch value)? createdBatch,
    TResult? Function(_UpdatedBatch value)? updatedBatch,
    TResult? Function(_Deleted value)? deleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Failure value)? failure,
    TResult Function(_CreatedBatch value)? createdBatch,
    TResult Function(_UpdatedBatch value)? updatedBatch,
    TResult Function(_Deleted value)? deleted,
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
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$CoachExerciseStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of CoachExerciseState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'CoachExerciseState.initial()';
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
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Failure value) failure,
    required TResult Function(_CreatedBatch value) createdBatch,
    required TResult Function(_UpdatedBatch value) updatedBatch,
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
    TResult? Function(_CreatedBatch value)? createdBatch,
    TResult? Function(_UpdatedBatch value)? updatedBatch,
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
    TResult Function(_CreatedBatch value)? createdBatch,
    TResult Function(_UpdatedBatch value)? updatedBatch,
    TResult Function(_Deleted value)? deleted,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements CoachExerciseState {
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
    extends _$CoachExerciseStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of CoachExerciseState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'CoachExerciseState.loading()';
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
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Failure value) failure,
    required TResult Function(_CreatedBatch value) createdBatch,
    required TResult Function(_UpdatedBatch value) updatedBatch,
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
    TResult? Function(_CreatedBatch value)? createdBatch,
    TResult? Function(_UpdatedBatch value)? updatedBatch,
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
    TResult Function(_CreatedBatch value)? createdBatch,
    TResult Function(_UpdatedBatch value)? updatedBatch,
    TResult Function(_Deleted value)? deleted,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements CoachExerciseState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$LoadedImplCopyWith<$Res> {
  factory _$$LoadedImplCopyWith(
          _$LoadedImpl value, $Res Function(_$LoadedImpl) then) =
      __$$LoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {List<ExerciseModel> exercises, List<ExerciseModel> filteredExercises});
}

/// @nodoc
class __$$LoadedImplCopyWithImpl<$Res>
    extends _$CoachExerciseStateCopyWithImpl<$Res, _$LoadedImpl>
    implements _$$LoadedImplCopyWith<$Res> {
  __$$LoadedImplCopyWithImpl(
      _$LoadedImpl _value, $Res Function(_$LoadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of CoachExerciseState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? exercises = null,
    Object? filteredExercises = null,
  }) {
    return _then(_$LoadedImpl(
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

class _$LoadedImpl implements _Loaded {
  const _$LoadedImpl(
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
            other is _$LoadedImpl &&
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
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      __$$LoadedImplCopyWithImpl<_$LoadedImpl>(this, _$identity);

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
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Failure value) failure,
    required TResult Function(_CreatedBatch value) createdBatch,
    required TResult Function(_UpdatedBatch value) updatedBatch,
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
    TResult? Function(_CreatedBatch value)? createdBatch,
    TResult? Function(_UpdatedBatch value)? updatedBatch,
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
    TResult Function(_CreatedBatch value)? createdBatch,
    TResult Function(_UpdatedBatch value)? updatedBatch,
    TResult Function(_Deleted value)? deleted,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded implements CoachExerciseState {
  const factory _Loaded(
      {required final List<ExerciseModel> exercises,
      required final List<ExerciseModel> filteredExercises}) = _$LoadedImpl;

  List<ExerciseModel> get exercises;
  List<ExerciseModel> get filteredExercises;

  /// Create a copy of CoachExerciseState
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
    extends _$CoachExerciseStateCopyWithImpl<$Res, _$FailureImpl>
    implements _$$FailureImplCopyWith<$Res> {
  __$$FailureImplCopyWithImpl(
      _$FailureImpl _value, $Res Function(_$FailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of CoachExerciseState
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
    return 'CoachExerciseState.failure(message: $message)';
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

  /// Create a copy of CoachExerciseState
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
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Failure value) failure,
    required TResult Function(_CreatedBatch value) createdBatch,
    required TResult Function(_UpdatedBatch value) updatedBatch,
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
    TResult? Function(_CreatedBatch value)? createdBatch,
    TResult? Function(_UpdatedBatch value)? updatedBatch,
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
    TResult Function(_CreatedBatch value)? createdBatch,
    TResult Function(_UpdatedBatch value)? updatedBatch,
    TResult Function(_Deleted value)? deleted,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _Failure implements CoachExerciseState {
  const factory _Failure(final String message) = _$FailureImpl;

  String get message;

  /// Create a copy of CoachExerciseState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FailureImplCopyWith<_$FailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CreatedBatchImplCopyWith<$Res> {
  factory _$$CreatedBatchImplCopyWith(
          _$CreatedBatchImpl value, $Res Function(_$CreatedBatchImpl) then) =
      __$$CreatedBatchImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<ExerciseModel> exercises});
}

/// @nodoc
class __$$CreatedBatchImplCopyWithImpl<$Res>
    extends _$CoachExerciseStateCopyWithImpl<$Res, _$CreatedBatchImpl>
    implements _$$CreatedBatchImplCopyWith<$Res> {
  __$$CreatedBatchImplCopyWithImpl(
      _$CreatedBatchImpl _value, $Res Function(_$CreatedBatchImpl) _then)
      : super(_value, _then);

  /// Create a copy of CoachExerciseState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? exercises = null,
  }) {
    return _then(_$CreatedBatchImpl(
      null == exercises
          ? _value._exercises
          : exercises // ignore: cast_nullable_to_non_nullable
              as List<ExerciseModel>,
    ));
  }
}

/// @nodoc

class _$CreatedBatchImpl implements _CreatedBatch {
  const _$CreatedBatchImpl(final List<ExerciseModel> exercises)
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
            other is _$CreatedBatchImpl &&
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
  _$$CreatedBatchImplCopyWith<_$CreatedBatchImpl> get copyWith =>
      __$$CreatedBatchImplCopyWithImpl<_$CreatedBatchImpl>(this, _$identity);

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
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Failure value) failure,
    required TResult Function(_CreatedBatch value) createdBatch,
    required TResult Function(_UpdatedBatch value) updatedBatch,
    required TResult Function(_Deleted value) deleted,
  }) {
    return createdBatch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_CreatedBatch value)? createdBatch,
    TResult? Function(_UpdatedBatch value)? updatedBatch,
    TResult? Function(_Deleted value)? deleted,
  }) {
    return createdBatch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Failure value)? failure,
    TResult Function(_CreatedBatch value)? createdBatch,
    TResult Function(_UpdatedBatch value)? updatedBatch,
    TResult Function(_Deleted value)? deleted,
    required TResult orElse(),
  }) {
    if (createdBatch != null) {
      return createdBatch(this);
    }
    return orElse();
  }
}

abstract class _CreatedBatch implements CoachExerciseState {
  const factory _CreatedBatch(final List<ExerciseModel> exercises) =
      _$CreatedBatchImpl;

  List<ExerciseModel> get exercises;

  /// Create a copy of CoachExerciseState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreatedBatchImplCopyWith<_$CreatedBatchImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdatedBatchImplCopyWith<$Res> {
  factory _$$UpdatedBatchImplCopyWith(
          _$UpdatedBatchImpl value, $Res Function(_$UpdatedBatchImpl) then) =
      __$$UpdatedBatchImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<ExerciseModel> exercises});
}

/// @nodoc
class __$$UpdatedBatchImplCopyWithImpl<$Res>
    extends _$CoachExerciseStateCopyWithImpl<$Res, _$UpdatedBatchImpl>
    implements _$$UpdatedBatchImplCopyWith<$Res> {
  __$$UpdatedBatchImplCopyWithImpl(
      _$UpdatedBatchImpl _value, $Res Function(_$UpdatedBatchImpl) _then)
      : super(_value, _then);

  /// Create a copy of CoachExerciseState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? exercises = null,
  }) {
    return _then(_$UpdatedBatchImpl(
      null == exercises
          ? _value._exercises
          : exercises // ignore: cast_nullable_to_non_nullable
              as List<ExerciseModel>,
    ));
  }
}

/// @nodoc

class _$UpdatedBatchImpl implements _UpdatedBatch {
  const _$UpdatedBatchImpl(final List<ExerciseModel> exercises)
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
            other is _$UpdatedBatchImpl &&
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
  _$$UpdatedBatchImplCopyWith<_$UpdatedBatchImpl> get copyWith =>
      __$$UpdatedBatchImplCopyWithImpl<_$UpdatedBatchImpl>(this, _$identity);

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
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Failure value) failure,
    required TResult Function(_CreatedBatch value) createdBatch,
    required TResult Function(_UpdatedBatch value) updatedBatch,
    required TResult Function(_Deleted value) deleted,
  }) {
    return updatedBatch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_CreatedBatch value)? createdBatch,
    TResult? Function(_UpdatedBatch value)? updatedBatch,
    TResult? Function(_Deleted value)? deleted,
  }) {
    return updatedBatch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Failure value)? failure,
    TResult Function(_CreatedBatch value)? createdBatch,
    TResult Function(_UpdatedBatch value)? updatedBatch,
    TResult Function(_Deleted value)? deleted,
    required TResult orElse(),
  }) {
    if (updatedBatch != null) {
      return updatedBatch(this);
    }
    return orElse();
  }
}

abstract class _UpdatedBatch implements CoachExerciseState {
  const factory _UpdatedBatch(final List<ExerciseModel> exercises) =
      _$UpdatedBatchImpl;

  List<ExerciseModel> get exercises;

  /// Create a copy of CoachExerciseState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdatedBatchImplCopyWith<_$UpdatedBatchImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeletedImplCopyWith<$Res> {
  factory _$$DeletedImplCopyWith(
          _$DeletedImpl value, $Res Function(_$DeletedImpl) then) =
      __$$DeletedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ExerciseModel exercise});

  $ExerciseModelCopyWith<$Res> get exercise;
}

/// @nodoc
class __$$DeletedImplCopyWithImpl<$Res>
    extends _$CoachExerciseStateCopyWithImpl<$Res, _$DeletedImpl>
    implements _$$DeletedImplCopyWith<$Res> {
  __$$DeletedImplCopyWithImpl(
      _$DeletedImpl _value, $Res Function(_$DeletedImpl) _then)
      : super(_value, _then);

  /// Create a copy of CoachExerciseState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? exercise = null,
  }) {
    return _then(_$DeletedImpl(
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

class _$DeletedImpl implements _Deleted {
  const _$DeletedImpl(this.exercise);

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
            other is _$DeletedImpl &&
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
  _$$DeletedImplCopyWith<_$DeletedImpl> get copyWith =>
      __$$DeletedImplCopyWithImpl<_$DeletedImpl>(this, _$identity);

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
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Failure value) failure,
    required TResult Function(_CreatedBatch value) createdBatch,
    required TResult Function(_UpdatedBatch value) updatedBatch,
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
    TResult? Function(_CreatedBatch value)? createdBatch,
    TResult? Function(_UpdatedBatch value)? updatedBatch,
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
    TResult Function(_CreatedBatch value)? createdBatch,
    TResult Function(_UpdatedBatch value)? updatedBatch,
    TResult Function(_Deleted value)? deleted,
    required TResult orElse(),
  }) {
    if (deleted != null) {
      return deleted(this);
    }
    return orElse();
  }
}

abstract class _Deleted implements CoachExerciseState {
  const factory _Deleted(final ExerciseModel exercise) = _$DeletedImpl;

  ExerciseModel get exercise;

  /// Create a copy of CoachExerciseState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeletedImplCopyWith<_$DeletedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
