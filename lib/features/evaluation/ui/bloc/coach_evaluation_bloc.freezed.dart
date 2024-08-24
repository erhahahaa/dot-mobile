// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'coach_evaluation_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CoachEvaluationEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(GetAllEvaluationParams params) getEvaluations,
    required TResult Function(String query) filterEvaluations,
    required TResult Function() clear,
    required TResult Function(CreateEvaluationParams params) create,
    required TResult Function(UpdateEvaluationParams params) update,
    required TResult Function(DeleteEvaluationParams params) delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(GetAllEvaluationParams params)? getEvaluations,
    TResult? Function(String query)? filterEvaluations,
    TResult? Function()? clear,
    TResult? Function(CreateEvaluationParams params)? create,
    TResult? Function(UpdateEvaluationParams params)? update,
    TResult? Function(DeleteEvaluationParams params)? delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GetAllEvaluationParams params)? getEvaluations,
    TResult Function(String query)? filterEvaluations,
    TResult Function()? clear,
    TResult Function(CreateEvaluationParams params)? create,
    TResult Function(UpdateEvaluationParams params)? update,
    TResult Function(DeleteEvaluationParams params)? delete,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CoachEvaluationEventGetEvaluations value)
        getEvaluations,
    required TResult Function(CoachEvaluationEventFilterEvaluations value)
        filterEvaluations,
    required TResult Function(CoachEvaluationEventClear value) clear,
    required TResult Function(CoachEvaluationEventCreate value) create,
    required TResult Function(CoachEvaluationEventUpdate value) update,
    required TResult Function(CoachEvaluationEventDelete value) delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CoachEvaluationEventGetEvaluations value)? getEvaluations,
    TResult? Function(CoachEvaluationEventFilterEvaluations value)?
        filterEvaluations,
    TResult? Function(CoachEvaluationEventClear value)? clear,
    TResult? Function(CoachEvaluationEventCreate value)? create,
    TResult? Function(CoachEvaluationEventUpdate value)? update,
    TResult? Function(CoachEvaluationEventDelete value)? delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CoachEvaluationEventGetEvaluations value)? getEvaluations,
    TResult Function(CoachEvaluationEventFilterEvaluations value)?
        filterEvaluations,
    TResult Function(CoachEvaluationEventClear value)? clear,
    TResult Function(CoachEvaluationEventCreate value)? create,
    TResult Function(CoachEvaluationEventUpdate value)? update,
    TResult Function(CoachEvaluationEventDelete value)? delete,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CoachEvaluationEventCopyWith<$Res> {
  factory $CoachEvaluationEventCopyWith(CoachEvaluationEvent value,
          $Res Function(CoachEvaluationEvent) then) =
      _$CoachEvaluationEventCopyWithImpl<$Res, CoachEvaluationEvent>;
}

/// @nodoc
class _$CoachEvaluationEventCopyWithImpl<$Res,
        $Val extends CoachEvaluationEvent>
    implements $CoachEvaluationEventCopyWith<$Res> {
  _$CoachEvaluationEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CoachEvaluationEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$CoachEvaluationEventGetEvaluationsImplCopyWith<$Res> {
  factory _$$CoachEvaluationEventGetEvaluationsImplCopyWith(
          _$CoachEvaluationEventGetEvaluationsImpl value,
          $Res Function(_$CoachEvaluationEventGetEvaluationsImpl) then) =
      __$$CoachEvaluationEventGetEvaluationsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({GetAllEvaluationParams params});

  $GetAllEvaluationParamsCopyWith<$Res> get params;
}

/// @nodoc
class __$$CoachEvaluationEventGetEvaluationsImplCopyWithImpl<$Res>
    extends _$CoachEvaluationEventCopyWithImpl<$Res,
        _$CoachEvaluationEventGetEvaluationsImpl>
    implements _$$CoachEvaluationEventGetEvaluationsImplCopyWith<$Res> {
  __$$CoachEvaluationEventGetEvaluationsImplCopyWithImpl(
      _$CoachEvaluationEventGetEvaluationsImpl _value,
      $Res Function(_$CoachEvaluationEventGetEvaluationsImpl) _then)
      : super(_value, _then);

  /// Create a copy of CoachEvaluationEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? params = null,
  }) {
    return _then(_$CoachEvaluationEventGetEvaluationsImpl(
      null == params
          ? _value.params
          : params // ignore: cast_nullable_to_non_nullable
              as GetAllEvaluationParams,
    ));
  }

  /// Create a copy of CoachEvaluationEvent
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

class _$CoachEvaluationEventGetEvaluationsImpl
    implements CoachEvaluationEventGetEvaluations {
  const _$CoachEvaluationEventGetEvaluationsImpl(this.params);

  @override
  final GetAllEvaluationParams params;

  @override
  String toString() {
    return 'CoachEvaluationEvent.getEvaluations(params: $params)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CoachEvaluationEventGetEvaluationsImpl &&
            (identical(other.params, params) || other.params == params));
  }

  @override
  int get hashCode => Object.hash(runtimeType, params);

  /// Create a copy of CoachEvaluationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CoachEvaluationEventGetEvaluationsImplCopyWith<
          _$CoachEvaluationEventGetEvaluationsImpl>
      get copyWith => __$$CoachEvaluationEventGetEvaluationsImplCopyWithImpl<
          _$CoachEvaluationEventGetEvaluationsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(GetAllEvaluationParams params) getEvaluations,
    required TResult Function(String query) filterEvaluations,
    required TResult Function() clear,
    required TResult Function(CreateEvaluationParams params) create,
    required TResult Function(UpdateEvaluationParams params) update,
    required TResult Function(DeleteEvaluationParams params) delete,
  }) {
    return getEvaluations(params);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(GetAllEvaluationParams params)? getEvaluations,
    TResult? Function(String query)? filterEvaluations,
    TResult? Function()? clear,
    TResult? Function(CreateEvaluationParams params)? create,
    TResult? Function(UpdateEvaluationParams params)? update,
    TResult? Function(DeleteEvaluationParams params)? delete,
  }) {
    return getEvaluations?.call(params);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GetAllEvaluationParams params)? getEvaluations,
    TResult Function(String query)? filterEvaluations,
    TResult Function()? clear,
    TResult Function(CreateEvaluationParams params)? create,
    TResult Function(UpdateEvaluationParams params)? update,
    TResult Function(DeleteEvaluationParams params)? delete,
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
    required TResult Function(CoachEvaluationEventGetEvaluations value)
        getEvaluations,
    required TResult Function(CoachEvaluationEventFilterEvaluations value)
        filterEvaluations,
    required TResult Function(CoachEvaluationEventClear value) clear,
    required TResult Function(CoachEvaluationEventCreate value) create,
    required TResult Function(CoachEvaluationEventUpdate value) update,
    required TResult Function(CoachEvaluationEventDelete value) delete,
  }) {
    return getEvaluations(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CoachEvaluationEventGetEvaluations value)? getEvaluations,
    TResult? Function(CoachEvaluationEventFilterEvaluations value)?
        filterEvaluations,
    TResult? Function(CoachEvaluationEventClear value)? clear,
    TResult? Function(CoachEvaluationEventCreate value)? create,
    TResult? Function(CoachEvaluationEventUpdate value)? update,
    TResult? Function(CoachEvaluationEventDelete value)? delete,
  }) {
    return getEvaluations?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CoachEvaluationEventGetEvaluations value)? getEvaluations,
    TResult Function(CoachEvaluationEventFilterEvaluations value)?
        filterEvaluations,
    TResult Function(CoachEvaluationEventClear value)? clear,
    TResult Function(CoachEvaluationEventCreate value)? create,
    TResult Function(CoachEvaluationEventUpdate value)? update,
    TResult Function(CoachEvaluationEventDelete value)? delete,
    required TResult orElse(),
  }) {
    if (getEvaluations != null) {
      return getEvaluations(this);
    }
    return orElse();
  }
}

abstract class CoachEvaluationEventGetEvaluations
    implements CoachEvaluationEvent {
  const factory CoachEvaluationEventGetEvaluations(
          final GetAllEvaluationParams params) =
      _$CoachEvaluationEventGetEvaluationsImpl;

  GetAllEvaluationParams get params;

  /// Create a copy of CoachEvaluationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CoachEvaluationEventGetEvaluationsImplCopyWith<
          _$CoachEvaluationEventGetEvaluationsImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CoachEvaluationEventFilterEvaluationsImplCopyWith<$Res> {
  factory _$$CoachEvaluationEventFilterEvaluationsImplCopyWith(
          _$CoachEvaluationEventFilterEvaluationsImpl value,
          $Res Function(_$CoachEvaluationEventFilterEvaluationsImpl) then) =
      __$$CoachEvaluationEventFilterEvaluationsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String query});
}

