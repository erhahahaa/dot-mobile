// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'coach_exam_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CoachExamEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(GetAllExamParams params) getExams,
    required TResult Function(String query) filterExams,
    required TResult Function() clear,
    required TResult Function(CreateExamParams params) create,
    required TResult Function(UpdateExamParams params) update,
    required TResult Function(DeleteExamParams params) delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(GetAllExamParams params)? getExams,
    TResult? Function(String query)? filterExams,
    TResult? Function()? clear,
    TResult? Function(CreateExamParams params)? create,
    TResult? Function(UpdateExamParams params)? update,
    TResult? Function(DeleteExamParams params)? delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GetAllExamParams params)? getExams,
    TResult Function(String query)? filterExams,
    TResult Function()? clear,
    TResult Function(CreateExamParams params)? create,
    TResult Function(UpdateExamParams params)? update,
    TResult Function(DeleteExamParams params)? delete,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CoachExamEventGetExams value) getExams,
    required TResult Function(CoachExamEventFilterExams value) filterExams,
    required TResult Function(CoachExamEventClear value) clear,
    required TResult Function(CoachExamEventCreate value) create,
    required TResult Function(CoachExamEventUpdate value) update,
    required TResult Function(CoachExamEventDelete value) delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CoachExamEventGetExams value)? getExams,
    TResult? Function(CoachExamEventFilterExams value)? filterExams,
    TResult? Function(CoachExamEventClear value)? clear,
    TResult? Function(CoachExamEventCreate value)? create,
    TResult? Function(CoachExamEventUpdate value)? update,
    TResult? Function(CoachExamEventDelete value)? delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CoachExamEventGetExams value)? getExams,
    TResult Function(CoachExamEventFilterExams value)? filterExams,
    TResult Function(CoachExamEventClear value)? clear,
    TResult Function(CoachExamEventCreate value)? create,
    TResult Function(CoachExamEventUpdate value)? update,
    TResult Function(CoachExamEventDelete value)? delete,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CoachExamEventCopyWith<$Res> {
  factory $CoachExamEventCopyWith(
          CoachExamEvent value, $Res Function(CoachExamEvent) then) =
      _$CoachExamEventCopyWithImpl<$Res, CoachExamEvent>;
}

/// @nodoc
class _$CoachExamEventCopyWithImpl<$Res, $Val extends CoachExamEvent>
    implements $CoachExamEventCopyWith<$Res> {
  _$CoachExamEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CoachExamEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$CoachExamEventGetExamsImplCopyWith<$Res> {
  factory _$$CoachExamEventGetExamsImplCopyWith(
          _$CoachExamEventGetExamsImpl value,
          $Res Function(_$CoachExamEventGetExamsImpl) then) =
      __$$CoachExamEventGetExamsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({GetAllExamParams params});

  $GetAllExamParamsCopyWith<$Res> get params;
}

/// @nodoc
class __$$CoachExamEventGetExamsImplCopyWithImpl<$Res>
    extends _$CoachExamEventCopyWithImpl<$Res, _$CoachExamEventGetExamsImpl>
    implements _$$CoachExamEventGetExamsImplCopyWith<$Res> {
  __$$CoachExamEventGetExamsImplCopyWithImpl(
      _$CoachExamEventGetExamsImpl _value,
      $Res Function(_$CoachExamEventGetExamsImpl) _then)
      : super(_value, _then);

  /// Create a copy of CoachExamEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? params = null,
  }) {
    return _then(_$CoachExamEventGetExamsImpl(
      null == params
          ? _value.params
          : params // ignore: cast_nullable_to_non_nullable
              as GetAllExamParams,
    ));
  }

  /// Create a copy of CoachExamEvent
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

class _$CoachExamEventGetExamsImpl implements CoachExamEventGetExams {
  const _$CoachExamEventGetExamsImpl(this.params);

  @override
  final GetAllExamParams params;

  @override
  String toString() {
    return 'CoachExamEvent.getExams(params: $params)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CoachExamEventGetExamsImpl &&
            (identical(other.params, params) || other.params == params));
  }

  @override
  int get hashCode => Object.hash(runtimeType, params);

  /// Create a copy of CoachExamEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CoachExamEventGetExamsImplCopyWith<_$CoachExamEventGetExamsImpl>
      get copyWith => __$$CoachExamEventGetExamsImplCopyWithImpl<
          _$CoachExamEventGetExamsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(GetAllExamParams params) getExams,
    required TResult Function(String query) filterExams,
    required TResult Function() clear,
    required TResult Function(CreateExamParams params) create,
    required TResult Function(UpdateExamParams params) update,
    required TResult Function(DeleteExamParams params) delete,
  }) {
    return getExams(params);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(GetAllExamParams params)? getExams,
    TResult? Function(String query)? filterExams,
    TResult? Function()? clear,
    TResult? Function(CreateExamParams params)? create,
    TResult? Function(UpdateExamParams params)? update,
    TResult? Function(DeleteExamParams params)? delete,
  }) {
    return getExams?.call(params);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GetAllExamParams params)? getExams,
    TResult Function(String query)? filterExams,
    TResult Function()? clear,
    TResult Function(CreateExamParams params)? create,
    TResult Function(UpdateExamParams params)? update,
    TResult Function(DeleteExamParams params)? delete,
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
    required TResult Function(CoachExamEventGetExams value) getExams,
    required TResult Function(CoachExamEventFilterExams value) filterExams,
    required TResult Function(CoachExamEventClear value) clear,
    required TResult Function(CoachExamEventCreate value) create,
    required TResult Function(CoachExamEventUpdate value) update,
    required TResult Function(CoachExamEventDelete value) delete,
  }) {
    return getExams(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CoachExamEventGetExams value)? getExams,
    TResult? Function(CoachExamEventFilterExams value)? filterExams,
    TResult? Function(CoachExamEventClear value)? clear,
    TResult? Function(CoachExamEventCreate value)? create,
    TResult? Function(CoachExamEventUpdate value)? update,
    TResult? Function(CoachExamEventDelete value)? delete,
  }) {
    return getExams?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CoachExamEventGetExams value)? getExams,
    TResult Function(CoachExamEventFilterExams value)? filterExams,
    TResult Function(CoachExamEventClear value)? clear,
    TResult Function(CoachExamEventCreate value)? create,
    TResult Function(CoachExamEventUpdate value)? update,
    TResult Function(CoachExamEventDelete value)? delete,
    required TResult orElse(),
  }) {
    if (getExams != null) {
      return getExams(this);
    }
    return orElse();
  }
}

abstract class CoachExamEventGetExams implements CoachExamEvent {
  const factory CoachExamEventGetExams(final GetAllExamParams params) =
      _$CoachExamEventGetExamsImpl;

  GetAllExamParams get params;

  /// Create a copy of CoachExamEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CoachExamEventGetExamsImplCopyWith<_$CoachExamEventGetExamsImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CoachExamEventFilterExamsImplCopyWith<$Res> {
  factory _$$CoachExamEventFilterExamsImplCopyWith(
          _$CoachExamEventFilterExamsImpl value,
          $Res Function(_$CoachExamEventFilterExamsImpl) then) =
      __$$CoachExamEventFilterExamsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String query});
}

