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
    required TResult Function(_GetEvaluations value) getEvaluations,
    required TResult Function(_FilterEvaluations value) filterEvaluations,
    required TResult Function(_Clear value) clear,
    required TResult Function(_Create value) create,
    required TResult Function(_Update value) update,
    required TResult Function(_Delete value) delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetEvaluations value)? getEvaluations,
    TResult? Function(_FilterEvaluations value)? filterEvaluations,
    TResult? Function(_Clear value)? clear,
    TResult? Function(_Create value)? create,
    TResult? Function(_Update value)? update,
    TResult? Function(_Delete value)? delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetEvaluations value)? getEvaluations,
    TResult Function(_FilterEvaluations value)? filterEvaluations,
    TResult Function(_Clear value)? clear,
    TResult Function(_Create value)? create,
    TResult Function(_Update value)? update,
    TResult Function(_Delete value)? delete,
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
    extends _$CoachEvaluationEventCopyWithImpl<$Res, _$GetEvaluationsImpl>
    implements _$$GetEvaluationsImplCopyWith<$Res> {
  __$$GetEvaluationsImplCopyWithImpl(
      _$GetEvaluationsImpl _value, $Res Function(_$GetEvaluationsImpl) _then)
      : super(_value, _then);

  /// Create a copy of CoachEvaluationEvent
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

class _$GetEvaluationsImpl implements _GetEvaluations {
  const _$GetEvaluationsImpl(this.params);

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
            other is _$GetEvaluationsImpl &&
            (identical(other.params, params) || other.params == params));
  }

  @override
  int get hashCode => Object.hash(runtimeType, params);

  /// Create a copy of CoachEvaluationEvent
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
    required TResult Function(_GetEvaluations value) getEvaluations,
    required TResult Function(_FilterEvaluations value) filterEvaluations,
    required TResult Function(_Clear value) clear,
    required TResult Function(_Create value) create,
    required TResult Function(_Update value) update,
    required TResult Function(_Delete value) delete,
  }) {
    return getEvaluations(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetEvaluations value)? getEvaluations,
    TResult? Function(_FilterEvaluations value)? filterEvaluations,
    TResult? Function(_Clear value)? clear,
    TResult? Function(_Create value)? create,
    TResult? Function(_Update value)? update,
    TResult? Function(_Delete value)? delete,
  }) {
    return getEvaluations?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetEvaluations value)? getEvaluations,
    TResult Function(_FilterEvaluations value)? filterEvaluations,
    TResult Function(_Clear value)? clear,
    TResult Function(_Create value)? create,
    TResult Function(_Update value)? update,
    TResult Function(_Delete value)? delete,
    required TResult orElse(),
  }) {
    if (getEvaluations != null) {
      return getEvaluations(this);
    }
    return orElse();
  }
}

abstract class _GetEvaluations implements CoachEvaluationEvent {
  const factory _GetEvaluations(final GetAllEvaluationParams params) =
      _$GetEvaluationsImpl;

  GetAllEvaluationParams get params;

  /// Create a copy of CoachEvaluationEvent
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
    extends _$CoachEvaluationEventCopyWithImpl<$Res, _$FilterEvaluationsImpl>
    implements _$$FilterEvaluationsImplCopyWith<$Res> {
  __$$FilterEvaluationsImplCopyWithImpl(_$FilterEvaluationsImpl _value,
      $Res Function(_$FilterEvaluationsImpl) _then)
      : super(_value, _then);

  /// Create a copy of CoachEvaluationEvent
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
    return 'CoachEvaluationEvent.filterEvaluations(query: $query)';
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

  /// Create a copy of CoachEvaluationEvent
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
    required TResult Function(_GetEvaluations value) getEvaluations,
    required TResult Function(_FilterEvaluations value) filterEvaluations,
    required TResult Function(_Clear value) clear,
    required TResult Function(_Create value) create,
    required TResult Function(_Update value) update,
    required TResult Function(_Delete value) delete,
  }) {
    return filterEvaluations(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetEvaluations value)? getEvaluations,
    TResult? Function(_FilterEvaluations value)? filterEvaluations,
    TResult? Function(_Clear value)? clear,
    TResult? Function(_Create value)? create,
    TResult? Function(_Update value)? update,
    TResult? Function(_Delete value)? delete,
  }) {
    return filterEvaluations?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetEvaluations value)? getEvaluations,
    TResult Function(_FilterEvaluations value)? filterEvaluations,
    TResult Function(_Clear value)? clear,
    TResult Function(_Create value)? create,
    TResult Function(_Update value)? update,
    TResult Function(_Delete value)? delete,
    required TResult orElse(),
  }) {
    if (filterEvaluations != null) {
      return filterEvaluations(this);
    }
    return orElse();
  }
}