/// @nodoc
class __$$CoachEvaluationEventFilterEvaluationsImplCopyWithImpl<$Res>
    extends _$CoachEvaluationEventCopyWithImpl<$Res,
        _$CoachEvaluationEventFilterEvaluationsImpl>
    implements _$$CoachEvaluationEventFilterEvaluationsImplCopyWith<$Res> {
  __$$CoachEvaluationEventFilterEvaluationsImplCopyWithImpl(
      _$CoachEvaluationEventFilterEvaluationsImpl _value,
      $Res Function(_$CoachEvaluationEventFilterEvaluationsImpl) _then)
      : super(_value, _then);

  /// Create a copy of CoachEvaluationEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
  }) {
    return _then(_$CoachEvaluationEventFilterEvaluationsImpl(
      null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CoachEvaluationEventFilterEvaluationsImpl
    implements CoachEvaluationEventFilterEvaluations {
  const _$CoachEvaluationEventFilterEvaluationsImpl(this.query);

  @override
  final String query;

  @override
  String toString() {
    return 'CoachEvaluationEvent.filterEvaluations(query: $query)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CoachEvaluationEventFilterEvaluationsImpl &&
            (identical(other.query, query) || other.query == query));
  }

  @override
  int get hashCode => Object.hash(runtimeType, query);

  /// Create a copy of CoachEvaluationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CoachEvaluationEventFilterEvaluationsImplCopyWith<
          _$CoachEvaluationEventFilterEvaluationsImpl>
      get copyWith => __$$CoachEvaluationEventFilterEvaluationsImplCopyWithImpl<
          _$CoachEvaluationEventFilterEvaluationsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(GetAllEvaluationParams params) getEvaluations,
    required TResult Function(String query) filterEvaluations,
    required TResult Function() clear,
    required TResult Function(CreateEvaluationParams params) create,
    required TResult Function(UpdateEvaluationParams params) update,
    required TResult Function(DeleteEvaluationParams params) delete,
  }) {
    return filterEvaluations(query);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(GetAllEvaluationParams params)? getEvaluations,
    TResult? Function(String query)? filterEvaluations,
    TResult? Function()? clear,
    TResult? Function(CreateEvaluationParams params)? create,
    TResult? Function(UpdateEvaluationParams params)? update,
    TResult? Function(DeleteEvaluationParams params)? delete,
  }) {
    return filterEvaluations?.call(query);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GetAllEvaluationParams params)? getEvaluations,
    TResult Function(String query)? filterEvaluations,
    TResult Function()? clear,
    TResult Function(CreateEvaluationParams params)? create,
    TResult Function(UpdateEvaluationParams params)? update,
    TResult Function(DeleteEvaluationParams params)? delete,
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
    required TResult Function(CoachEvaluationEventGetEvaluations value)
        getEvaluations,
    required TResult Function(CoachEvaluationEventFilterEvaluations value)
        filterEvaluations,
    required TResult Function(CoachEvaluationEventClear value) clear,
    required TResult Function(CoachEvaluationEventCreate value) create,
    required TResult Function(CoachEvaluationEventUpdate value) update,
    required TResult Function(CoachEvaluationEventDelete value) delete,
  }) {
    return filterEvaluations(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CoachEvaluationEventGetEvaluations value)? getEvaluations,
    TResult? Function(CoachEvaluationEventFilterEvaluations value)?
        filterEvaluations,
    TResult? Function(CoachEvaluationEventClear value)? clear,
    TResult? Function(CoachEvaluationEventCreate value)? create,
    TResult? Function(CoachEvaluationEventUpdate value)? update,
    TResult? Function(CoachEvaluationEventDelete value)? delete,
  }) {
    return filterEvaluations?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CoachEvaluationEventGetEvaluations value)? getEvaluations,
    TResult Function(CoachEvaluationEventFilterEvaluations value)?
        filterEvaluations,
    TResult Function(CoachEvaluationEventClear value)? clear,
    TResult Function(CoachEvaluationEventCreate value)? create,
    TResult Function(CoachEvaluationEventUpdate value)? update,
    TResult Function(CoachEvaluationEventDelete value)? delete,
    required TResult orElse(),
  }) {
    if (filterEvaluations != null) {
      return filterEvaluations(this);
    }
    return orElse();
  }
}

abstract class CoachEvaluationEventFilterEvaluations
    implements CoachEvaluationEvent {
  const factory CoachEvaluationEventFilterEvaluations(final String query) =
      _$CoachEvaluationEventFilterEvaluationsImpl;

  String get query;

  /// Create a copy of CoachEvaluationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CoachEvaluationEventFilterEvaluationsImplCopyWith<
          _$CoachEvaluationEventFilterEvaluationsImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CoachEvaluationEventClearImplCopyWith<$Res> {
  factory _$$CoachEvaluationEventClearImplCopyWith(
          _$CoachEvaluationEventClearImpl value,
          $Res Function(_$CoachEvaluationEventClearImpl) then) =
      __$$CoachEvaluationEventClearImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CoachEvaluationEventClearImplCopyWithImpl<$Res>
    extends _$CoachEvaluationEventCopyWithImpl<$Res,
        _$CoachEvaluationEventClearImpl>
    implements _$$CoachEvaluationEventClearImplCopyWith<$Res> {
  __$$CoachEvaluationEventClearImplCopyWithImpl(
      _$CoachEvaluationEventClearImpl _value,
      $Res Function(_$CoachEvaluationEventClearImpl) _then)
      : super(_value, _then);

  /// Create a copy of CoachEvaluationEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$CoachEvaluationEventClearImpl implements CoachEvaluationEventClear {
  const _$CoachEvaluationEventClearImpl();

  @override
  String toString() {
    return 'CoachEvaluationEvent.clear()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CoachEvaluationEventClearImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(GetAllEvaluationParams params) getEvaluations,
    required TResult Function(String query) filterEvaluations,
    required TResult Function() clear,
    required TResult Function(CreateEvaluationParams params) create,
    required TResult Function(UpdateEvaluationParams params) update,
    required TResult Function(DeleteEvaluationParams params) delete,
  }) {
    return clear();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(GetAllEvaluationParams params)? getEvaluations,
    TResult? Function(String query)? filterEvaluations,
    TResult? Function()? clear,
    TResult? Function(CreateEvaluationParams params)? create,
    TResult? Function(UpdateEvaluationParams params)? update,
    TResult? Function(DeleteEvaluationParams params)? delete,
  }) {
    return clear?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GetAllEvaluationParams params)? getEvaluations,
    TResult Function(String query)? filterEvaluations,
    TResult Function()? clear,
    TResult Function(CreateEvaluationParams params)? create,
    TResult Function(UpdateEvaluationParams params)? update,
    TResult Function(DeleteEvaluationParams params)? delete,
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
    required TResult Function(CoachEvaluationEventGetEvaluations value)
        getEvaluations,
    required TResult Function(CoachEvaluationEventFilterEvaluations value)
        filterEvaluations,
    required TResult Function(CoachEvaluationEventClear value) clear,
    required TResult Function(CoachEvaluationEventCreate value) create,
    required TResult Function(CoachEvaluationEventUpdate value) update,
    required TResult Function(CoachEvaluationEventDelete value) delete,
  }) {
    return clear(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CoachEvaluationEventGetEvaluations value)? getEvaluations,
    TResult? Function(CoachEvaluationEventFilterEvaluations value)?
        filterEvaluations,
    TResult? Function(CoachEvaluationEventClear value)? clear,
    TResult? Function(CoachEvaluationEventCreate value)? create,
    TResult? Function(CoachEvaluationEventUpdate value)? update,
    TResult? Function(CoachEvaluationEventDelete value)? delete,
  }) {
    return clear?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CoachEvaluationEventGetEvaluations value)? getEvaluations,
    TResult Function(CoachEvaluationEventFilterEvaluations value)?
        filterEvaluations,
    TResult Function(CoachEvaluationEventClear value)? clear,
    TResult Function(CoachEvaluationEventCreate value)? create,
    TResult Function(CoachEvaluationEventUpdate value)? update,
    TResult Function(CoachEvaluationEventDelete value)? delete,
    required TResult orElse(),
  }) {
    if (clear != null) {
      return clear(this);
    }
    return orElse();
  }
}

abstract class CoachEvaluationEventClear implements CoachEvaluationEvent {
  const factory CoachEvaluationEventClear() = _$CoachEvaluationEventClearImpl;
}