/// @nodoc
class __$$CoachExamEventFilterExamsImplCopyWithImpl<$Res>
    extends _$CoachExamEventCopyWithImpl<$Res, _$CoachExamEventFilterExamsImpl>
    implements _$$CoachExamEventFilterExamsImplCopyWith<$Res> {
  __$$CoachExamEventFilterExamsImplCopyWithImpl(
      _$CoachExamEventFilterExamsImpl _value,
      $Res Function(_$CoachExamEventFilterExamsImpl) _then)
      : super(_value, _then);

  /// Create a copy of CoachExamEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
  }) {
    return _then(_$CoachExamEventFilterExamsImpl(
      null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CoachExamEventFilterExamsImpl implements CoachExamEventFilterExams {
  const _$CoachExamEventFilterExamsImpl(this.query);

  @override
  final String query;

  @override
  String toString() {
    return 'CoachExamEvent.filterExams(query: $query)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CoachExamEventFilterExamsImpl &&
            (identical(other.query, query) || other.query == query));
  }

  @override
  int get hashCode => Object.hash(runtimeType, query);

  /// Create a copy of CoachExamEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CoachExamEventFilterExamsImplCopyWith<_$CoachExamEventFilterExamsImpl>
      get copyWith => __$$CoachExamEventFilterExamsImplCopyWithImpl<
          _$CoachExamEventFilterExamsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(GetAllExamParams params) getExams,
    required TResult Function(String query) filterExams,
    required TResult Function() clear,
    required TResult Function(CreateExamParams params) create,
    required TResult Function(UpdateExamParams params) update,
    required TResult Function(DeleteExamParams params) delete,
  }) {
    return filterExams(query);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(GetAllExamParams params)? getExams,
    TResult? Function(String query)? filterExams,
    TResult? Function()? clear,
    TResult? Function(CreateExamParams params)? create,
    TResult? Function(UpdateExamParams params)? update,
    TResult? Function(DeleteExamParams params)? delete,
  }) {
    return filterExams?.call(query);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GetAllExamParams params)? getExams,
    TResult Function(String query)? filterExams,
    TResult Function()? clear,
    TResult Function(CreateExamParams params)? create,
    TResult Function(UpdateExamParams params)? update,
    TResult Function(DeleteExamParams params)? delete,
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
    required TResult Function(CoachExamEventGetExams value) getExams,
    required TResult Function(CoachExamEventFilterExams value) filterExams,
    required TResult Function(CoachExamEventClear value) clear,
    required TResult Function(CoachExamEventCreate value) create,
    required TResult Function(CoachExamEventUpdate value) update,
    required TResult Function(CoachExamEventDelete value) delete,
  }) {
    return filterExams(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CoachExamEventGetExams value)? getExams,
    TResult? Function(CoachExamEventFilterExams value)? filterExams,
    TResult? Function(CoachExamEventClear value)? clear,
    TResult? Function(CoachExamEventCreate value)? create,
    TResult? Function(CoachExamEventUpdate value)? update,
    TResult? Function(CoachExamEventDelete value)? delete,
  }) {
    return filterExams?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CoachExamEventGetExams value)? getExams,
    TResult Function(CoachExamEventFilterExams value)? filterExams,
    TResult Function(CoachExamEventClear value)? clear,
    TResult Function(CoachExamEventCreate value)? create,
    TResult Function(CoachExamEventUpdate value)? update,
    TResult Function(CoachExamEventDelete value)? delete,
    required TResult orElse(),
  }) {
    if (filterExams != null) {
      return filterExams(this);
    }
    return orElse();
  }
}

abstract class CoachExamEventFilterExams implements CoachExamEvent {
  const factory CoachExamEventFilterExams(final String query) =
      _$CoachExamEventFilterExamsImpl;

  String get query;

  /// Create a copy of CoachExamEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CoachExamEventFilterExamsImplCopyWith<_$CoachExamEventFilterExamsImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CoachExamEventClearImplCopyWith<$Res> {
  factory _$$CoachExamEventClearImplCopyWith(_$CoachExamEventClearImpl value,
          $Res Function(_$CoachExamEventClearImpl) then) =
      __$$CoachExamEventClearImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CoachExamEventClearImplCopyWithImpl<$Res>
    extends _$CoachExamEventCopyWithImpl<$Res, _$CoachExamEventClearImpl>
    implements _$$CoachExamEventClearImplCopyWith<$Res> {
  __$$CoachExamEventClearImplCopyWithImpl(_$CoachExamEventClearImpl _value,
      $Res Function(_$CoachExamEventClearImpl) _then)
      : super(_value, _then);

  /// Create a copy of CoachExamEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$CoachExamEventClearImpl implements CoachExamEventClear {
  const _$CoachExamEventClearImpl();

  @override
  String toString() {
    return 'CoachExamEvent.clear()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CoachExamEventClearImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(GetAllExamParams params) getExams,
    required TResult Function(String query) filterExams,
    required TResult Function() clear,
    required TResult Function(CreateExamParams params) create,
    required TResult Function(UpdateExamParams params) update,
    required TResult Function(DeleteExamParams params) delete,
  }) {
    return clear();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(GetAllExamParams params)? getExams,
    TResult? Function(String query)? filterExams,
    TResult? Function()? clear,
    TResult? Function(CreateExamParams params)? create,
    TResult? Function(UpdateExamParams params)? update,
    TResult? Function(DeleteExamParams params)? delete,
  }) {
    return clear?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GetAllExamParams params)? getExams,
    TResult Function(String query)? filterExams,
    TResult Function()? clear,
    TResult Function(CreateExamParams params)? create,
    TResult Function(UpdateExamParams params)? update,
    TResult Function(DeleteExamParams params)? delete,
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
    required TResult Function(CoachExamEventGetExams value) getExams,
    required TResult Function(CoachExamEventFilterExams value) filterExams,
    required TResult Function(CoachExamEventClear value) clear,
    required TResult Function(CoachExamEventCreate value) create,
    required TResult Function(CoachExamEventUpdate value) update,
    required TResult Function(CoachExamEventDelete value) delete,
  }) {
    return clear(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CoachExamEventGetExams value)? getExams,
    TResult? Function(CoachExamEventFilterExams value)? filterExams,
    TResult? Function(CoachExamEventClear value)? clear,
    TResult? Function(CoachExamEventCreate value)? create,
    TResult? Function(CoachExamEventUpdate value)? update,
    TResult? Function(CoachExamEventDelete value)? delete,
  }) {
    return clear?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CoachExamEventGetExams value)? getExams,
    TResult Function(CoachExamEventFilterExams value)? filterExams,
    TResult Function(CoachExamEventClear value)? clear,
    TResult Function(CoachExamEventCreate value)? create,
    TResult Function(CoachExamEventUpdate value)? update,
    TResult Function(CoachExamEventDelete value)? delete,
    required TResult orElse(),
  }) {
    if (clear != null) {
      return clear(this);
    }
    return orElse();
  }
}

abstract class CoachExamEventClear implements CoachExamEvent {
  const factory CoachExamEventClear() = _$CoachExamEventClearImpl;
}

/// @nodoc
abstract class _$$CoachExamEventCreateImplCopyWith<$Res> {
  factory _$$CoachExamEventCreateImplCopyWith(_$CoachExamEventCreateImpl value,
          $Res Function(_$CoachExamEventCreateImpl) then) =
      __$$CoachExamEventCreateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({CreateExamParams params});

  $CreateExamParamsCopyWith<$Res> get params;
}