abstract class _FilterEvaluations implements CoachEvaluationEvent {
  const factory _FilterEvaluations(final String query) =
      _$FilterEvaluationsImpl;

  String get query;

  /// Create a copy of CoachEvaluationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FilterEvaluationsImplCopyWith<_$FilterEvaluationsImpl> get copyWith =>
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
    extends _$CoachEvaluationEventCopyWithImpl<$Res, _$ClearImpl>
    implements _$$ClearImplCopyWith<$Res> {
  __$$ClearImplCopyWithImpl(
      _$ClearImpl _value, $Res Function(_$ClearImpl) _then)
      : super(_value, _then);

  /// Create a copy of CoachEvaluationEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ClearImpl implements _Clear {
  const _$ClearImpl();

  @override
  String toString() {
    return 'CoachEvaluationEvent.clear()';
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
    required TResult Function(_GetEvaluations value) getEvaluations,
    required TResult Function(_FilterEvaluations value) filterEvaluations,
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
    TResult? Function(_GetEvaluations value)? getEvaluations,
    TResult? Function(_FilterEvaluations value)? filterEvaluations,
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
    TResult Function(_GetEvaluations value)? getEvaluations,
    TResult Function(_FilterEvaluations value)? filterEvaluations,
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

abstract class _Clear implements CoachEvaluationEvent {
  const factory _Clear() = _$ClearImpl;
}

/// @nodoc
abstract class _$$CreateImplCopyWith<$Res> {
  factory _$$CreateImplCopyWith(
          _$CreateImpl value, $Res Function(_$CreateImpl) then) =
      __$$CreateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({CreateEvaluationParams params});

  $CreateEvaluationParamsCopyWith<$Res> get params;
}

/// @nodoc
class __$$CreateImplCopyWithImpl<$Res>
    extends _$CoachEvaluationEventCopyWithImpl<$Res, _$CreateImpl>
    implements _$$CreateImplCopyWith<$Res> {
  __$$CreateImplCopyWithImpl(
      _$CreateImpl _value, $Res Function(_$CreateImpl) _then)
      : super(_value, _then);

  /// Create a copy of CoachEvaluationEvent
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

class _$CreateImpl implements _Create {
  const _$CreateImpl(this.params);

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
            other is _$CreateImpl &&
            (identical(other.params, params) || other.params == params));
  }

  @override
  int get hashCode => Object.hash(runtimeType, params);

  /// Create a copy of CoachEvaluationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateImplCopyWith<_$CreateImpl> get copyWith =>
      __$$CreateImplCopyWithImpl<_$CreateImpl>(this, _$identity);

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
    required TResult Function(_GetEvaluations value) getEvaluations,
    required TResult Function(_FilterEvaluations value) filterEvaluations,
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
    TResult? Function(_GetEvaluations value)? getEvaluations,
    TResult? Function(_FilterEvaluations value)? filterEvaluations,
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
    TResult Function(_GetEvaluations value)? getEvaluations,
    TResult Function(_FilterEvaluations value)? filterEvaluations,
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

abstract class _Create implements CoachEvaluationEvent {
  const factory _Create(final CreateEvaluationParams params) = _$CreateImpl;

  CreateEvaluationParams get params;

  /// Create a copy of CoachEvaluationEvent
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
  $Res call({UpdateEvaluationParams params});

  $UpdateEvaluationParamsCopyWith<$Res> get params;
}

/// @nodoc
class __$$UpdateImplCopyWithImpl<$Res>
    extends _$CoachEvaluationEventCopyWithImpl<$Res, _$UpdateImpl>
    implements _$$UpdateImplCopyWith<$Res> {
  __$$UpdateImplCopyWithImpl(
      _$UpdateImpl _value, $Res Function(_$UpdateImpl) _then)
      : super(_value, _then);

  /// Create a copy of CoachEvaluationEvent
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

class _$UpdateImpl implements _Update {
  const _$UpdateImpl(this.params);

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
            other is _$UpdateImpl &&
            (identical(other.params, params) || other.params == params));
  }

  @override
  int get hashCode => Object.hash(runtimeType, params);

  /// Create a copy of CoachEvaluationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateImplCopyWith<_$UpdateImpl> get copyWith =>
      __$$UpdateImplCopyWithImpl<_$UpdateImpl>(this, _$identity);

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
    required TResult Function(_GetEvaluations value) getEvaluations,
    required TResult Function(_FilterEvaluations value) filterEvaluations,
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
    TResult? Function(_GetEvaluations value)? getEvaluations,
    TResult? Function(_FilterEvaluations value)? filterEvaluations,
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
    TResult Function(_GetEvaluations value)? getEvaluations,
    TResult Function(_FilterEvaluations value)? filterEvaluations,
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

abstract class _Update implements CoachEvaluationEvent {
  const factory _Update(final UpdateEvaluationParams params) = _$UpdateImpl;

  UpdateEvaluationParams get params;

  /// Create a copy of CoachEvaluationEvent
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
  $Res call({DeleteEvaluationParams params});

  $DeleteEvaluationParamsCopyWith<$Res> get params;
}

/// @nodoc
class __$$DeleteImplCopyWithImpl<$Res>
    extends _$CoachEvaluationEventCopyWithImpl<$Res, _$DeleteImpl>
    implements _$$DeleteImplCopyWith<$Res> {
  __$$DeleteImplCopyWithImpl(
      _$DeleteImpl _value, $Res Function(_$DeleteImpl) _then)
      : super(_value, _then);

  /// Create a copy of CoachEvaluationEvent
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

class _$DeleteImpl implements _Delete {
  const _$DeleteImpl(this.params);

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
            other is _$DeleteImpl &&
            (identical(other.params, params) || other.params == params));
  }

  @override
  int get hashCode => Object.hash(runtimeType, params);

  /// Create a copy of CoachEvaluationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteImplCopyWith<_$DeleteImpl> get copyWith =>
      __$$DeleteImplCopyWithImpl<_$DeleteImpl>(this, _$identity);

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
    required TResult Function(_GetEvaluations value) getEvaluations,
    required TResult Function(_FilterEvaluations value) filterEvaluations,
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
    TResult? Function(_GetEvaluations value)? getEvaluations,
    TResult? Function(_FilterEvaluations value)? filterEvaluations,
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
    TResult Function(_GetEvaluations value)? getEvaluations,
    TResult Function(_FilterEvaluations value)? filterEvaluations,
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

abstract class _Delete implements CoachEvaluationEvent {
  const factory _Delete(final DeleteEvaluationParams params) = _$DeleteImpl;

  DeleteEvaluationParams get params;

  /// Create a copy of CoachEvaluationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeleteImplCopyWith<_$DeleteImpl> get copyWith =>
      throw _privateConstructorUsedError;
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
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$CoachEvaluationStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of CoachEvaluationState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'CoachEvaluationState.initial()';
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

abstract class _Initial implements CoachEvaluationState {
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
    extends _$CoachEvaluationStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of CoachEvaluationState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'CoachEvaluationState.loading()';
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

abstract class _Loading implements CoachEvaluationState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$LoadedImplCopyWith<$Res> {
  factory _$$LoadedImplCopyWith(
          _$LoadedImpl value, $Res Function(_$LoadedImpl) then) =
      __$$LoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {List<EvaluationModel> evaluations,
      List<EvaluationModel> filteredEvaluations});
}

/// @nodoc
class __$$LoadedImplCopyWithImpl<$Res>
    extends _$CoachEvaluationStateCopyWithImpl<$Res, _$LoadedImpl>
    implements _$$LoadedImplCopyWith<$Res> {
  __$$LoadedImplCopyWithImpl(
      _$LoadedImpl _value, $Res Function(_$LoadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of CoachEvaluationState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? evaluations = null,
    Object? filteredEvaluations = null,
  }) {
    return _then(_$LoadedImpl(
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

class _$LoadedImpl implements _Loaded {
  const _$LoadedImpl(
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
            other is _$LoadedImpl &&
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
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      __$$LoadedImplCopyWithImpl<_$LoadedImpl>(this, _$identity);

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

abstract class _Loaded implements CoachEvaluationState {
  const factory _Loaded(
      {required final List<EvaluationModel> evaluations,
      required final List<EvaluationModel> filteredEvaluations}) = _$LoadedImpl;

  List<EvaluationModel> get evaluations;
  List<EvaluationModel> get filteredEvaluations;

  /// Create a copy of CoachEvaluationState
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
    extends _$CoachEvaluationStateCopyWithImpl<$Res, _$FailureImpl>
    implements _$$FailureImplCopyWith<$Res> {
  __$$FailureImplCopyWithImpl(
      _$FailureImpl _value, $Res Function(_$FailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of CoachEvaluationState
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
    return 'CoachEvaluationState.failure(message: $message)';
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

  /// Create a copy of CoachEvaluationState
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

abstract class _Failure implements CoachEvaluationState {
  const factory _Failure(final String message) = _$FailureImpl;

  String get message;

  /// Create a copy of CoachEvaluationState
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
  $Res call({EvaluationModel evaluation});

  $EvaluationModelCopyWith<$Res> get evaluation;
}

/// @nodoc
class __$$CreatedImplCopyWithImpl<$Res>
    extends _$CoachEvaluationStateCopyWithImpl<$Res, _$CreatedImpl>
    implements _$$CreatedImplCopyWith<$Res> {
  __$$CreatedImplCopyWithImpl(
      _$CreatedImpl _value, $Res Function(_$CreatedImpl) _then)
      : super(_value, _then);

  /// Create a copy of CoachEvaluationState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? evaluation = null,
  }) {
    return _then(_$CreatedImpl(
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

class _$CreatedImpl implements _Created {
  const _$CreatedImpl(this.evaluation);

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
            other is _$CreatedImpl &&
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
  _$$CreatedImplCopyWith<_$CreatedImpl> get copyWith =>
      __$$CreatedImplCopyWithImpl<_$CreatedImpl>(this, _$identity);

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

abstract class _Created implements CoachEvaluationState {
  const factory _Created(final EvaluationModel evaluation) = _$CreatedImpl;

  EvaluationModel get evaluation;

  /// Create a copy of CoachEvaluationState
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
  $Res call({EvaluationModel evaluation});

  $EvaluationModelCopyWith<$Res> get evaluation;
}

/// @nodoc
class __$$UpdatedImplCopyWithImpl<$Res>
    extends _$CoachEvaluationStateCopyWithImpl<$Res, _$UpdatedImpl>
    implements _$$UpdatedImplCopyWith<$Res> {
  __$$UpdatedImplCopyWithImpl(
      _$UpdatedImpl _value, $Res Function(_$UpdatedImpl) _then)
      : super(_value, _then);

  /// Create a copy of CoachEvaluationState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? evaluation = null,
  }) {
    return _then(_$UpdatedImpl(
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

class _$UpdatedImpl implements _Updated {
  const _$UpdatedImpl(this.evaluation);

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
            other is _$UpdatedImpl &&
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
  _$$UpdatedImplCopyWith<_$UpdatedImpl> get copyWith =>
      __$$UpdatedImplCopyWithImpl<_$UpdatedImpl>(this, _$identity);

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

abstract class _Updated implements CoachEvaluationState {
  const factory _Updated(final EvaluationModel evaluation) = _$UpdatedImpl;

  EvaluationModel get evaluation;

  /// Create a copy of CoachEvaluationState
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
  $Res call({EvaluationModel evaluation});

  $EvaluationModelCopyWith<$Res> get evaluation;
}

/// @nodoc
class __$$DeletedImplCopyWithImpl<$Res>
    extends _$CoachEvaluationStateCopyWithImpl<$Res, _$DeletedImpl>
    implements _$$DeletedImplCopyWith<$Res> {
  __$$DeletedImplCopyWithImpl(
      _$DeletedImpl _value, $Res Function(_$DeletedImpl) _then)
      : super(_value, _then);

  /// Create a copy of CoachEvaluationState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? evaluation = null,
  }) {
    return _then(_$DeletedImpl(
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

class _$DeletedImpl implements _Deleted {
  const _$DeletedImpl(this.evaluation);

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
            other is _$DeletedImpl &&
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
  _$$DeletedImplCopyWith<_$DeletedImpl> get copyWith =>
      __$$DeletedImplCopyWithImpl<_$DeletedImpl>(this, _$identity);

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

abstract class _Deleted implements CoachEvaluationState {
  const factory _Deleted(final EvaluationModel evaluation) = _$DeletedImpl;

  EvaluationModel get evaluation;

  /// Create a copy of CoachEvaluationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeletedImplCopyWith<_$DeletedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