/// @nodoc
abstract class _$$CoachEvaluationEventCreateImplCopyWith<$Res> {
  factory _$$CoachEvaluationEventCreateImplCopyWith(
          _$CoachEvaluationEventCreateImpl value,
          $Res Function(_$CoachEvaluationEventCreateImpl) then) =
      __$$CoachEvaluationEventCreateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({CreateEvaluationParams params});

  $CreateEvaluationParamsCopyWith<$Res> get params;
}

/// @nodoc
class __$$CoachEvaluationEventCreateImplCopyWithImpl<$Res>
    extends _$CoachEvaluationEventCopyWithImpl<$Res,
        _$CoachEvaluationEventCreateImpl>
    implements _$$CoachEvaluationEventCreateImplCopyWith<$Res> {
  __$$CoachEvaluationEventCreateImplCopyWithImpl(
      _$CoachEvaluationEventCreateImpl _value,
      $Res Function(_$CoachEvaluationEventCreateImpl) _then)
      : super(_value, _then);

  /// Create a copy of CoachEvaluationEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? params = null,
  }) {
    return _then(_$CoachEvaluationEventCreateImpl(
      null == params
          ? _value.params
          : params // ignore: cast_nullable_to_non_nullable
              as CreateEvaluationParams,
    ));
  }

  /// Create a copy of CoachEvaluationEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CreateEvaluationParamsCopyWith<$Res> get params {
    return $CreateEvaluationParamsCopyWith<$Res>(_value.params, (value) {
      return _then(_value.copyWith(params: value));
    });
  }
}

/// @nodoc

class _$CoachEvaluationEventCreateImpl implements CoachEvaluationEventCreate {
  const _$CoachEvaluationEventCreateImpl(this.params);

  @override
  final CreateEvaluationParams params;

  @override
  String toString() {
    return 'CoachEvaluationEvent.create(params: $params)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CoachEvaluationEventCreateImpl &&
            (identical(other.params, params) || other.params == params));
  }

  @override
  int get hashCode => Object.hash(runtimeType, params);

  /// Create a copy of CoachEvaluationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CoachEvaluationEventCreateImplCopyWith<_$CoachEvaluationEventCreateImpl>
      get copyWith => __$$CoachEvaluationEventCreateImplCopyWithImpl<
          _$CoachEvaluationEventCreateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(GetAllEvaluationParams params) getEvaluations,
    required TResult Function(String query) filterEvaluations,
    required TResult Function() clear,
    required TResult Function(CreateEvaluationParams params) create,
    required TResult Function(UpdateEvaluationParams params) update,
    required TResult Function(DeleteEvaluationParams params) delete,
  }) {
    return create(params);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(GetAllEvaluationParams params)? getEvaluations,
    TResult? Function(String query)? filterEvaluations,
    TResult? Function()? clear,
    TResult? Function(CreateEvaluationParams params)? create,
    TResult? Function(UpdateEvaluationParams params)? update,
    TResult? Function(DeleteEvaluationParams params)? delete,
  }) {
    return create?.call(params);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GetAllEvaluationParams params)? getEvaluations,
    TResult Function(String query)? filterEvaluations,
    TResult Function()? clear,
    TResult Function(CreateEvaluationParams params)? create,
    TResult Function(UpdateEvaluationParams params)? update,
    TResult Function(DeleteEvaluationParams params)? delete,
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
    required TResult Function(CoachEvaluationEventGetEvaluations value)
        getEvaluations,
    required TResult Function(CoachEvaluationEventFilterEvaluations value)
        filterEvaluations,
    required TResult Function(CoachEvaluationEventClear value) clear,
    required TResult Function(CoachEvaluationEventCreate value) create,
    required TResult Function(CoachEvaluationEventUpdate value) update,
    required TResult Function(CoachEvaluationEventDelete value) delete,
  }) {
    return create(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CoachEvaluationEventGetEvaluations value)? getEvaluations,
    TResult? Function(CoachEvaluationEventFilterEvaluations value)?
        filterEvaluations,
    TResult? Function(CoachEvaluationEventClear value)? clear,
    TResult? Function(CoachEvaluationEventCreate value)? create,
    TResult? Function(CoachEvaluationEventUpdate value)? update,
    TResult? Function(CoachEvaluationEventDelete value)? delete,
  }) {
    return create?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CoachEvaluationEventGetEvaluations value)? getEvaluations,
    TResult Function(CoachEvaluationEventFilterEvaluations value)?
        filterEvaluations,
    TResult Function(CoachEvaluationEventClear value)? clear,
    TResult Function(CoachEvaluationEventCreate value)? create,
    TResult Function(CoachEvaluationEventUpdate value)? update,
    TResult Function(CoachEvaluationEventDelete value)? delete,
    required TResult orElse(),
  }) {
    if (create != null) {
      return create(this);
    }
    return orElse();
  }
}

abstract class CoachEvaluationEventCreate implements CoachEvaluationEvent {
  const factory CoachEvaluationEventCreate(
      final CreateEvaluationParams params) = _$CoachEvaluationEventCreateImpl;

  CreateEvaluationParams get params;

  /// Create a copy of CoachEvaluationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CoachEvaluationEventCreateImplCopyWith<_$CoachEvaluationEventCreateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CoachEvaluationEventUpdateImplCopyWith<$Res> {
  factory _$$CoachEvaluationEventUpdateImplCopyWith(
          _$CoachEvaluationEventUpdateImpl value,
          $Res Function(_$CoachEvaluationEventUpdateImpl) then) =
      __$$CoachEvaluationEventUpdateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({UpdateEvaluationParams params});

  $UpdateEvaluationParamsCopyWith<$Res> get params;
}

/// @nodoc
class __$$CoachEvaluationEventUpdateImplCopyWithImpl<$Res>
    extends _$CoachEvaluationEventCopyWithImpl<$Res,
        _$CoachEvaluationEventUpdateImpl>
    implements _$$CoachEvaluationEventUpdateImplCopyWith<$Res> {
  __$$CoachEvaluationEventUpdateImplCopyWithImpl(
      _$CoachEvaluationEventUpdateImpl _value,
      $Res Function(_$CoachEvaluationEventUpdateImpl) _then)
      : super(_value, _then);

  /// Create a copy of CoachEvaluationEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? params = null,
  }) {
    return _then(_$CoachEvaluationEventUpdateImpl(
      null == params
          ? _value.params
          : params // ignore: cast_nullable_to_non_nullable
              as UpdateEvaluationParams,
    ));
  }

  /// Create a copy of CoachEvaluationEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UpdateEvaluationParamsCopyWith<$Res> get params {
    return $UpdateEvaluationParamsCopyWith<$Res>(_value.params, (value) {
      return _then(_value.copyWith(params: value));
    });
  }
}

/// @nodoc

class _$CoachEvaluationEventUpdateImpl implements CoachEvaluationEventUpdate {
  const _$CoachEvaluationEventUpdateImpl(this.params);

  @override
  final UpdateEvaluationParams params;

  @override
  String toString() {
    return 'CoachEvaluationEvent.update(params: $params)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CoachEvaluationEventUpdateImpl &&
            (identical(other.params, params) || other.params == params));
  }

  @override
  int get hashCode => Object.hash(runtimeType, params);

  /// Create a copy of CoachEvaluationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CoachEvaluationEventUpdateImplCopyWith<_$CoachEvaluationEventUpdateImpl>
      get copyWith => __$$CoachEvaluationEventUpdateImplCopyWithImpl<
          _$CoachEvaluationEventUpdateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(GetAllEvaluationParams params) getEvaluations,
    required TResult Function(String query) filterEvaluations,
    required TResult Function() clear,
    required TResult Function(CreateEvaluationParams params) create,
    required TResult Function(UpdateEvaluationParams params) update,
    required TResult Function(DeleteEvaluationParams params) delete,
  }) {
    return update(params);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(GetAllEvaluationParams params)? getEvaluations,
    TResult? Function(String query)? filterEvaluations,
    TResult? Function()? clear,
    TResult? Function(CreateEvaluationParams params)? create,
    TResult? Function(UpdateEvaluationParams params)? update,
    TResult? Function(DeleteEvaluationParams params)? delete,
  }) {
    return update?.call(params);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GetAllEvaluationParams params)? getEvaluations,
    TResult Function(String query)? filterEvaluations,
    TResult Function()? clear,
    TResult Function(CreateEvaluationParams params)? create,
    TResult Function(UpdateEvaluationParams params)? update,
    TResult Function(DeleteEvaluationParams params)? delete,
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
    required TResult Function(CoachEvaluationEventGetEvaluations value)
        getEvaluations,
    required TResult Function(CoachEvaluationEventFilterEvaluations value)
        filterEvaluations,
    required TResult Function(CoachEvaluationEventClear value) clear,
    required TResult Function(CoachEvaluationEventCreate value) create,
    required TResult Function(CoachEvaluationEventUpdate value) update,
    required TResult Function(CoachEvaluationEventDelete value) delete,
  }) {
    return update(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CoachEvaluationEventGetEvaluations value)? getEvaluations,
    TResult? Function(CoachEvaluationEventFilterEvaluations value)?
        filterEvaluations,
    TResult? Function(CoachEvaluationEventClear value)? clear,
    TResult? Function(CoachEvaluationEventCreate value)? create,
    TResult? Function(CoachEvaluationEventUpdate value)? update,
    TResult? Function(CoachEvaluationEventDelete value)? delete,
  }) {
    return update?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CoachEvaluationEventGetEvaluations value)? getEvaluations,
    TResult Function(CoachEvaluationEventFilterEvaluations value)?
        filterEvaluations,
    TResult Function(CoachEvaluationEventClear value)? clear,
    TResult Function(CoachEvaluationEventCreate value)? create,
    TResult Function(CoachEvaluationEventUpdate value)? update,
    TResult Function(CoachEvaluationEventDelete value)? delete,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(this);
    }
    return orElse();
  }
}