/// @nodoc
class __$$CoachExamEventCreateImplCopyWithImpl<$Res>
    extends _$CoachExamEventCopyWithImpl<$Res, _$CoachExamEventCreateImpl>
    implements _$$CoachExamEventCreateImplCopyWith<$Res> {
  __$$CoachExamEventCreateImplCopyWithImpl(_$CoachExamEventCreateImpl _value,
      $Res Function(_$CoachExamEventCreateImpl) _then)
      : super(_value, _then);

  /// Create a copy of CoachExamEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? params = null,
  }) {
    return _then(_$CoachExamEventCreateImpl(
      null == params
          ? _value.params
          : params // ignore: cast_nullable_to_non_nullable
              as CreateExamParams,
    ));
  }

  /// Create a copy of CoachExamEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CreateExamParamsCopyWith<$Res> get params {
    return $CreateExamParamsCopyWith<$Res>(_value.params, (value) {
      return _then(_value.copyWith(params: value));
    });
  }
}

/// @nodoc

class _$CoachExamEventCreateImpl implements CoachExamEventCreate {
  const _$CoachExamEventCreateImpl(this.params);

  @override
  final CreateExamParams params;

  @override
  String toString() {
    return 'CoachExamEvent.create(params: $params)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CoachExamEventCreateImpl &&
            (identical(other.params, params) || other.params == params));
  }

  @override
  int get hashCode => Object.hash(runtimeType, params);

  /// Create a copy of CoachExamEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CoachExamEventCreateImplCopyWith<_$CoachExamEventCreateImpl>
      get copyWith =>
          __$$CoachExamEventCreateImplCopyWithImpl<_$CoachExamEventCreateImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(GetAllExamParams params) getExams,
    required TResult Function(String query) filterExams,
    required TResult Function() clear,
    required TResult Function(CreateExamParams params) create,
    required TResult Function(UpdateExamParams params) update,
    required TResult Function(DeleteExamParams params) delete,
  }) {
    return create(params);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(GetAllExamParams params)? getExams,
    TResult? Function(String query)? filterExams,
    TResult? Function()? clear,
    TResult? Function(CreateExamParams params)? create,
    TResult? Function(UpdateExamParams params)? update,
    TResult? Function(DeleteExamParams params)? delete,
  }) {
    return create?.call(params);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GetAllExamParams params)? getExams,
    TResult Function(String query)? filterExams,
    TResult Function()? clear,
    TResult Function(CreateExamParams params)? create,
    TResult Function(UpdateExamParams params)? update,
    TResult Function(DeleteExamParams params)? delete,
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
    required TResult Function(CoachExamEventGetExams value) getExams,
    required TResult Function(CoachExamEventFilterExams value) filterExams,
    required TResult Function(CoachExamEventClear value) clear,
    required TResult Function(CoachExamEventCreate value) create,
    required TResult Function(CoachExamEventUpdate value) update,
    required TResult Function(CoachExamEventDelete value) delete,
  }) {
    return create(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CoachExamEventGetExams value)? getExams,
    TResult? Function(CoachExamEventFilterExams value)? filterExams,
    TResult? Function(CoachExamEventClear value)? clear,
    TResult? Function(CoachExamEventCreate value)? create,
    TResult? Function(CoachExamEventUpdate value)? update,
    TResult? Function(CoachExamEventDelete value)? delete,
  }) {
    return create?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CoachExamEventGetExams value)? getExams,
    TResult Function(CoachExamEventFilterExams value)? filterExams,
    TResult Function(CoachExamEventClear value)? clear,
    TResult Function(CoachExamEventCreate value)? create,
    TResult Function(CoachExamEventUpdate value)? update,
    TResult Function(CoachExamEventDelete value)? delete,
    required TResult orElse(),
  }) {
    if (create != null) {
      return create(this);
    }
    return orElse();
  }
}

abstract class CoachExamEventCreate implements CoachExamEvent {
  const factory CoachExamEventCreate(final CreateExamParams params) =
      _$CoachExamEventCreateImpl;

  CreateExamParams get params;

  /// Create a copy of CoachExamEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CoachExamEventCreateImplCopyWith<_$CoachExamEventCreateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CoachExamEventUpdateImplCopyWith<$Res> {
  factory _$$CoachExamEventUpdateImplCopyWith(_$CoachExamEventUpdateImpl value,
          $Res Function(_$CoachExamEventUpdateImpl) then) =
      __$$CoachExamEventUpdateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({UpdateExamParams params});

  $UpdateExamParamsCopyWith<$Res> get params;
}

/// @nodoc
class __$$CoachExamEventUpdateImplCopyWithImpl<$Res>
    extends _$CoachExamEventCopyWithImpl<$Res, _$CoachExamEventUpdateImpl>
    implements _$$CoachExamEventUpdateImplCopyWith<$Res> {
  __$$CoachExamEventUpdateImplCopyWithImpl(_$CoachExamEventUpdateImpl _value,
      $Res Function(_$CoachExamEventUpdateImpl) _then)
      : super(_value, _then);

  /// Create a copy of CoachExamEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? params = null,
  }) {
    return _then(_$CoachExamEventUpdateImpl(
      null == params
          ? _value.params
          : params // ignore: cast_nullable_to_non_nullable
              as UpdateExamParams,
    ));
  }

  /// Create a copy of CoachExamEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UpdateExamParamsCopyWith<$Res> get params {
    return $UpdateExamParamsCopyWith<$Res>(_value.params, (value) {
      return _then(_value.copyWith(params: value));
    });
  }
}

/// @nodoc

class _$CoachExamEventUpdateImpl implements CoachExamEventUpdate {
  const _$CoachExamEventUpdateImpl(this.params);

  @override
  final UpdateExamParams params;

  @override
  String toString() {
    return 'CoachExamEvent.update(params: $params)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CoachExamEventUpdateImpl &&
            (identical(other.params, params) || other.params == params));
  }

  @override
  int get hashCode => Object.hash(runtimeType, params);

  /// Create a copy of CoachExamEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CoachExamEventUpdateImplCopyWith<_$CoachExamEventUpdateImpl>
      get copyWith =>
          __$$CoachExamEventUpdateImplCopyWithImpl<_$CoachExamEventUpdateImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(GetAllExamParams params) getExams,
    required TResult Function(String query) filterExams,
    required TResult Function() clear,
    required TResult Function(CreateExamParams params) create,
    required TResult Function(UpdateExamParams params) update,
    required TResult Function(DeleteExamParams params) delete,
  }) {
    return update(params);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(GetAllExamParams params)? getExams,
    TResult? Function(String query)? filterExams,
    TResult? Function()? clear,
    TResult? Function(CreateExamParams params)? create,
    TResult? Function(UpdateExamParams params)? update,
    TResult? Function(DeleteExamParams params)? delete,
  }) {
    return update?.call(params);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GetAllExamParams params)? getExams,
    TResult Function(String query)? filterExams,
    TResult Function()? clear,
    TResult Function(CreateExamParams params)? create,
    TResult Function(UpdateExamParams params)? update,
    TResult Function(DeleteExamParams params)? delete,
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
    required TResult Function(CoachExamEventGetExams value) getExams,
    required TResult Function(CoachExamEventFilterExams value) filterExams,
    required TResult Function(CoachExamEventClear value) clear,
    required TResult Function(CoachExamEventCreate value) create,
    required TResult Function(CoachExamEventUpdate value) update,
    required TResult Function(CoachExamEventDelete value) delete,
  }) {
    return update(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CoachExamEventGetExams value)? getExams,
    TResult? Function(CoachExamEventFilterExams value)? filterExams,
    TResult? Function(CoachExamEventClear value)? clear,
    TResult? Function(CoachExamEventCreate value)? create,
    TResult? Function(CoachExamEventUpdate value)? update,
    TResult? Function(CoachExamEventDelete value)? delete,
  }) {
    return update?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CoachExamEventGetExams value)? getExams,
    TResult Function(CoachExamEventFilterExams value)? filterExams,
    TResult Function(CoachExamEventClear value)? clear,
    TResult Function(CoachExamEventCreate value)? create,
    TResult Function(CoachExamEventUpdate value)? update,
    TResult Function(CoachExamEventDelete value)? delete,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(this);
    }
    return orElse();
  }
}

abstract class CoachExamEventUpdate implements CoachExamEvent {
  const factory CoachExamEventUpdate(final UpdateExamParams params) =
      _$CoachExamEventUpdateImpl;

  UpdateExamParams get params;

  /// Create a copy of CoachExamEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CoachExamEventUpdateImplCopyWith<_$CoachExamEventUpdateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CoachExamEventDeleteImplCopyWith<$Res> {
  factory _$$CoachExamEventDeleteImplCopyWith(_$CoachExamEventDeleteImpl value,
          $Res Function(_$CoachExamEventDeleteImpl) then) =
      __$$CoachExamEventDeleteImplCopyWithImpl<$Res>;
  @useResult
  $Res call({DeleteExamParams params});

  $DeleteExamParamsCopyWith<$Res> get params;
}

/// @nodoc
class __$$CoachExamEventDeleteImplCopyWithImpl<$Res>
    extends _$CoachExamEventCopyWithImpl<$Res, _$CoachExamEventDeleteImpl>
    implements _$$CoachExamEventDeleteImplCopyWith<$Res> {
  __$$CoachExamEventDeleteImplCopyWithImpl(_$CoachExamEventDeleteImpl _value,
      $Res Function(_$CoachExamEventDeleteImpl) _then)
      : super(_value, _then);

  /// Create a copy of CoachExamEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? params = null,
  }) {
    return _then(_$CoachExamEventDeleteImpl(
      null == params
          ? _value.params
          : params // ignore: cast_nullable_to_non_nullable
              as DeleteExamParams,
    ));
  }

  /// Create a copy of CoachExamEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DeleteExamParamsCopyWith<$Res> get params {
    return $DeleteExamParamsCopyWith<$Res>(_value.params, (value) {
      return _then(_value.copyWith(params: value));
    });
  }
}

/// @nodoc

class _$CoachExamEventDeleteImpl implements CoachExamEventDelete {
  const _$CoachExamEventDeleteImpl(this.params);

  @override
  final DeleteExamParams params;

  @override
  String toString() {
    return 'CoachExamEvent.delete(params: $params)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CoachExamEventDeleteImpl &&
            (identical(other.params, params) || other.params == params));
  }

  @override
  int get hashCode => Object.hash(runtimeType, params);

  /// Create a copy of CoachExamEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CoachExamEventDeleteImplCopyWith<_$CoachExamEventDeleteImpl>
      get copyWith =>
          __$$CoachExamEventDeleteImplCopyWithImpl<_$CoachExamEventDeleteImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(GetAllExamParams params) getExams,
    required TResult Function(String query) filterExams,
    required TResult Function() clear,
    required TResult Function(CreateExamParams params) create,
    required TResult Function(UpdateExamParams params) update,
    required TResult Function(DeleteExamParams params) delete,
  }) {
    return delete(params);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(GetAllExamParams params)? getExams,
    TResult? Function(String query)? filterExams,
    TResult? Function()? clear,
    TResult? Function(CreateExamParams params)? create,
    TResult? Function(UpdateExamParams params)? update,
    TResult? Function(DeleteExamParams params)? delete,
  }) {
    return delete?.call(params);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GetAllExamParams params)? getExams,
    TResult Function(String query)? filterExams,
    TResult Function()? clear,
    TResult Function(CreateExamParams params)? create,
    TResult Function(UpdateExamParams params)? update,
    TResult Function(DeleteExamParams params)? delete,
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
    required TResult Function(CoachExamEventGetExams value) getExams,
    required TResult Function(CoachExamEventFilterExams value) filterExams,
    required TResult Function(CoachExamEventClear value) clear,
    required TResult Function(CoachExamEventCreate value) create,
    required TResult Function(CoachExamEventUpdate value) update,
    required TResult Function(CoachExamEventDelete value) delete,
  }) {
    return delete(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CoachExamEventGetExams value)? getExams,
    TResult? Function(CoachExamEventFilterExams value)? filterExams,
    TResult? Function(CoachExamEventClear value)? clear,
    TResult? Function(CoachExamEventCreate value)? create,
    TResult? Function(CoachExamEventUpdate value)? update,
    TResult? Function(CoachExamEventDelete value)? delete,
  }) {
    return delete?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CoachExamEventGetExams value)? getExams,
    TResult Function(CoachExamEventFilterExams value)? filterExams,
    TResult Function(CoachExamEventClear value)? clear,
    TResult Function(CoachExamEventCreate value)? create,
    TResult Function(CoachExamEventUpdate value)? update,
    TResult Function(CoachExamEventDelete value)? delete,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete(this);
    }
    return orElse();
  }
}

abstract class CoachExamEventDelete implements CoachExamEvent {
  const factory CoachExamEventDelete(final DeleteExamParams params) =
      _$CoachExamEventDeleteImpl;

  DeleteExamParams get params;

  /// Create a copy of CoachExamEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CoachExamEventDeleteImplCopyWith<_$CoachExamEventDeleteImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CoachExamState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            List<ExamModel> exams, List<ExamModel> filteredExams)
        loaded,
    required TResult Function(String message) failure,
    required TResult Function(ExamModel exam) created,
    required TResult Function(ExamModel exam) updated,
    required TResult Function(ExamModel exam) deleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<ExamModel> exams, List<ExamModel> filteredExams)?
        loaded,
    TResult? Function(String message)? failure,
    TResult? Function(ExamModel exam)? created,
    TResult? Function(ExamModel exam)? updated,
    TResult? Function(ExamModel exam)? deleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ExamModel> exams, List<ExamModel> filteredExams)?
        loaded,
    TResult Function(String message)? failure,
    TResult Function(ExamModel exam)? created,
    TResult Function(ExamModel exam)? updated,
    TResult Function(ExamModel exam)? deleted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CoachExamStateInitial value) initial,
    required TResult Function(CoachExamStateLoading value) loading,
    required TResult Function(CoachExamStateLoaded value) loaded,
    required TResult Function(CoachExamStateFailure value) failure,
    required TResult Function(CoachExamStateCreated value) created,
    required TResult Function(CoachExamStateUpdated value) updated,
    required TResult Function(CoachExamStateDeleted value) deleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CoachExamStateInitial value)? initial,
    TResult? Function(CoachExamStateLoading value)? loading,
    TResult? Function(CoachExamStateLoaded value)? loaded,
    TResult? Function(CoachExamStateFailure value)? failure,
    TResult? Function(CoachExamStateCreated value)? created,
    TResult? Function(CoachExamStateUpdated value)? updated,
    TResult? Function(CoachExamStateDeleted value)? deleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CoachExamStateInitial value)? initial,
    TResult Function(CoachExamStateLoading value)? loading,
    TResult Function(CoachExamStateLoaded value)? loaded,
    TResult Function(CoachExamStateFailure value)? failure,
    TResult Function(CoachExamStateCreated value)? created,
    TResult Function(CoachExamStateUpdated value)? updated,
    TResult Function(CoachExamStateDeleted value)? deleted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CoachExamStateCopyWith<$Res> {
  factory $CoachExamStateCopyWith(
          CoachExamState value, $Res Function(CoachExamState) then) =
      _$CoachExamStateCopyWithImpl<$Res, CoachExamState>;
}