abstract class CoachEvaluationEventUpdate implements CoachEvaluationEvent {
  const factory CoachEvaluationEventUpdate(
      final UpdateEvaluationParams params) = _$CoachEvaluationEventUpdateImpl;

  UpdateEvaluationParams get params;

  /// Create a copy of CoachEvaluationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CoachEvaluationEventUpdateImplCopyWith<_$CoachEvaluationEventUpdateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CoachEvaluationEventDeleteImplCopyWith<$Res> {
  factory _$$CoachEvaluationEventDeleteImplCopyWith(
          _$CoachEvaluationEventDeleteImpl value,
          $Res Function(_$CoachEvaluationEventDeleteImpl) then) =
      __$$CoachEvaluationEventDeleteImplCopyWithImpl<$Res>;
  @useResult
  $Res call({DeleteEvaluationParams params});

  $DeleteEvaluationParamsCopyWith<$Res> get params;
}

/// @nodoc
class __$$CoachEvaluationEventDeleteImplCopyWithImpl<$Res>
    extends _$CoachEvaluationEventCopyWithImpl<$Res,
        _$CoachEvaluationEventDeleteImpl>
    implements _$$CoachEvaluationEventDeleteImplCopyWith<$Res> {
  __$$CoachEvaluationEventDeleteImplCopyWithImpl(
      _$CoachEvaluationEventDeleteImpl _value,
      $Res Function(_$CoachEvaluationEventDeleteImpl) _then)
      : super(_value, _then);

  /// Create a copy of CoachEvaluationEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? params = null,
  }) {
    return _then(_$CoachEvaluationEventDeleteImpl(
      null == params
          ? _value.params
          : params // ignore: cast_nullable_to_non_nullable
              as DeleteEvaluationParams,
    ));
  }

  /// Create a copy of CoachEvaluationEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DeleteEvaluationParamsCopyWith<$Res> get params {
    return $DeleteEvaluationParamsCopyWith<$Res>(_value.params, (value) {
      return _then(_value.copyWith(params: value));
    });
  }
}

/// @nodoc

class _$CoachEvaluationEventDeleteImpl implements CoachEvaluationEventDelete {
  const _$CoachEvaluationEventDeleteImpl(this.params);

  @override
  final DeleteEvaluationParams params;

  @override
  String toString() {
    return 'CoachEvaluationEvent.delete(params: $params)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CoachEvaluationEventDeleteImpl &&
            (identical(other.params, params) || other.params == params));
  }

  @override
  int get hashCode => Object.hash(runtimeType, params);

  /// Create a copy of CoachEvaluationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CoachEvaluationEventDeleteImplCopyWith<_$CoachEvaluationEventDeleteImpl>
      get copyWith => __$$CoachEvaluationEventDeleteImplCopyWithImpl<
          _$CoachEvaluationEventDeleteImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(GetAllEvaluationParams params) getEvaluations,
    required TResult Function(String query) filterEvaluations,
    required TResult Function() clear,
    required TResult Function(CreateEvaluationParams params) create,
    required TResult Function(UpdateEvaluationParams params) update,
    required TResult Function(DeleteEvaluationParams params) delete,
  }) {
    return delete(params);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(GetAllEvaluationParams params)? getEvaluations,
    TResult? Function(String query)? filterEvaluations,
    TResult? Function()? clear,
    TResult? Function(CreateEvaluationParams params)? create,
    TResult? Function(UpdateEvaluationParams params)? update,
    TResult? Function(DeleteEvaluationParams params)? delete,
  }) {
    return delete?.call(params);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GetAllEvaluationParams params)? getEvaluations,
    TResult Function(String query)? filterEvaluations,
    TResult Function()? clear,
    TResult Function(CreateEvaluationParams params)? create,
    TResult Function(UpdateEvaluationParams params)? update,
    TResult Function(DeleteEvaluationParams params)? delete,
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
    required TResult Function(CoachEvaluationEventGetEvaluations value)
        getEvaluations,
    required TResult Function(CoachEvaluationEventFilterEvaluations value)
        filterEvaluations,
    required TResult Function(CoachEvaluationEventClear value) clear,
    required TResult Function(CoachEvaluationEventCreate value) create,
    required TResult Function(CoachEvaluationEventUpdate value) update,
    required TResult Function(CoachEvaluationEventDelete value) delete,
  }) {
    return delete(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CoachEvaluationEventGetEvaluations value)? getEvaluations,
    TResult? Function(CoachEvaluationEventFilterEvaluations value)?
        filterEvaluations,
    TResult? Function(CoachEvaluationEventClear value)? clear,
    TResult? Function(CoachEvaluationEventCreate value)? create,
    TResult? Function(CoachEvaluationEventUpdate value)? update,
    TResult? Function(CoachEvaluationEventDelete value)? delete,
  }) {
    return delete?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CoachEvaluationEventGetEvaluations value)? getEvaluations,
    TResult Function(CoachEvaluationEventFilterEvaluations value)?
        filterEvaluations,
    TResult Function(CoachEvaluationEventClear value)? clear,
    TResult Function(CoachEvaluationEventCreate value)? create,
    TResult Function(CoachEvaluationEventUpdate value)? update,
    TResult Function(CoachEvaluationEventDelete value)? delete,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete(this);
    }
    return orElse();
  }
}

abstract class CoachEvaluationEventDelete implements CoachEvaluationEvent {
  const factory CoachEvaluationEventDelete(
      final DeleteEvaluationParams params) = _$CoachEvaluationEventDeleteImpl;

  DeleteEvaluationParams get params;

  /// Create a copy of CoachEvaluationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CoachEvaluationEventDeleteImplCopyWith<_$CoachEvaluationEventDeleteImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CoachEvaluationState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<EvaluationModel> evaluations,
            List<EvaluationModel> filteredEvaluations)
        loaded,
    required TResult Function(String message) failure,
    required TResult Function(EvaluationModel evaluation) created,
    required TResult Function(EvaluationModel evaluation) updated,
    required TResult Function(EvaluationModel evaluation) deleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<EvaluationModel> evaluations,
            List<EvaluationModel> filteredEvaluations)?
        loaded,
    TResult? Function(String message)? failure,
    TResult? Function(EvaluationModel evaluation)? created,
    TResult? Function(EvaluationModel evaluation)? updated,
    TResult? Function(EvaluationModel evaluation)? deleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<EvaluationModel> evaluations,
            List<EvaluationModel> filteredEvaluations)?
        loaded,
    TResult Function(String message)? failure,
    TResult Function(EvaluationModel evaluation)? created,
    TResult Function(EvaluationModel evaluation)? updated,
    TResult Function(EvaluationModel evaluation)? deleted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CoachEvaluationStateInitial value) initial,
    required TResult Function(CoachEvaluationStateLoading value) loading,
    required TResult Function(CoachEvaluationStateLoaded value) loaded,
    required TResult Function(CoachEvaluationStateFailure value) failure,
    required TResult Function(CoachEvaluationStateCreated value) created,
    required TResult Function(CoachEvaluationStateUpdated value) updated,
    required TResult Function(CoachEvaluationStateDeleted value) deleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CoachEvaluationStateInitial value)? initial,
    TResult? Function(CoachEvaluationStateLoading value)? loading,
    TResult? Function(CoachEvaluationStateLoaded value)? loaded,
    TResult? Function(CoachEvaluationStateFailure value)? failure,
    TResult? Function(CoachEvaluationStateCreated value)? created,
    TResult? Function(CoachEvaluationStateUpdated value)? updated,
    TResult? Function(CoachEvaluationStateDeleted value)? deleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CoachEvaluationStateInitial value)? initial,
    TResult Function(CoachEvaluationStateLoading value)? loading,
    TResult Function(CoachEvaluationStateLoaded value)? loaded,
    TResult Function(CoachEvaluationStateFailure value)? failure,
    TResult Function(CoachEvaluationStateCreated value)? created,
    TResult Function(CoachEvaluationStateUpdated value)? updated,
    TResult Function(CoachEvaluationStateDeleted value)? deleted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CoachEvaluationStateCopyWith<$Res> {
  factory $CoachEvaluationStateCopyWith(CoachEvaluationState value,
          $Res Function(CoachEvaluationState) then) =
      _$CoachEvaluationStateCopyWithImpl<$Res, CoachEvaluationState>;
}