/// @nodoc
class _$CoachExamStateCopyWithImpl<$Res, $Val extends CoachExamState>
    implements $CoachExamStateCopyWith<$Res> {
  _$CoachExamStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CoachExamState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$CoachExamStateInitialImplCopyWith<$Res> {
  factory _$$CoachExamStateInitialImplCopyWith(
          _$CoachExamStateInitialImpl value,
          $Res Function(_$CoachExamStateInitialImpl) then) =
      __$$CoachExamStateInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CoachExamStateInitialImplCopyWithImpl<$Res>
    extends _$CoachExamStateCopyWithImpl<$Res, _$CoachExamStateInitialImpl>
    implements _$$CoachExamStateInitialImplCopyWith<$Res> {
  __$$CoachExamStateInitialImplCopyWithImpl(_$CoachExamStateInitialImpl _value,
      $Res Function(_$CoachExamStateInitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of CoachExamState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$CoachExamStateInitialImpl implements CoachExamStateInitial {
  const _$CoachExamStateInitialImpl();

  @override
  String toString() {
    return 'CoachExamState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CoachExamStateInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            List<ExamModel> exams, List<ExamModel> filteredExams)
        loaded,
    required TResult Function(String message) failure,
    required TResult Function(ExamModel exam) created,
    required TResult Function(ExamModel exam) updated,
    required TResult Function(ExamModel exam) deleted,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<ExamModel> exams, List<ExamModel> filteredExams)?
        loaded,
    TResult? Function(String message)? failure,
    TResult? Function(ExamModel exam)? created,
    TResult? Function(ExamModel exam)? updated,
    TResult? Function(ExamModel exam)? deleted,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ExamModel> exams, List<ExamModel> filteredExams)?
        loaded,
    TResult Function(String message)? failure,
    TResult Function(ExamModel exam)? created,
    TResult Function(ExamModel exam)? updated,
    TResult Function(ExamModel exam)? deleted,
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
    required TResult Function(CoachExamStateInitial value) initial,
    required TResult Function(CoachExamStateLoading value) loading,
    required TResult Function(CoachExamStateLoaded value) loaded,
    required TResult Function(CoachExamStateFailure value) failure,
    required TResult Function(CoachExamStateCreated value) created,
    required TResult Function(CoachExamStateUpdated value) updated,
    required TResult Function(CoachExamStateDeleted value) deleted,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CoachExamStateInitial value)? initial,
    TResult? Function(CoachExamStateLoading value)? loading,
    TResult? Function(CoachExamStateLoaded value)? loaded,
    TResult? Function(CoachExamStateFailure value)? failure,
    TResult? Function(CoachExamStateCreated value)? created,
    TResult? Function(CoachExamStateUpdated value)? updated,
    TResult? Function(CoachExamStateDeleted value)? deleted,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CoachExamStateInitial value)? initial,
    TResult Function(CoachExamStateLoading value)? loading,
    TResult Function(CoachExamStateLoaded value)? loaded,
    TResult Function(CoachExamStateFailure value)? failure,
    TResult Function(CoachExamStateCreated value)? created,
    TResult Function(CoachExamStateUpdated value)? updated,
    TResult Function(CoachExamStateDeleted value)? deleted,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class CoachExamStateInitial implements CoachExamState {
  const factory CoachExamStateInitial() = _$CoachExamStateInitialImpl;
}

/// @nodoc
abstract class _$$CoachExamStateLoadingImplCopyWith<$Res> {
  factory _$$CoachExamStateLoadingImplCopyWith(
          _$CoachExamStateLoadingImpl value,
          $Res Function(_$CoachExamStateLoadingImpl) then) =
      __$$CoachExamStateLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CoachExamStateLoadingImplCopyWithImpl<$Res>
    extends _$CoachExamStateCopyWithImpl<$Res, _$CoachExamStateLoadingImpl>
    implements _$$CoachExamStateLoadingImplCopyWith<$Res> {
  __$$CoachExamStateLoadingImplCopyWithImpl(_$CoachExamStateLoadingImpl _value,
      $Res Function(_$CoachExamStateLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of CoachExamState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$CoachExamStateLoadingImpl implements CoachExamStateLoading {
  const _$CoachExamStateLoadingImpl();

  @override
  String toString() {
    return 'CoachExamState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CoachExamStateLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            List<ExamModel> exams, List<ExamModel> filteredExams)
        loaded,
    required TResult Function(String message) failure,
    required TResult Function(ExamModel exam) created,
    required TResult Function(ExamModel exam) updated,
    required TResult Function(ExamModel exam) deleted,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<ExamModel> exams, List<ExamModel> filteredExams)?
        loaded,
    TResult? Function(String message)? failure,
    TResult? Function(ExamModel exam)? created,
    TResult? Function(ExamModel exam)? updated,
    TResult? Function(ExamModel exam)? deleted,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ExamModel> exams, List<ExamModel> filteredExams)?
        loaded,
    TResult Function(String message)? failure,
    TResult Function(ExamModel exam)? created,
    TResult Function(ExamModel exam)? updated,
    TResult Function(ExamModel exam)? deleted,
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
    required TResult Function(CoachExamStateInitial value) initial,
    required TResult Function(CoachExamStateLoading value) loading,
    required TResult Function(CoachExamStateLoaded value) loaded,
    required TResult Function(CoachExamStateFailure value) failure,
    required TResult Function(CoachExamStateCreated value) created,
    required TResult Function(CoachExamStateUpdated value) updated,
    required TResult Function(CoachExamStateDeleted value) deleted,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CoachExamStateInitial value)? initial,
    TResult? Function(CoachExamStateLoading value)? loading,
    TResult? Function(CoachExamStateLoaded value)? loaded,
    TResult? Function(CoachExamStateFailure value)? failure,
    TResult? Function(CoachExamStateCreated value)? created,
    TResult? Function(CoachExamStateUpdated value)? updated,
    TResult? Function(CoachExamStateDeleted value)? deleted,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CoachExamStateInitial value)? initial,
    TResult Function(CoachExamStateLoading value)? loading,
    TResult Function(CoachExamStateLoaded value)? loaded,
    TResult Function(CoachExamStateFailure value)? failure,
    TResult Function(CoachExamStateCreated value)? created,
    TResult Function(CoachExamStateUpdated value)? updated,
    TResult Function(CoachExamStateDeleted value)? deleted,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class CoachExamStateLoading implements CoachExamState {
  const factory CoachExamStateLoading() = _$CoachExamStateLoadingImpl;
}

/// @nodoc
abstract class _$$CoachExamStateLoadedImplCopyWith<$Res> {
  factory _$$CoachExamStateLoadedImplCopyWith(_$CoachExamStateLoadedImpl value,
          $Res Function(_$CoachExamStateLoadedImpl) then) =
      __$$CoachExamStateLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<ExamModel> exams, List<ExamModel> filteredExams});
}

/// @nodoc
class __$$CoachExamStateLoadedImplCopyWithImpl<$Res>
    extends _$CoachExamStateCopyWithImpl<$Res, _$CoachExamStateLoadedImpl>
    implements _$$CoachExamStateLoadedImplCopyWith<$Res> {
  __$$CoachExamStateLoadedImplCopyWithImpl(_$CoachExamStateLoadedImpl _value,
      $Res Function(_$CoachExamStateLoadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of CoachExamState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? exams = null,
    Object? filteredExams = null,
  }) {
    return _then(_$CoachExamStateLoadedImpl(
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

class _$CoachExamStateLoadedImpl implements CoachExamStateLoaded {
  const _$CoachExamStateLoadedImpl(
      {required final List<ExamModel> exams,
      required final List<ExamModel> filteredExams})
      : _exams = exams,
        _filteredExams = filteredExams;

  final List<ExamModel> _exams;
  @override
  List<ExamModel> get exams {
    if (_exams is EqualUnmodifiableListView) return _exams;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_exams);
  }

  final List<ExamModel> _filteredExams;
  @override
  List<ExamModel> get filteredExams {
    if (_filteredExams is EqualUnmodifiableListView) return _filteredExams;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_filteredExams);
  }

  @override
  String toString() {
    return 'CoachExamState.loaded(exams: $exams, filteredExams: $filteredExams)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CoachExamStateLoadedImpl &&
            const DeepCollectionEquality().equals(other._exams, _exams) &&
            const DeepCollectionEquality()
                .equals(other._filteredExams, _filteredExams));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_exams),
      const DeepCollectionEquality().hash(_filteredExams));

  /// Create a copy of CoachExamState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CoachExamStateLoadedImplCopyWith<_$CoachExamStateLoadedImpl>
      get copyWith =>
          __$$CoachExamStateLoadedImplCopyWithImpl<_$CoachExamStateLoadedImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            List<ExamModel> exams, List<ExamModel> filteredExams)
        loaded,
    required TResult Function(String message) failure,
    required TResult Function(ExamModel exam) created,
    required TResult Function(ExamModel exam) updated,
    required TResult Function(ExamModel exam) deleted,
  }) {
    return loaded(exams, filteredExams);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<ExamModel> exams, List<ExamModel> filteredExams)?
        loaded,
    TResult? Function(String message)? failure,
    TResult? Function(ExamModel exam)? created,
    TResult? Function(ExamModel exam)? updated,
    TResult? Function(ExamModel exam)? deleted,
  }) {
    return loaded?.call(exams, filteredExams);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ExamModel> exams, List<ExamModel> filteredExams)?
        loaded,
    TResult Function(String message)? failure,
    TResult Function(ExamModel exam)? created,
    TResult Function(ExamModel exam)? updated,
    TResult Function(ExamModel exam)? deleted,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(exams, filteredExams);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CoachExamStateInitial value) initial,
    required TResult Function(CoachExamStateLoading value) loading,
    required TResult Function(CoachExamStateLoaded value) loaded,
    required TResult Function(CoachExamStateFailure value) failure,
    required TResult Function(CoachExamStateCreated value) created,
    required TResult Function(CoachExamStateUpdated value) updated,
    required TResult Function(CoachExamStateDeleted value) deleted,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CoachExamStateInitial value)? initial,
    TResult? Function(CoachExamStateLoading value)? loading,
    TResult? Function(CoachExamStateLoaded value)? loaded,
    TResult? Function(CoachExamStateFailure value)? failure,
    TResult? Function(CoachExamStateCreated value)? created,
    TResult? Function(CoachExamStateUpdated value)? updated,
    TResult? Function(CoachExamStateDeleted value)? deleted,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CoachExamStateInitial value)? initial,
    TResult Function(CoachExamStateLoading value)? loading,
    TResult Function(CoachExamStateLoaded value)? loaded,
    TResult Function(CoachExamStateFailure value)? failure,
    TResult Function(CoachExamStateCreated value)? created,
    TResult Function(CoachExamStateUpdated value)? updated,
    TResult Function(CoachExamStateDeleted value)? deleted,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class CoachExamStateLoaded implements CoachExamState {
  const factory CoachExamStateLoaded(
          {required final List<ExamModel> exams,
          required final List<ExamModel> filteredExams}) =
      _$CoachExamStateLoadedImpl;

  List<ExamModel> get exams;
  List<ExamModel> get filteredExams;

  /// Create a copy of CoachExamState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CoachExamStateLoadedImplCopyWith<_$CoachExamStateLoadedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CoachExamStateFailureImplCopyWith<$Res> {
  factory _$$CoachExamStateFailureImplCopyWith(
          _$CoachExamStateFailureImpl value,
          $Res Function(_$CoachExamStateFailureImpl) then) =
      __$$CoachExamStateFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$CoachExamStateFailureImplCopyWithImpl<$Res>
    extends _$CoachExamStateCopyWithImpl<$Res, _$CoachExamStateFailureImpl>
    implements _$$CoachExamStateFailureImplCopyWith<$Res> {
  __$$CoachExamStateFailureImplCopyWithImpl(_$CoachExamStateFailureImpl _value,
      $Res Function(_$CoachExamStateFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of CoachExamState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$CoachExamStateFailureImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CoachExamStateFailureImpl implements CoachExamStateFailure {
  const _$CoachExamStateFailureImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'CoachExamState.failure(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CoachExamStateFailureImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of CoachExamState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CoachExamStateFailureImplCopyWith<_$CoachExamStateFailureImpl>
      get copyWith => __$$CoachExamStateFailureImplCopyWithImpl<
          _$CoachExamStateFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            List<ExamModel> exams, List<ExamModel> filteredExams)
        loaded,
    required TResult Function(String message) failure,
    required TResult Function(ExamModel exam) created,
    required TResult Function(ExamModel exam) updated,
    required TResult Function(ExamModel exam) deleted,
  }) {
    return failure(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<ExamModel> exams, List<ExamModel> filteredExams)?
        loaded,
    TResult? Function(String message)? failure,
    TResult? Function(ExamModel exam)? created,
    TResult? Function(ExamModel exam)? updated,
    TResult? Function(ExamModel exam)? deleted,
  }) {
    return failure?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ExamModel> exams, List<ExamModel> filteredExams)?
        loaded,
    TResult Function(String message)? failure,
    TResult Function(ExamModel exam)? created,
    TResult Function(ExamModel exam)? updated,
    TResult Function(ExamModel exam)? deleted,
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
    required TResult Function(CoachExamStateInitial value) initial,
    required TResult Function(CoachExamStateLoading value) loading,
    required TResult Function(CoachExamStateLoaded value) loaded,
    required TResult Function(CoachExamStateFailure value) failure,
    required TResult Function(CoachExamStateCreated value) created,
    required TResult Function(CoachExamStateUpdated value) updated,
    required TResult Function(CoachExamStateDeleted value) deleted,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CoachExamStateInitial value)? initial,
    TResult? Function(CoachExamStateLoading value)? loading,
    TResult? Function(CoachExamStateLoaded value)? loaded,
    TResult? Function(CoachExamStateFailure value)? failure,
    TResult? Function(CoachExamStateCreated value)? created,
    TResult? Function(CoachExamStateUpdated value)? updated,
    TResult? Function(CoachExamStateDeleted value)? deleted,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CoachExamStateInitial value)? initial,
    TResult Function(CoachExamStateLoading value)? loading,
    TResult Function(CoachExamStateLoaded value)? loaded,
    TResult Function(CoachExamStateFailure value)? failure,
    TResult Function(CoachExamStateCreated value)? created,
    TResult Function(CoachExamStateUpdated value)? updated,
    TResult Function(CoachExamStateDeleted value)? deleted,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class CoachExamStateFailure implements CoachExamState {
  const factory CoachExamStateFailure(final String message) =
      _$CoachExamStateFailureImpl;

  String get message;

  /// Create a copy of CoachExamState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CoachExamStateFailureImplCopyWith<_$CoachExamStateFailureImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CoachExamStateCreatedImplCopyWith<$Res> {
  factory _$$CoachExamStateCreatedImplCopyWith(
          _$CoachExamStateCreatedImpl value,
          $Res Function(_$CoachExamStateCreatedImpl) then) =
      __$$CoachExamStateCreatedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ExamModel exam});

  $ExamModelCopyWith<$Res> get exam;
}

/// @nodoc
class __$$CoachExamStateCreatedImplCopyWithImpl<$Res>
    extends _$CoachExamStateCopyWithImpl<$Res, _$CoachExamStateCreatedImpl>
    implements _$$CoachExamStateCreatedImplCopyWith<$Res> {
  __$$CoachExamStateCreatedImplCopyWithImpl(_$CoachExamStateCreatedImpl _value,
      $Res Function(_$CoachExamStateCreatedImpl) _then)
      : super(_value, _then);

  /// Create a copy of CoachExamState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? exam = null,
  }) {
    return _then(_$CoachExamStateCreatedImpl(
      null == exam
          ? _value.exam
          : exam // ignore: cast_nullable_to_non_nullable
              as ExamModel,
    ));
  }

  /// Create a copy of CoachExamState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ExamModelCopyWith<$Res> get exam {
    return $ExamModelCopyWith<$Res>(_value.exam, (value) {
      return _then(_value.copyWith(exam: value));
    });
  }
}

/// @nodoc

class _$CoachExamStateCreatedImpl implements CoachExamStateCreated {
  const _$CoachExamStateCreatedImpl(this.exam);

  @override
  final ExamModel exam;

  @override
  String toString() {
    return 'CoachExamState.created(exam: $exam)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CoachExamStateCreatedImpl &&
            (identical(other.exam, exam) || other.exam == exam));
  }

  @override
  int get hashCode => Object.hash(runtimeType, exam);

  /// Create a copy of CoachExamState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CoachExamStateCreatedImplCopyWith<_$CoachExamStateCreatedImpl>
      get copyWith => __$$CoachExamStateCreatedImplCopyWithImpl<
          _$CoachExamStateCreatedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            List<ExamModel> exams, List<ExamModel> filteredExams)
        loaded,
    required TResult Function(String message) failure,
    required TResult Function(ExamModel exam) created,
    required TResult Function(ExamModel exam) updated,
    required TResult Function(ExamModel exam) deleted,
  }) {
    return created(exam);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<ExamModel> exams, List<ExamModel> filteredExams)?
        loaded,
    TResult? Function(String message)? failure,
    TResult? Function(ExamModel exam)? created,
    TResult? Function(ExamModel exam)? updated,
    TResult? Function(ExamModel exam)? deleted,
  }) {
    return created?.call(exam);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ExamModel> exams, List<ExamModel> filteredExams)?
        loaded,
    TResult Function(String message)? failure,
    TResult Function(ExamModel exam)? created,
    TResult Function(ExamModel exam)? updated,
    TResult Function(ExamModel exam)? deleted,
    required TResult orElse(),
  }) {
    if (created != null) {
      return created(exam);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CoachExamStateInitial value) initial,
    required TResult Function(CoachExamStateLoading value) loading,
    required TResult Function(CoachExamStateLoaded value) loaded,
    required TResult Function(CoachExamStateFailure value) failure,
    required TResult Function(CoachExamStateCreated value) created,
    required TResult Function(CoachExamStateUpdated value) updated,
    required TResult Function(CoachExamStateDeleted value) deleted,
  }) {
    return created(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CoachExamStateInitial value)? initial,
    TResult? Function(CoachExamStateLoading value)? loading,
    TResult? Function(CoachExamStateLoaded value)? loaded,
    TResult? Function(CoachExamStateFailure value)? failure,
    TResult? Function(CoachExamStateCreated value)? created,
    TResult? Function(CoachExamStateUpdated value)? updated,
    TResult? Function(CoachExamStateDeleted value)? deleted,
  }) {
    return created?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CoachExamStateInitial value)? initial,
    TResult Function(CoachExamStateLoading value)? loading,
    TResult Function(CoachExamStateLoaded value)? loaded,
    TResult Function(CoachExamStateFailure value)? failure,
    TResult Function(CoachExamStateCreated value)? created,
    TResult Function(CoachExamStateUpdated value)? updated,
    TResult Function(CoachExamStateDeleted value)? deleted,
    required TResult orElse(),
  }) {
    if (created != null) {
      return created(this);
    }
    return orElse();
  }
}