/// @nodoc
class _$CoachEvaluationStateCopyWithImpl<$Res,
        $Val extends CoachEvaluationState>
    implements $CoachEvaluationStateCopyWith<$Res> {
  _$CoachEvaluationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CoachEvaluationState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$CoachEvaluationStateInitialImplCopyWith<$Res> {
  factory _$$CoachEvaluationStateInitialImplCopyWith(
          _$CoachEvaluationStateInitialImpl value,
          $Res Function(_$CoachEvaluationStateInitialImpl) then) =
      __$$CoachEvaluationStateInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CoachEvaluationStateInitialImplCopyWithImpl<$Res>
    extends _$CoachEvaluationStateCopyWithImpl<$Res,
        _$CoachEvaluationStateInitialImpl>
    implements _$$CoachEvaluationStateInitialImplCopyWith<$Res> {
  __$$CoachEvaluationStateInitialImplCopyWithImpl(
      _$CoachEvaluationStateInitialImpl _value,
      $Res Function(_$CoachEvaluationStateInitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of CoachEvaluationState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$CoachEvaluationStateInitialImpl implements CoachEvaluationStateInitial {
  const _$CoachEvaluationStateInitialImpl();

  @override
  String toString() {
    return 'CoachEvaluationState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CoachEvaluationStateInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<EvaluationModel> evaluations,
            List<EvaluationModel> filteredEvaluations)
        loaded,
    required TResult Function(String message) failure,
    required TResult Function(EvaluationModel evaluation) created,
    required TResult Function(EvaluationModel evaluation) updated,
    required TResult Function(EvaluationModel evaluation) deleted,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<EvaluationModel> evaluations,
            List<EvaluationModel> filteredEvaluations)?
        loaded,
    TResult? Function(String message)? failure,
    TResult? Function(EvaluationModel evaluation)? created,
    TResult? Function(EvaluationModel evaluation)? updated,
    TResult? Function(EvaluationModel evaluation)? deleted,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<EvaluationModel> evaluations,
            List<EvaluationModel> filteredEvaluations)?
        loaded,
    TResult Function(String message)? failure,
    TResult Function(EvaluationModel evaluation)? created,
    TResult Function(EvaluationModel evaluation)? updated,
    TResult Function(EvaluationModel evaluation)? deleted,
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
    required TResult Function(CoachEvaluationStateInitial value) initial,
    required TResult Function(CoachEvaluationStateLoading value) loading,
    required TResult Function(CoachEvaluationStateLoaded value) loaded,
    required TResult Function(CoachEvaluationStateFailure value) failure,
    required TResult Function(CoachEvaluationStateCreated value) created,
    required TResult Function(CoachEvaluationStateUpdated value) updated,
    required TResult Function(CoachEvaluationStateDeleted value) deleted,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CoachEvaluationStateInitial value)? initial,
    TResult? Function(CoachEvaluationStateLoading value)? loading,
    TResult? Function(CoachEvaluationStateLoaded value)? loaded,
    TResult? Function(CoachEvaluationStateFailure value)? failure,
    TResult? Function(CoachEvaluationStateCreated value)? created,
    TResult? Function(CoachEvaluationStateUpdated value)? updated,
    TResult? Function(CoachEvaluationStateDeleted value)? deleted,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CoachEvaluationStateInitial value)? initial,
    TResult Function(CoachEvaluationStateLoading value)? loading,
    TResult Function(CoachEvaluationStateLoaded value)? loaded,
    TResult Function(CoachEvaluationStateFailure value)? failure,
    TResult Function(CoachEvaluationStateCreated value)? created,
    TResult Function(CoachEvaluationStateUpdated value)? updated,
    TResult Function(CoachEvaluationStateDeleted value)? deleted,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class CoachEvaluationStateInitial implements CoachEvaluationState {
  const factory CoachEvaluationStateInitial() =
      _$CoachEvaluationStateInitialImpl;
}

/// @nodoc
abstract class _$$CoachEvaluationStateLoadingImplCopyWith<$Res> {
  factory _$$CoachEvaluationStateLoadingImplCopyWith(
          _$CoachEvaluationStateLoadingImpl value,
          $Res Function(_$CoachEvaluationStateLoadingImpl) then) =
      __$$CoachEvaluationStateLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CoachEvaluationStateLoadingImplCopyWithImpl<$Res>
    extends _$CoachEvaluationStateCopyWithImpl<$Res,
        _$CoachEvaluationStateLoadingImpl>
    implements _$$CoachEvaluationStateLoadingImplCopyWith<$Res> {
  __$$CoachEvaluationStateLoadingImplCopyWithImpl(
      _$CoachEvaluationStateLoadingImpl _value,
      $Res Function(_$CoachEvaluationStateLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of CoachEvaluationState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$CoachEvaluationStateLoadingImpl implements CoachEvaluationStateLoading {
  const _$CoachEvaluationStateLoadingImpl();

  @override
  String toString() {
    return 'CoachEvaluationState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CoachEvaluationStateLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<EvaluationModel> evaluations,
            List<EvaluationModel> filteredEvaluations)
        loaded,
    required TResult Function(String message) failure,
    required TResult Function(EvaluationModel evaluation) created,
    required TResult Function(EvaluationModel evaluation) updated,
    required TResult Function(EvaluationModel evaluation) deleted,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<EvaluationModel> evaluations,
            List<EvaluationModel> filteredEvaluations)?
        loaded,
    TResult? Function(String message)? failure,
    TResult? Function(EvaluationModel evaluation)? created,
    TResult? Function(EvaluationModel evaluation)? updated,
    TResult? Function(EvaluationModel evaluation)? deleted,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<EvaluationModel> evaluations,
            List<EvaluationModel> filteredEvaluations)?
        loaded,
    TResult Function(String message)? failure,
    TResult Function(EvaluationModel evaluation)? created,
    TResult Function(EvaluationModel evaluation)? updated,
    TResult Function(EvaluationModel evaluation)? deleted,
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
    required TResult Function(CoachEvaluationStateInitial value) initial,
    required TResult Function(CoachEvaluationStateLoading value) loading,
    required TResult Function(CoachEvaluationStateLoaded value) loaded,
    required TResult Function(CoachEvaluationStateFailure value) failure,
    required TResult Function(CoachEvaluationStateCreated value) created,
    required TResult Function(CoachEvaluationStateUpdated value) updated,
    required TResult Function(CoachEvaluationStateDeleted value) deleted,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CoachEvaluationStateInitial value)? initial,
    TResult? Function(CoachEvaluationStateLoading value)? loading,
    TResult? Function(CoachEvaluationStateLoaded value)? loaded,
    TResult? Function(CoachEvaluationStateFailure value)? failure,
    TResult? Function(CoachEvaluationStateCreated value)? created,
    TResult? Function(CoachEvaluationStateUpdated value)? updated,
    TResult? Function(CoachEvaluationStateDeleted value)? deleted,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CoachEvaluationStateInitial value)? initial,
    TResult Function(CoachEvaluationStateLoading value)? loading,
    TResult Function(CoachEvaluationStateLoaded value)? loaded,
    TResult Function(CoachEvaluationStateFailure value)? failure,
    TResult Function(CoachEvaluationStateCreated value)? created,
    TResult Function(CoachEvaluationStateUpdated value)? updated,
    TResult Function(CoachEvaluationStateDeleted value)? deleted,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class CoachEvaluationStateLoading implements CoachEvaluationState {
  const factory CoachEvaluationStateLoading() =
      _$CoachEvaluationStateLoadingImpl;
}

/// @nodoc
abstract class _$$CoachEvaluationStateLoadedImplCopyWith<$Res> {
  factory _$$CoachEvaluationStateLoadedImplCopyWith(
          _$CoachEvaluationStateLoadedImpl value,
          $Res Function(_$CoachEvaluationStateLoadedImpl) then) =
      __$$CoachEvaluationStateLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {List<EvaluationModel> evaluations,
      List<EvaluationModel> filteredEvaluations});
}

/// @nodoc
class __$$CoachEvaluationStateLoadedImplCopyWithImpl<$Res>
    extends _$CoachEvaluationStateCopyWithImpl<$Res,
        _$CoachEvaluationStateLoadedImpl>
    implements _$$CoachEvaluationStateLoadedImplCopyWith<$Res> {
  __$$CoachEvaluationStateLoadedImplCopyWithImpl(
      _$CoachEvaluationStateLoadedImpl _value,
      $Res Function(_$CoachEvaluationStateLoadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of CoachEvaluationState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? evaluations = null,
    Object? filteredEvaluations = null,
  }) {
    return _then(_$CoachEvaluationStateLoadedImpl(
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

class _$CoachEvaluationStateLoadedImpl implements CoachEvaluationStateLoaded {
  const _$CoachEvaluationStateLoadedImpl(
      {required final List<EvaluationModel> evaluations,
      required final List<EvaluationModel> filteredEvaluations})
      : _evaluations = evaluations,
        _filteredEvaluations = filteredEvaluations;

  final List<EvaluationModel> _evaluations;
  @override
  List<EvaluationModel> get evaluations {
    if (_evaluations is EqualUnmodifiableListView) return _evaluations;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_evaluations);
  }

  final List<EvaluationModel> _filteredEvaluations;
  @override
  List<EvaluationModel> get filteredEvaluations {
    if (_filteredEvaluations is EqualUnmodifiableListView)
      return _filteredEvaluations;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_filteredEvaluations);
  }

  @override
  String toString() {
    return 'CoachEvaluationState.loaded(evaluations: $evaluations, filteredEvaluations: $filteredEvaluations)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CoachEvaluationStateLoadedImpl &&
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

  /// Create a copy of CoachEvaluationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CoachEvaluationStateLoadedImplCopyWith<_$CoachEvaluationStateLoadedImpl>
      get copyWith => __$$CoachEvaluationStateLoadedImplCopyWithImpl<
          _$CoachEvaluationStateLoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<EvaluationModel> evaluations,
            List<EvaluationModel> filteredEvaluations)
        loaded,
    required TResult Function(String message) failure,
    required TResult Function(EvaluationModel evaluation) created,
    required TResult Function(EvaluationModel evaluation) updated,
    required TResult Function(EvaluationModel evaluation) deleted,
  }) {
    return loaded(evaluations, filteredEvaluations);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<EvaluationModel> evaluations,
            List<EvaluationModel> filteredEvaluations)?
        loaded,
    TResult? Function(String message)? failure,
    TResult? Function(EvaluationModel evaluation)? created,
    TResult? Function(EvaluationModel evaluation)? updated,
    TResult? Function(EvaluationModel evaluation)? deleted,
  }) {
    return loaded?.call(evaluations, filteredEvaluations);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<EvaluationModel> evaluations,
            List<EvaluationModel> filteredEvaluations)?
        loaded,
    TResult Function(String message)? failure,
    TResult Function(EvaluationModel evaluation)? created,
    TResult Function(EvaluationModel evaluation)? updated,
    TResult Function(EvaluationModel evaluation)? deleted,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(evaluations, filteredEvaluations);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CoachEvaluationStateInitial value) initial,
    required TResult Function(CoachEvaluationStateLoading value) loading,
    required TResult Function(CoachEvaluationStateLoaded value) loaded,
    required TResult Function(CoachEvaluationStateFailure value) failure,
    required TResult Function(CoachEvaluationStateCreated value) created,
    required TResult Function(CoachEvaluationStateUpdated value) updated,
    required TResult Function(CoachEvaluationStateDeleted value) deleted,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CoachEvaluationStateInitial value)? initial,
    TResult? Function(CoachEvaluationStateLoading value)? loading,
    TResult? Function(CoachEvaluationStateLoaded value)? loaded,
    TResult? Function(CoachEvaluationStateFailure value)? failure,
    TResult? Function(CoachEvaluationStateCreated value)? created,
    TResult? Function(CoachEvaluationStateUpdated value)? updated,
    TResult? Function(CoachEvaluationStateDeleted value)? deleted,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CoachEvaluationStateInitial value)? initial,
    TResult Function(CoachEvaluationStateLoading value)? loading,
    TResult Function(CoachEvaluationStateLoaded value)? loaded,
    TResult Function(CoachEvaluationStateFailure value)? failure,
    TResult Function(CoachEvaluationStateCreated value)? created,
    TResult Function(CoachEvaluationStateUpdated value)? updated,
    TResult Function(CoachEvaluationStateDeleted value)? deleted,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class CoachEvaluationStateLoaded implements CoachEvaluationState {
  const factory CoachEvaluationStateLoaded(
          {required final List<EvaluationModel> evaluations,
          required final List<EvaluationModel> filteredEvaluations}) =
      _$CoachEvaluationStateLoadedImpl;

  List<EvaluationModel> get evaluations;
  List<EvaluationModel> get filteredEvaluations;

  /// Create a copy of CoachEvaluationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CoachEvaluationStateLoadedImplCopyWith<_$CoachEvaluationStateLoadedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CoachEvaluationStateFailureImplCopyWith<$Res> {
  factory _$$CoachEvaluationStateFailureImplCopyWith(
          _$CoachEvaluationStateFailureImpl value,
          $Res Function(_$CoachEvaluationStateFailureImpl) then) =
      __$$CoachEvaluationStateFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$CoachEvaluationStateFailureImplCopyWithImpl<$Res>
    extends _$CoachEvaluationStateCopyWithImpl<$Res,
        _$CoachEvaluationStateFailureImpl>
    implements _$$CoachEvaluationStateFailureImplCopyWith<$Res> {
  __$$CoachEvaluationStateFailureImplCopyWithImpl(
      _$CoachEvaluationStateFailureImpl _value,
      $Res Function(_$CoachEvaluationStateFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of CoachEvaluationState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$CoachEvaluationStateFailureImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CoachEvaluationStateFailureImpl implements CoachEvaluationStateFailure {
  const _$CoachEvaluationStateFailureImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'CoachEvaluationState.failure(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CoachEvaluationStateFailureImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of CoachEvaluationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CoachEvaluationStateFailureImplCopyWith<_$CoachEvaluationStateFailureImpl>
      get copyWith => __$$CoachEvaluationStateFailureImplCopyWithImpl<
          _$CoachEvaluationStateFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<EvaluationModel> evaluations,
            List<EvaluationModel> filteredEvaluations)
        loaded,
    required TResult Function(String message) failure,
    required TResult Function(EvaluationModel evaluation) created,
    required TResult Function(EvaluationModel evaluation) updated,
    required TResult Function(EvaluationModel evaluation) deleted,
  }) {
    return failure(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<EvaluationModel> evaluations,
            List<EvaluationModel> filteredEvaluations)?
        loaded,
    TResult? Function(String message)? failure,
    TResult? Function(EvaluationModel evaluation)? created,
    TResult? Function(EvaluationModel evaluation)? updated,
    TResult? Function(EvaluationModel evaluation)? deleted,
  }) {
    return failure?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<EvaluationModel> evaluations,
            List<EvaluationModel> filteredEvaluations)?
        loaded,
    TResult Function(String message)? failure,
    TResult Function(EvaluationModel evaluation)? created,
    TResult Function(EvaluationModel evaluation)? updated,
    TResult Function(EvaluationModel evaluation)? deleted,
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
    required TResult Function(CoachEvaluationStateInitial value) initial,
    required TResult Function(CoachEvaluationStateLoading value) loading,
    required TResult Function(CoachEvaluationStateLoaded value) loaded,
    required TResult Function(CoachEvaluationStateFailure value) failure,
    required TResult Function(CoachEvaluationStateCreated value) created,
    required TResult Function(CoachEvaluationStateUpdated value) updated,
    required TResult Function(CoachEvaluationStateDeleted value) deleted,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CoachEvaluationStateInitial value)? initial,
    TResult? Function(CoachEvaluationStateLoading value)? loading,
    TResult? Function(CoachEvaluationStateLoaded value)? loaded,
    TResult? Function(CoachEvaluationStateFailure value)? failure,
    TResult? Function(CoachEvaluationStateCreated value)? created,
    TResult? Function(CoachEvaluationStateUpdated value)? updated,
    TResult? Function(CoachEvaluationStateDeleted value)? deleted,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CoachEvaluationStateInitial value)? initial,
    TResult Function(CoachEvaluationStateLoading value)? loading,
    TResult Function(CoachEvaluationStateLoaded value)? loaded,
    TResult Function(CoachEvaluationStateFailure value)? failure,
    TResult Function(CoachEvaluationStateCreated value)? created,
    TResult Function(CoachEvaluationStateUpdated value)? updated,
    TResult Function(CoachEvaluationStateDeleted value)? deleted,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class CoachEvaluationStateFailure implements CoachEvaluationState {
  const factory CoachEvaluationStateFailure(final String message) =
      _$CoachEvaluationStateFailureImpl;

  String get message;

  /// Create a copy of CoachEvaluationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CoachEvaluationStateFailureImplCopyWith<_$CoachEvaluationStateFailureImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CoachEvaluationStateCreatedImplCopyWith<$Res> {
  factory _$$CoachEvaluationStateCreatedImplCopyWith(
          _$CoachEvaluationStateCreatedImpl value,
          $Res Function(_$CoachEvaluationStateCreatedImpl) then) =
      __$$CoachEvaluationStateCreatedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({EvaluationModel evaluation});

  $EvaluationModelCopyWith<$Res> get evaluation;
}