abstract class CoachExamStateCreated implements CoachExamState {
  const factory CoachExamStateCreated(final ExamModel exam) =
      _$CoachExamStateCreatedImpl;

  ExamModel get exam;

  /// Create a copy of CoachExamState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CoachExamStateCreatedImplCopyWith<_$CoachExamStateCreatedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CoachExamStateUpdatedImplCopyWith<$Res> {
  factory _$$CoachExamStateUpdatedImplCopyWith(
          _$CoachExamStateUpdatedImpl value,
          $Res Function(_$CoachExamStateUpdatedImpl) then) =
      __$$CoachExamStateUpdatedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ExamModel exam});

  $ExamModelCopyWith<$Res> get exam;
}

/// @nodoc
class __$$CoachExamStateUpdatedImplCopyWithImpl<$Res>
    extends _$CoachExamStateCopyWithImpl<$Res, _$CoachExamStateUpdatedImpl>
    implements _$$CoachExamStateUpdatedImplCopyWith<$Res> {
  __$$CoachExamStateUpdatedImplCopyWithImpl(_$CoachExamStateUpdatedImpl _value,
      $Res Function(_$CoachExamStateUpdatedImpl) _then)
      : super(_value, _then);

  /// Create a copy of CoachExamState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? exam = null,
  }) {
    return _then(_$CoachExamStateUpdatedImpl(
      null == exam
          ? _value.exam
          : exam // ignore: cast_nullable_to_non_nullable
              as ExamModel,
    ));
  }

  /// Create a copy of CoachExamState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ExamModelCopyWith<$Res> get exam {
    return $ExamModelCopyWith<$Res>(_value.exam, (value) {
      return _then(_value.copyWith(exam: value));
    });
  }
}

/// @nodoc

class _$CoachExamStateUpdatedImpl implements CoachExamStateUpdated {
  const _$CoachExamStateUpdatedImpl(this.exam);

  @override
  final ExamModel exam;

  @override
  String toString() {
    return 'CoachExamState.updated(exam: $exam)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CoachExamStateUpdatedImpl &&
            (identical(other.exam, exam) || other.exam == exam));
  }

  @override
  int get hashCode => Object.hash(runtimeType, exam);

  /// Create a copy of CoachExamState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CoachExamStateUpdatedImplCopyWith<_$CoachExamStateUpdatedImpl>
      get copyWith => __$$CoachExamStateUpdatedImplCopyWithImpl<
          _$CoachExamStateUpdatedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            List<ExamModel> exams, List<ExamModel> filteredExams)
        loaded,
    required TResult Function(String message) failure,
    required TResult Function(ExamModel exam) created,
    required TResult Function(ExamModel exam) updated,
    required TResult Function(ExamModel exam) deleted,
  }) {
    return updated(exam);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<ExamModel> exams, List<ExamModel> filteredExams)?
        loaded,
    TResult? Function(String message)? failure,
    TResult? Function(ExamModel exam)? created,
    TResult? Function(ExamModel exam)? updated,
    TResult? Function(ExamModel exam)? deleted,
  }) {
    return updated?.call(exam);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ExamModel> exams, List<ExamModel> filteredExams)?
        loaded,
    TResult Function(String message)? failure,
    TResult Function(ExamModel exam)? created,
    TResult Function(ExamModel exam)? updated,
    TResult Function(ExamModel exam)? deleted,
    required TResult orElse(),
  }) {
    if (updated != null) {
      return updated(exam);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CoachExamStateInitial value) initial,
    required TResult Function(CoachExamStateLoading value) loading,
    required TResult Function(CoachExamStateLoaded value) loaded,
    required TResult Function(CoachExamStateFailure value) failure,
    required TResult Function(CoachExamStateCreated value) created,
    required TResult Function(CoachExamStateUpdated value) updated,
    required TResult Function(CoachExamStateDeleted value) deleted,
  }) {
    return updated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CoachExamStateInitial value)? initial,
    TResult? Function(CoachExamStateLoading value)? loading,
    TResult? Function(CoachExamStateLoaded value)? loaded,
    TResult? Function(CoachExamStateFailure value)? failure,
    TResult? Function(CoachExamStateCreated value)? created,
    TResult? Function(CoachExamStateUpdated value)? updated,
    TResult? Function(CoachExamStateDeleted value)? deleted,
  }) {
    return updated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CoachExamStateInitial value)? initial,
    TResult Function(CoachExamStateLoading value)? loading,
    TResult Function(CoachExamStateLoaded value)? loaded,
    TResult Function(CoachExamStateFailure value)? failure,
    TResult Function(CoachExamStateCreated value)? created,
    TResult Function(CoachExamStateUpdated value)? updated,
    TResult Function(CoachExamStateDeleted value)? deleted,
    required TResult orElse(),
  }) {
    if (updated != null) {
      return updated(this);
    }
    return orElse();
  }
}

abstract class CoachExamStateUpdated implements CoachExamState {
  const factory CoachExamStateUpdated(final ExamModel exam) =
      _$CoachExamStateUpdatedImpl;

  ExamModel get exam;

  /// Create a copy of CoachExamState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CoachExamStateUpdatedImplCopyWith<_$CoachExamStateUpdatedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CoachExamStateDeletedImplCopyWith<$Res> {
  factory _$$CoachExamStateDeletedImplCopyWith(
          _$CoachExamStateDeletedImpl value,
          $Res Function(_$CoachExamStateDeletedImpl) then) =
      __$$CoachExamStateDeletedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ExamModel exam});

  $ExamModelCopyWith<$Res> get exam;
}

/// @nodoc
class __$$CoachExamStateDeletedImplCopyWithImpl<$Res>
    extends _$CoachExamStateCopyWithImpl<$Res, _$CoachExamStateDeletedImpl>
    implements _$$CoachExamStateDeletedImplCopyWith<$Res> {
  __$$CoachExamStateDeletedImplCopyWithImpl(_$CoachExamStateDeletedImpl _value,
      $Res Function(_$CoachExamStateDeletedImpl) _then)
      : super(_value, _then);

  /// Create a copy of CoachExamState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? exam = null,
  }) {
    return _then(_$CoachExamStateDeletedImpl(
      null == exam
          ? _value.exam
          : exam // ignore: cast_nullable_to_non_nullable
              as ExamModel,
    ));
  }

  /// Create a copy of CoachExamState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ExamModelCopyWith<$Res> get exam {
    return $ExamModelCopyWith<$Res>(_value.exam, (value) {
      return _then(_value.copyWith(exam: value));
    });
  }
}

/// @nodoc

class _$CoachExamStateDeletedImpl implements CoachExamStateDeleted {
  const _$CoachExamStateDeletedImpl(this.exam);

  @override
  final ExamModel exam;

  @override
  String toString() {
    return 'CoachExamState.deleted(exam: $exam)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CoachExamStateDeletedImpl &&
            (identical(other.exam, exam) || other.exam == exam));
  }

  @override
  int get hashCode => Object.hash(runtimeType, exam);

  /// Create a copy of CoachExamState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CoachExamStateDeletedImplCopyWith<_$CoachExamStateDeletedImpl>
      get copyWith => __$$CoachExamStateDeletedImplCopyWithImpl<
          _$CoachExamStateDeletedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            List<ExamModel> exams, List<ExamModel> filteredExams)
        loaded,
    required TResult Function(String message) failure,
    required TResult Function(ExamModel exam) created,
    required TResult Function(ExamModel exam) updated,
    required TResult Function(ExamModel exam) deleted,
  }) {
    return deleted(exam);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<ExamModel> exams, List<ExamModel> filteredExams)?
        loaded,
    TResult? Function(String message)? failure,
    TResult? Function(ExamModel exam)? created,
    TResult? Function(ExamModel exam)? updated,
    TResult? Function(ExamModel exam)? deleted,
  }) {
    return deleted?.call(exam);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ExamModel> exams, List<ExamModel> filteredExams)?
        loaded,
    TResult Function(String message)? failure,
    TResult Function(ExamModel exam)? created,
    TResult Function(ExamModel exam)? updated,
    TResult Function(ExamModel exam)? deleted,
    required TResult orElse(),
  }) {
    if (deleted != null) {
      return deleted(exam);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CoachExamStateInitial value) initial,
    required TResult Function(CoachExamStateLoading value) loading,
    required TResult Function(CoachExamStateLoaded value) loaded,
    required TResult Function(CoachExamStateFailure value) failure,
    required TResult Function(CoachExamStateCreated value) created,
    required TResult Function(CoachExamStateUpdated value) updated,
    required TResult Function(CoachExamStateDeleted value) deleted,
  }) {
    return deleted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CoachExamStateInitial value)? initial,
    TResult? Function(CoachExamStateLoading value)? loading,
    TResult? Function(CoachExamStateLoaded value)? loaded,
    TResult? Function(CoachExamStateFailure value)? failure,
    TResult? Function(CoachExamStateCreated value)? created,
    TResult? Function(CoachExamStateUpdated value)? updated,
    TResult? Function(CoachExamStateDeleted value)? deleted,
  }) {
    return deleted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CoachExamStateInitial value)? initial,
    TResult Function(CoachExamStateLoading value)? loading,
    TResult Function(CoachExamStateLoaded value)? loaded,
    TResult Function(CoachExamStateFailure value)? failure,
    TResult Function(CoachExamStateCreated value)? created,
    TResult Function(CoachExamStateUpdated value)? updated,
    TResult Function(CoachExamStateDeleted value)? deleted,
    required TResult orElse(),
  }) {
    if (deleted != null) {
      return deleted(this);
    }
    return orElse();
  }
}

abstract class CoachExamStateDeleted implements CoachExamState {
  const factory CoachExamStateDeleted(final ExamModel exam) =
      _$CoachExamStateDeletedImpl;

  ExamModel get exam;

  /// Create a copy of CoachExamState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CoachExamStateDeletedImplCopyWith<_$CoachExamStateDeletedImpl>
      get copyWith => throw _privateConstructorUsedError;
}