/// @nodoc
class __$$CoachEvaluationStateCreatedImplCopyWithImpl<$Res>
    extends _$CoachEvaluationStateCopyWithImpl<$Res,
        _$CoachEvaluationStateCreatedImpl>
    implements _$$CoachEvaluationStateCreatedImplCopyWith<$Res> {
  __$$CoachEvaluationStateCreatedImplCopyWithImpl(
      _$CoachEvaluationStateCreatedImpl _value,
      $Res Function(_$CoachEvaluationStateCreatedImpl) _then)
      : super(_value, _then);

  /// Create a copy of CoachEvaluationState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? evaluation = null,
  }) {
    return _then(_$CoachEvaluationStateCreatedImpl(
      null == evaluation
          ? _value.evaluation
          : evaluation // ignore: cast_nullable_to_non_nullable
              as EvaluationModel,
    ));
  }

  /// Create a copy of CoachEvaluationState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $EvaluationModelCopyWith<$Res> get evaluation {
    return $EvaluationModelCopyWith<$Res>(_value.evaluation, (value) {
      return _then(_value.copyWith(evaluation: value));
    });
  }
}

/// @nodoc

class _$CoachEvaluationStateCreatedImpl implements CoachEvaluationStateCreated {
  const _$CoachEvaluationStateCreatedImpl(this.evaluation);

  @override
  final EvaluationModel evaluation;

  @override
  String toString() {
    return 'CoachEvaluationState.created(evaluation: $evaluation)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CoachEvaluationStateCreatedImpl &&
            (identical(other.evaluation, evaluation) ||
                other.evaluation == evaluation));
  }

  @override
  int get hashCode => Object.hash(runtimeType, evaluation);

  /// Create a copy of CoachEvaluationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CoachEvaluationStateCreatedImplCopyWith<_$CoachEvaluationStateCreatedImpl>
      get copyWith => __$$CoachEvaluationStateCreatedImplCopyWithImpl<
          _$CoachEvaluationStateCreatedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<EvaluationModel> evaluations,
            List<EvaluationModel> filteredEvaluations)
        loaded,
    required TResult Function(String message) failure,
    required TResult Function(EvaluationModel evaluation) created,
    required TResult Function(EvaluationModel evaluation) updated,
    required TResult Function(EvaluationModel evaluation) deleted,
  }) {
    return created(evaluation);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<EvaluationModel> evaluations,
            List<EvaluationModel> filteredEvaluations)?
        loaded,
    TResult? Function(String message)? failure,
    TResult? Function(EvaluationModel evaluation)? created,
    TResult? Function(EvaluationModel evaluation)? updated,
    TResult? Function(EvaluationModel evaluation)? deleted,
  }) {
    return created?.call(evaluation);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<EvaluationModel> evaluations,
            List<EvaluationModel> filteredEvaluations)?
        loaded,
    TResult Function(String message)? failure,
    TResult Function(EvaluationModel evaluation)? created,
    TResult Function(EvaluationModel evaluation)? updated,
    TResult Function(EvaluationModel evaluation)? deleted,
    required TResult orElse(),
  }) {
    if (created != null) {
      return created(evaluation);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CoachEvaluationStateInitial value) initial,
    required TResult Function(CoachEvaluationStateLoading value) loading,
    required TResult Function(CoachEvaluationStateLoaded value) loaded,
    required TResult Function(CoachEvaluationStateFailure value) failure,
    required TResult Function(CoachEvaluationStateCreated value) created,
    required TResult Function(CoachEvaluationStateUpdated value) updated,
    required TResult Function(CoachEvaluationStateDeleted value) deleted,
  }) {
    return created(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CoachEvaluationStateInitial value)? initial,
    TResult? Function(CoachEvaluationStateLoading value)? loading,
    TResult? Function(CoachEvaluationStateLoaded value)? loaded,
    TResult? Function(CoachEvaluationStateFailure value)? failure,
    TResult? Function(CoachEvaluationStateCreated value)? created,
    TResult? Function(CoachEvaluationStateUpdated value)? updated,
    TResult? Function(CoachEvaluationStateDeleted value)? deleted,
  }) {
    return created?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CoachEvaluationStateInitial value)? initial,
    TResult Function(CoachEvaluationStateLoading value)? loading,
    TResult Function(CoachEvaluationStateLoaded value)? loaded,
    TResult Function(CoachEvaluationStateFailure value)? failure,
    TResult Function(CoachEvaluationStateCreated value)? created,
    TResult Function(CoachEvaluationStateUpdated value)? updated,
    TResult Function(CoachEvaluationStateDeleted value)? deleted,
    required TResult orElse(),
  }) {
    if (created != null) {
      return created(this);
    }
    return orElse();
  }
}

abstract class CoachEvaluationStateCreated implements CoachEvaluationState {
  const factory CoachEvaluationStateCreated(final EvaluationModel evaluation) =
      _$CoachEvaluationStateCreatedImpl;

  EvaluationModel get evaluation;

  /// Create a copy of CoachEvaluationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CoachEvaluationStateCreatedImplCopyWith<_$CoachEvaluationStateCreatedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CoachEvaluationStateUpdatedImplCopyWith<$Res> {
  factory _$$CoachEvaluationStateUpdatedImplCopyWith(
          _$CoachEvaluationStateUpdatedImpl value,
          $Res Function(_$CoachEvaluationStateUpdatedImpl) then) =
      __$$CoachEvaluationStateUpdatedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({EvaluationModel evaluation});

  $EvaluationModelCopyWith<$Res> get evaluation;
}

/// @nodoc
class __$$CoachEvaluationStateUpdatedImplCopyWithImpl<$Res>
    extends _$CoachEvaluationStateCopyWithImpl<$Res,
        _$CoachEvaluationStateUpdatedImpl>
    implements _$$CoachEvaluationStateUpdatedImplCopyWith<$Res> {
  __$$CoachEvaluationStateUpdatedImplCopyWithImpl(
      _$CoachEvaluationStateUpdatedImpl _value,
      $Res Function(_$CoachEvaluationStateUpdatedImpl) _then)
      : super(_value, _then);

  /// Create a copy of CoachEvaluationState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? evaluation = null,
  }) {
    return _then(_$CoachEvaluationStateUpdatedImpl(
      null == evaluation
          ? _value.evaluation
          : evaluation // ignore: cast_nullable_to_non_nullable
              as EvaluationModel,
    ));
  }

  /// Create a copy of CoachEvaluationState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $EvaluationModelCopyWith<$Res> get evaluation {
    return $EvaluationModelCopyWith<$Res>(_value.evaluation, (value) {
      return _then(_value.copyWith(evaluation: value));
    });
  }
}

/// @nodoc

class _$CoachEvaluationStateUpdatedImpl implements CoachEvaluationStateUpdated {
  const _$CoachEvaluationStateUpdatedImpl(this.evaluation);

  @override
  final EvaluationModel evaluation;

  @override
  String toString() {
    return 'CoachEvaluationState.updated(evaluation: $evaluation)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CoachEvaluationStateUpdatedImpl &&
            (identical(other.evaluation, evaluation) ||
                other.evaluation == evaluation));
  }

  @override
  int get hashCode => Object.hash(runtimeType, evaluation);

  /// Create a copy of CoachEvaluationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CoachEvaluationStateUpdatedImplCopyWith<_$CoachEvaluationStateUpdatedImpl>
      get copyWith => __$$CoachEvaluationStateUpdatedImplCopyWithImpl<
          _$CoachEvaluationStateUpdatedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<EvaluationModel> evaluations,
            List<EvaluationModel> filteredEvaluations)
        loaded,
    required TResult Function(String message) failure,
    required TResult Function(EvaluationModel evaluation) created,
    required TResult Function(EvaluationModel evaluation) updated,
    required TResult Function(EvaluationModel evaluation) deleted,
  }) {
    return updated(evaluation);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<EvaluationModel> evaluations,
            List<EvaluationModel> filteredEvaluations)?
        loaded,
    TResult? Function(String message)? failure,
    TResult? Function(EvaluationModel evaluation)? created,
    TResult? Function(EvaluationModel evaluation)? updated,
    TResult? Function(EvaluationModel evaluation)? deleted,
  }) {
    return updated?.call(evaluation);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<EvaluationModel> evaluations,
            List<EvaluationModel> filteredEvaluations)?
        loaded,
    TResult Function(String message)? failure,
    TResult Function(EvaluationModel evaluation)? created,
    TResult Function(EvaluationModel evaluation)? updated,
    TResult Function(EvaluationModel evaluation)? deleted,
    required TResult orElse(),
  }) {
    if (updated != null) {
      return updated(evaluation);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CoachEvaluationStateInitial value) initial,
    required TResult Function(CoachEvaluationStateLoading value) loading,
    required TResult Function(CoachEvaluationStateLoaded value) loaded,
    required TResult Function(CoachEvaluationStateFailure value) failure,
    required TResult Function(CoachEvaluationStateCreated value) created,
    required TResult Function(CoachEvaluationStateUpdated value) updated,
    required TResult Function(CoachEvaluationStateDeleted value) deleted,
  }) {
    return updated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CoachEvaluationStateInitial value)? initial,
    TResult? Function(CoachEvaluationStateLoading value)? loading,
    TResult? Function(CoachEvaluationStateLoaded value)? loaded,
    TResult? Function(CoachEvaluationStateFailure value)? failure,
    TResult? Function(CoachEvaluationStateCreated value)? created,
    TResult? Function(CoachEvaluationStateUpdated value)? updated,
    TResult? Function(CoachEvaluationStateDeleted value)? deleted,
  }) {
    return updated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CoachEvaluationStateInitial value)? initial,
    TResult Function(CoachEvaluationStateLoading value)? loading,
    TResult Function(CoachEvaluationStateLoaded value)? loaded,
    TResult Function(CoachEvaluationStateFailure value)? failure,
    TResult Function(CoachEvaluationStateCreated value)? created,
    TResult Function(CoachEvaluationStateUpdated value)? updated,
    TResult Function(CoachEvaluationStateDeleted value)? deleted,
    required TResult orElse(),
  }) {
    if (updated != null) {
      return updated(this);
    }
    return orElse();
  }
}

abstract class CoachEvaluationStateUpdated implements CoachEvaluationState {
  const factory CoachEvaluationStateUpdated(final EvaluationModel evaluation) =
      _$CoachEvaluationStateUpdatedImpl;

  EvaluationModel get evaluation;

  /// Create a copy of CoachEvaluationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CoachEvaluationStateUpdatedImplCopyWith<_$CoachEvaluationStateUpdatedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CoachEvaluationStateDeletedImplCopyWith<$Res> {
  factory _$$CoachEvaluationStateDeletedImplCopyWith(
          _$CoachEvaluationStateDeletedImpl value,
          $Res Function(_$CoachEvaluationStateDeletedImpl) then) =
      __$$CoachEvaluationStateDeletedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({EvaluationModel evaluation});

  $EvaluationModelCopyWith<$Res> get evaluation;
}

/// @nodoc
class __$$CoachEvaluationStateDeletedImplCopyWithImpl<$Res>
    extends _$CoachEvaluationStateCopyWithImpl<$Res,
        _$CoachEvaluationStateDeletedImpl>
    implements _$$CoachEvaluationStateDeletedImplCopyWith<$Res> {
  __$$CoachEvaluationStateDeletedImplCopyWithImpl(
      _$CoachEvaluationStateDeletedImpl _value,
      $Res Function(_$CoachEvaluationStateDeletedImpl) _then)
      : super(_value, _then);

  /// Create a copy of CoachEvaluationState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? evaluation = null,
  }) {
    return _then(_$CoachEvaluationStateDeletedImpl(
      null == evaluation
          ? _value.evaluation
          : evaluation // ignore: cast_nullable_to_non_nullable
              as EvaluationModel,
    ));
  }

  /// Create a copy of CoachEvaluationState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $EvaluationModelCopyWith<$Res> get evaluation {
    return $EvaluationModelCopyWith<$Res>(_value.evaluation, (value) {
      return _then(_value.copyWith(evaluation: value));
    });
  }
}

/// @nodoc

class _$CoachEvaluationStateDeletedImpl implements CoachEvaluationStateDeleted {
  const _$CoachEvaluationStateDeletedImpl(this.evaluation);

  @override
  final EvaluationModel evaluation;

  @override
  String toString() {
    return 'CoachEvaluationState.deleted(evaluation: $evaluation)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CoachEvaluationStateDeletedImpl &&
            (identical(other.evaluation, evaluation) ||
                other.evaluation == evaluation));
  }

  @override
  int get hashCode => Object.hash(runtimeType, evaluation);

  /// Create a copy of CoachEvaluationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CoachEvaluationStateDeletedImplCopyWith<_$CoachEvaluationStateDeletedImpl>
      get copyWith => __$$CoachEvaluationStateDeletedImplCopyWithImpl<
          _$CoachEvaluationStateDeletedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<EvaluationModel> evaluations,
            List<EvaluationModel> filteredEvaluations)
        loaded,
    required TResult Function(String message) failure,
    required TResult Function(EvaluationModel evaluation) created,
    required TResult Function(EvaluationModel evaluation) updated,
    required TResult Function(EvaluationModel evaluation) deleted,
  }) {
    return deleted(evaluation);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<EvaluationModel> evaluations,
            List<EvaluationModel> filteredEvaluations)?
        loaded,
    TResult? Function(String message)? failure,
    TResult? Function(EvaluationModel evaluation)? created,
    TResult? Function(EvaluationModel evaluation)? updated,
    TResult? Function(EvaluationModel evaluation)? deleted,
  }) {
    return deleted?.call(evaluation);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<EvaluationModel> evaluations,
            List<EvaluationModel> filteredEvaluations)?
        loaded,
    TResult Function(String message)? failure,
    TResult Function(EvaluationModel evaluation)? created,
    TResult Function(EvaluationModel evaluation)? updated,
    TResult Function(EvaluationModel evaluation)? deleted,
    required TResult orElse(),
  }) {
    if (deleted != null) {
      return deleted(evaluation);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CoachEvaluationStateInitial value) initial,
    required TResult Function(CoachEvaluationStateLoading value) loading,
    required TResult Function(CoachEvaluationStateLoaded value) loaded,
    required TResult Function(CoachEvaluationStateFailure value) failure,
    required TResult Function(CoachEvaluationStateCreated value) created,
    required TResult Function(CoachEvaluationStateUpdated value) updated,
    required TResult Function(CoachEvaluationStateDeleted value) deleted,
  }) {
    return deleted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CoachEvaluationStateInitial value)? initial,
    TResult? Function(CoachEvaluationStateLoading value)? loading,
    TResult? Function(CoachEvaluationStateLoaded value)? loaded,
    TResult? Function(CoachEvaluationStateFailure value)? failure,
    TResult? Function(CoachEvaluationStateCreated value)? created,
    TResult? Function(CoachEvaluationStateUpdated value)? updated,
    TResult? Function(CoachEvaluationStateDeleted value)? deleted,
  }) {
    return deleted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CoachEvaluationStateInitial value)? initial,
    TResult Function(CoachEvaluationStateLoading value)? loading,
    TResult Function(CoachEvaluationStateLoaded value)? loaded,
    TResult Function(CoachEvaluationStateFailure value)? failure,
    TResult Function(CoachEvaluationStateCreated value)? created,
    TResult Function(CoachEvaluationStateUpdated value)? updated,
    TResult Function(CoachEvaluationStateDeleted value)? deleted,
    required TResult orElse(),
  }) {
    if (deleted != null) {
      return deleted(this);
    }
    return orElse();
  }
}

abstract class CoachEvaluationStateDeleted implements CoachEvaluationState {
  const factory CoachEvaluationStateDeleted(final EvaluationModel evaluation) =
      _$CoachEvaluationStateDeletedImpl;

  EvaluationModel get evaluation;

  /// Create a copy of CoachEvaluationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CoachEvaluationStateDeletedImplCopyWith<_$CoachEvaluationStateDeletedImpl>
      get copyWith => throw _privateConstructorUsedError;
}
