// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'exam_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ExamEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() clear,
    required TResult Function(GetAllExamParams params) getExams,
    required TResult Function(String query) filterExams,
    required TResult Function(CreateExamParams params) create,
    required TResult Function(UpdateExamParams params) update,
    required TResult Function(DeleteExamParams params) delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? clear,
    TResult? Function(GetAllExamParams params)? getExams,
    TResult? Function(String query)? filterExams,
    TResult? Function(CreateExamParams params)? create,
    TResult? Function(UpdateExamParams params)? update,
    TResult? Function(DeleteExamParams params)? delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? clear,
    TResult Function(GetAllExamParams params)? getExams,
    TResult Function(String query)? filterExams,
    TResult Function(CreateExamParams params)? create,
    TResult Function(UpdateExamParams params)? update,
    TResult Function(DeleteExamParams params)? delete,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ExamEventClear value) clear,
    required TResult Function(ExamEventGetExams value) getExams,
    required TResult Function(ExamEventFilterExams value) filterExams,
    required TResult Function(ExamEventCreate value) create,
    required TResult Function(ExamEventUpdate value) update,
    required TResult Function(ExamEventDelete value) delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ExamEventClear value)? clear,
    TResult? Function(ExamEventGetExams value)? getExams,
    TResult? Function(ExamEventFilterExams value)? filterExams,
    TResult? Function(ExamEventCreate value)? create,
    TResult? Function(ExamEventUpdate value)? update,
    TResult? Function(ExamEventDelete value)? delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExamEventClear value)? clear,
    TResult Function(ExamEventGetExams value)? getExams,
    TResult Function(ExamEventFilterExams value)? filterExams,
    TResult Function(ExamEventCreate value)? create,
    TResult Function(ExamEventUpdate value)? update,
    TResult Function(ExamEventDelete value)? delete,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExamEventCopyWith<$Res> {
  factory $ExamEventCopyWith(ExamEvent value, $Res Function(ExamEvent) then) =
      _$ExamEventCopyWithImpl<$Res, ExamEvent>;
}

/// @nodoc
class _$ExamEventCopyWithImpl<$Res, $Val extends ExamEvent>
    implements $ExamEventCopyWith<$Res> {
  _$ExamEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ExamEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$ExamEventClearImplCopyWith<$Res> {
  factory _$$ExamEventClearImplCopyWith(_$ExamEventClearImpl value,
          $Res Function(_$ExamEventClearImpl) then) =
      __$$ExamEventClearImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ExamEventClearImplCopyWithImpl<$Res>
    extends _$ExamEventCopyWithImpl<$Res, _$ExamEventClearImpl>
    implements _$$ExamEventClearImplCopyWith<$Res> {
  __$$ExamEventClearImplCopyWithImpl(
      _$ExamEventClearImpl _value, $Res Function(_$ExamEventClearImpl) _then)
      : super(_value, _then);

  /// Create a copy of ExamEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ExamEventClearImpl implements ExamEventClear {
  const _$ExamEventClearImpl();

  @override
  String toString() {
    return 'ExamEvent.clear()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ExamEventClearImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() clear,
    required TResult Function(GetAllExamParams params) getExams,
    required TResult Function(String query) filterExams,
    required TResult Function(CreateExamParams params) create,
    required TResult Function(UpdateExamParams params) update,
    required TResult Function(DeleteExamParams params) delete,
  }) {
    return clear();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? clear,
    TResult? Function(GetAllExamParams params)? getExams,
    TResult? Function(String query)? filterExams,
    TResult? Function(CreateExamParams params)? create,
    TResult? Function(UpdateExamParams params)? update,
    TResult? Function(DeleteExamParams params)? delete,
  }) {
    return clear?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? clear,
    TResult Function(GetAllExamParams params)? getExams,
    TResult Function(String query)? filterExams,
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
    required TResult Function(ExamEventClear value) clear,
    required TResult Function(ExamEventGetExams value) getExams,
    required TResult Function(ExamEventFilterExams value) filterExams,
    required TResult Function(ExamEventCreate value) create,
    required TResult Function(ExamEventUpdate value) update,
    required TResult Function(ExamEventDelete value) delete,
  }) {
    return clear(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ExamEventClear value)? clear,
    TResult? Function(ExamEventGetExams value)? getExams,
    TResult? Function(ExamEventFilterExams value)? filterExams,
    TResult? Function(ExamEventCreate value)? create,
    TResult? Function(ExamEventUpdate value)? update,
    TResult? Function(ExamEventDelete value)? delete,
  }) {
    return clear?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExamEventClear value)? clear,
    TResult Function(ExamEventGetExams value)? getExams,
    TResult Function(ExamEventFilterExams value)? filterExams,
    TResult Function(ExamEventCreate value)? create,
    TResult Function(ExamEventUpdate value)? update,
    TResult Function(ExamEventDelete value)? delete,
    required TResult orElse(),
  }) {
    if (clear != null) {
      return clear(this);
    }
    return orElse();
  }
}

abstract class ExamEventClear implements ExamEvent {
  const factory ExamEventClear() = _$ExamEventClearImpl;
}

/// @nodoc
abstract class _$$ExamEventGetExamsImplCopyWith<$Res> {
  factory _$$ExamEventGetExamsImplCopyWith(_$ExamEventGetExamsImpl value,
          $Res Function(_$ExamEventGetExamsImpl) then) =
      __$$ExamEventGetExamsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({GetAllExamParams params});

  $GetAllExamParamsCopyWith<$Res> get params;
}

/// @nodoc
class __$$ExamEventGetExamsImplCopyWithImpl<$Res>
    extends _$ExamEventCopyWithImpl<$Res, _$ExamEventGetExamsImpl>
    implements _$$ExamEventGetExamsImplCopyWith<$Res> {
  __$$ExamEventGetExamsImplCopyWithImpl(_$ExamEventGetExamsImpl _value,
      $Res Function(_$ExamEventGetExamsImpl) _then)
      : super(_value, _then);

  /// Create a copy of ExamEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? params = null,
  }) {
    return _then(_$ExamEventGetExamsImpl(
      null == params
          ? _value.params
          : params // ignore: cast_nullable_to_non_nullable
              as GetAllExamParams,
    ));
  }

  /// Create a copy of ExamEvent
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

class _$ExamEventGetExamsImpl implements ExamEventGetExams {
  const _$ExamEventGetExamsImpl(this.params);

  @override
  final GetAllExamParams params;

  @override
  String toString() {
    return 'ExamEvent.getExams(params: $params)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExamEventGetExamsImpl &&
            (identical(other.params, params) || other.params == params));
  }

  @override
  int get hashCode => Object.hash(runtimeType, params);

  /// Create a copy of ExamEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ExamEventGetExamsImplCopyWith<_$ExamEventGetExamsImpl> get copyWith =>
      __$$ExamEventGetExamsImplCopyWithImpl<_$ExamEventGetExamsImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() clear,
    required TResult Function(GetAllExamParams params) getExams,
    required TResult Function(String query) filterExams,
    required TResult Function(CreateExamParams params) create,
    required TResult Function(UpdateExamParams params) update,
    required TResult Function(DeleteExamParams params) delete,
  }) {
    return getExams(params);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? clear,
    TResult? Function(GetAllExamParams params)? getExams,
    TResult? Function(String query)? filterExams,
    TResult? Function(CreateExamParams params)? create,
    TResult? Function(UpdateExamParams params)? update,
    TResult? Function(DeleteExamParams params)? delete,
  }) {
    return getExams?.call(params);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? clear,
    TResult Function(GetAllExamParams params)? getExams,
    TResult Function(String query)? filterExams,
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
    required TResult Function(ExamEventClear value) clear,
    required TResult Function(ExamEventGetExams value) getExams,
    required TResult Function(ExamEventFilterExams value) filterExams,
    required TResult Function(ExamEventCreate value) create,
    required TResult Function(ExamEventUpdate value) update,
    required TResult Function(ExamEventDelete value) delete,
  }) {
    return getExams(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ExamEventClear value)? clear,
    TResult? Function(ExamEventGetExams value)? getExams,
    TResult? Function(ExamEventFilterExams value)? filterExams,
    TResult? Function(ExamEventCreate value)? create,
    TResult? Function(ExamEventUpdate value)? update,
    TResult? Function(ExamEventDelete value)? delete,
  }) {
    return getExams?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExamEventClear value)? clear,
    TResult Function(ExamEventGetExams value)? getExams,
    TResult Function(ExamEventFilterExams value)? filterExams,
    TResult Function(ExamEventCreate value)? create,
    TResult Function(ExamEventUpdate value)? update,
    TResult Function(ExamEventDelete value)? delete,
    required TResult orElse(),
  }) {
    if (getExams != null) {
      return getExams(this);
    }
    return orElse();
  }
}

abstract class ExamEventGetExams implements ExamEvent {
  const factory ExamEventGetExams(final GetAllExamParams params) =
      _$ExamEventGetExamsImpl;

  GetAllExamParams get params;

  /// Create a copy of ExamEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ExamEventGetExamsImplCopyWith<_$ExamEventGetExamsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ExamEventFilterExamsImplCopyWith<$Res> {
  factory _$$ExamEventFilterExamsImplCopyWith(_$ExamEventFilterExamsImpl value,
          $Res Function(_$ExamEventFilterExamsImpl) then) =
      __$$ExamEventFilterExamsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String query});
}

/// @nodoc
class __$$ExamEventFilterExamsImplCopyWithImpl<$Res>
    extends _$ExamEventCopyWithImpl<$Res, _$ExamEventFilterExamsImpl>
    implements _$$ExamEventFilterExamsImplCopyWith<$Res> {
  __$$ExamEventFilterExamsImplCopyWithImpl(_$ExamEventFilterExamsImpl _value,
      $Res Function(_$ExamEventFilterExamsImpl) _then)
      : super(_value, _then);

  /// Create a copy of ExamEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
  }) {
    return _then(_$ExamEventFilterExamsImpl(
      null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ExamEventFilterExamsImpl implements ExamEventFilterExams {
  const _$ExamEventFilterExamsImpl(this.query);

  @override
  final String query;

  @override
  String toString() {
    return 'ExamEvent.filterExams(query: $query)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExamEventFilterExamsImpl &&
            (identical(other.query, query) || other.query == query));
  }

  @override
  int get hashCode => Object.hash(runtimeType, query);

  /// Create a copy of ExamEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ExamEventFilterExamsImplCopyWith<_$ExamEventFilterExamsImpl>
      get copyWith =>
          __$$ExamEventFilterExamsImplCopyWithImpl<_$ExamEventFilterExamsImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() clear,
    required TResult Function(GetAllExamParams params) getExams,
    required TResult Function(String query) filterExams,
    required TResult Function(CreateExamParams params) create,
    required TResult Function(UpdateExamParams params) update,
    required TResult Function(DeleteExamParams params) delete,
  }) {
    return filterExams(query);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? clear,
    TResult? Function(GetAllExamParams params)? getExams,
    TResult? Function(String query)? filterExams,
    TResult? Function(CreateExamParams params)? create,
    TResult? Function(UpdateExamParams params)? update,
    TResult? Function(DeleteExamParams params)? delete,
  }) {
    return filterExams?.call(query);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? clear,
    TResult Function(GetAllExamParams params)? getExams,
    TResult Function(String query)? filterExams,
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
    required TResult Function(ExamEventClear value) clear,
    required TResult Function(ExamEventGetExams value) getExams,
    required TResult Function(ExamEventFilterExams value) filterExams,
    required TResult Function(ExamEventCreate value) create,
    required TResult Function(ExamEventUpdate value) update,
    required TResult Function(ExamEventDelete value) delete,
  }) {
    return filterExams(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ExamEventClear value)? clear,
    TResult? Function(ExamEventGetExams value)? getExams,
    TResult? Function(ExamEventFilterExams value)? filterExams,
    TResult? Function(ExamEventCreate value)? create,
    TResult? Function(ExamEventUpdate value)? update,
    TResult? Function(ExamEventDelete value)? delete,
  }) {
    return filterExams?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExamEventClear value)? clear,
    TResult Function(ExamEventGetExams value)? getExams,
    TResult Function(ExamEventFilterExams value)? filterExams,
    TResult Function(ExamEventCreate value)? create,
    TResult Function(ExamEventUpdate value)? update,
    TResult Function(ExamEventDelete value)? delete,
    required TResult orElse(),
  }) {
    if (filterExams != null) {
      return filterExams(this);
    }
    return orElse();
  }
}

abstract class ExamEventFilterExams implements ExamEvent {
  const factory ExamEventFilterExams(final String query) =
      _$ExamEventFilterExamsImpl;

  String get query;

  /// Create a copy of ExamEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ExamEventFilterExamsImplCopyWith<_$ExamEventFilterExamsImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ExamEventCreateImplCopyWith<$Res> {
  factory _$$ExamEventCreateImplCopyWith(_$ExamEventCreateImpl value,
          $Res Function(_$ExamEventCreateImpl) then) =
      __$$ExamEventCreateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({CreateExamParams params});

  $CreateExamParamsCopyWith<$Res> get params;
}

/// @nodoc
class __$$ExamEventCreateImplCopyWithImpl<$Res>
    extends _$ExamEventCopyWithImpl<$Res, _$ExamEventCreateImpl>
    implements _$$ExamEventCreateImplCopyWith<$Res> {
  __$$ExamEventCreateImplCopyWithImpl(
      _$ExamEventCreateImpl _value, $Res Function(_$ExamEventCreateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ExamEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? params = null,
  }) {
    return _then(_$ExamEventCreateImpl(
      null == params
          ? _value.params
          : params // ignore: cast_nullable_to_non_nullable
              as CreateExamParams,
    ));
  }

  /// Create a copy of ExamEvent
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

class _$ExamEventCreateImpl implements ExamEventCreate {
  const _$ExamEventCreateImpl(this.params);

  @override
  final CreateExamParams params;

  @override
  String toString() {
    return 'ExamEvent.create(params: $params)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExamEventCreateImpl &&
            (identical(other.params, params) || other.params == params));
  }

  @override
  int get hashCode => Object.hash(runtimeType, params);

  /// Create a copy of ExamEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ExamEventCreateImplCopyWith<_$ExamEventCreateImpl> get copyWith =>
      __$$ExamEventCreateImplCopyWithImpl<_$ExamEventCreateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() clear,
    required TResult Function(GetAllExamParams params) getExams,
    required TResult Function(String query) filterExams,
    required TResult Function(CreateExamParams params) create,
    required TResult Function(UpdateExamParams params) update,
    required TResult Function(DeleteExamParams params) delete,
  }) {
    return create(params);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? clear,
    TResult? Function(GetAllExamParams params)? getExams,
    TResult? Function(String query)? filterExams,
    TResult? Function(CreateExamParams params)? create,
    TResult? Function(UpdateExamParams params)? update,
    TResult? Function(DeleteExamParams params)? delete,
  }) {
    return create?.call(params);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? clear,
    TResult Function(GetAllExamParams params)? getExams,
    TResult Function(String query)? filterExams,
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
    required TResult Function(ExamEventClear value) clear,
    required TResult Function(ExamEventGetExams value) getExams,
    required TResult Function(ExamEventFilterExams value) filterExams,
    required TResult Function(ExamEventCreate value) create,
    required TResult Function(ExamEventUpdate value) update,
    required TResult Function(ExamEventDelete value) delete,
  }) {
    return create(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ExamEventClear value)? clear,
    TResult? Function(ExamEventGetExams value)? getExams,
    TResult? Function(ExamEventFilterExams value)? filterExams,
    TResult? Function(ExamEventCreate value)? create,
    TResult? Function(ExamEventUpdate value)? update,
    TResult? Function(ExamEventDelete value)? delete,
  }) {
    return create?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExamEventClear value)? clear,
    TResult Function(ExamEventGetExams value)? getExams,
    TResult Function(ExamEventFilterExams value)? filterExams,
    TResult Function(ExamEventCreate value)? create,
    TResult Function(ExamEventUpdate value)? update,
    TResult Function(ExamEventDelete value)? delete,
    required TResult orElse(),
  }) {
    if (create != null) {
      return create(this);
    }
    return orElse();
  }
}

abstract class ExamEventCreate implements ExamEvent {
  const factory ExamEventCreate(final CreateExamParams params) =
      _$ExamEventCreateImpl;

  CreateExamParams get params;

  /// Create a copy of ExamEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ExamEventCreateImplCopyWith<_$ExamEventCreateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ExamEventUpdateImplCopyWith<$Res> {
  factory _$$ExamEventUpdateImplCopyWith(_$ExamEventUpdateImpl value,
          $Res Function(_$ExamEventUpdateImpl) then) =
      __$$ExamEventUpdateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({UpdateExamParams params});

  $UpdateExamParamsCopyWith<$Res> get params;
}

/// @nodoc
class __$$ExamEventUpdateImplCopyWithImpl<$Res>
    extends _$ExamEventCopyWithImpl<$Res, _$ExamEventUpdateImpl>
    implements _$$ExamEventUpdateImplCopyWith<$Res> {
  __$$ExamEventUpdateImplCopyWithImpl(
      _$ExamEventUpdateImpl _value, $Res Function(_$ExamEventUpdateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ExamEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? params = null,
  }) {
    return _then(_$ExamEventUpdateImpl(
      null == params
          ? _value.params
          : params // ignore: cast_nullable_to_non_nullable
              as UpdateExamParams,
    ));
  }

  /// Create a copy of ExamEvent
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

class _$ExamEventUpdateImpl implements ExamEventUpdate {
  const _$ExamEventUpdateImpl(this.params);

  @override
  final UpdateExamParams params;

  @override
  String toString() {
    return 'ExamEvent.update(params: $params)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExamEventUpdateImpl &&
            (identical(other.params, params) || other.params == params));
  }

  @override
  int get hashCode => Object.hash(runtimeType, params);

  /// Create a copy of ExamEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ExamEventUpdateImplCopyWith<_$ExamEventUpdateImpl> get copyWith =>
      __$$ExamEventUpdateImplCopyWithImpl<_$ExamEventUpdateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() clear,
    required TResult Function(GetAllExamParams params) getExams,
    required TResult Function(String query) filterExams,
    required TResult Function(CreateExamParams params) create,
    required TResult Function(UpdateExamParams params) update,
    required TResult Function(DeleteExamParams params) delete,
  }) {
    return update(params);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? clear,
    TResult? Function(GetAllExamParams params)? getExams,
    TResult? Function(String query)? filterExams,
    TResult? Function(CreateExamParams params)? create,
    TResult? Function(UpdateExamParams params)? update,
    TResult? Function(DeleteExamParams params)? delete,
  }) {
    return update?.call(params);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? clear,
    TResult Function(GetAllExamParams params)? getExams,
    TResult Function(String query)? filterExams,
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
    required TResult Function(ExamEventClear value) clear,
    required TResult Function(ExamEventGetExams value) getExams,
    required TResult Function(ExamEventFilterExams value) filterExams,
    required TResult Function(ExamEventCreate value) create,
    required TResult Function(ExamEventUpdate value) update,
    required TResult Function(ExamEventDelete value) delete,
  }) {
    return update(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ExamEventClear value)? clear,
    TResult? Function(ExamEventGetExams value)? getExams,
    TResult? Function(ExamEventFilterExams value)? filterExams,
    TResult? Function(ExamEventCreate value)? create,
    TResult? Function(ExamEventUpdate value)? update,
    TResult? Function(ExamEventDelete value)? delete,
  }) {
    return update?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExamEventClear value)? clear,
    TResult Function(ExamEventGetExams value)? getExams,
    TResult Function(ExamEventFilterExams value)? filterExams,
    TResult Function(ExamEventCreate value)? create,
    TResult Function(ExamEventUpdate value)? update,
    TResult Function(ExamEventDelete value)? delete,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(this);
    }
    return orElse();
  }
}

abstract class ExamEventUpdate implements ExamEvent {
  const factory ExamEventUpdate(final UpdateExamParams params) =
      _$ExamEventUpdateImpl;

  UpdateExamParams get params;

  /// Create a copy of ExamEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ExamEventUpdateImplCopyWith<_$ExamEventUpdateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ExamEventDeleteImplCopyWith<$Res> {
  factory _$$ExamEventDeleteImplCopyWith(_$ExamEventDeleteImpl value,
          $Res Function(_$ExamEventDeleteImpl) then) =
      __$$ExamEventDeleteImplCopyWithImpl<$Res>;
  @useResult
  $Res call({DeleteExamParams params});

  $DeleteExamParamsCopyWith<$Res> get params;
}

/// @nodoc
class __$$ExamEventDeleteImplCopyWithImpl<$Res>
    extends _$ExamEventCopyWithImpl<$Res, _$ExamEventDeleteImpl>
    implements _$$ExamEventDeleteImplCopyWith<$Res> {
  __$$ExamEventDeleteImplCopyWithImpl(
      _$ExamEventDeleteImpl _value, $Res Function(_$ExamEventDeleteImpl) _then)
      : super(_value, _then);

  /// Create a copy of ExamEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? params = null,
  }) {
    return _then(_$ExamEventDeleteImpl(
      null == params
          ? _value.params
          : params // ignore: cast_nullable_to_non_nullable
              as DeleteExamParams,
    ));
  }

  /// Create a copy of ExamEvent
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

class _$ExamEventDeleteImpl implements ExamEventDelete {
  const _$ExamEventDeleteImpl(this.params);

  @override
  final DeleteExamParams params;

  @override
  String toString() {
    return 'ExamEvent.delete(params: $params)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExamEventDeleteImpl &&
            (identical(other.params, params) || other.params == params));
  }

  @override
  int get hashCode => Object.hash(runtimeType, params);

  /// Create a copy of ExamEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ExamEventDeleteImplCopyWith<_$ExamEventDeleteImpl> get copyWith =>
      __$$ExamEventDeleteImplCopyWithImpl<_$ExamEventDeleteImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() clear,
    required TResult Function(GetAllExamParams params) getExams,
    required TResult Function(String query) filterExams,
    required TResult Function(CreateExamParams params) create,
    required TResult Function(UpdateExamParams params) update,
    required TResult Function(DeleteExamParams params) delete,
  }) {
    return delete(params);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? clear,
    TResult? Function(GetAllExamParams params)? getExams,
    TResult? Function(String query)? filterExams,
    TResult? Function(CreateExamParams params)? create,
    TResult? Function(UpdateExamParams params)? update,
    TResult? Function(DeleteExamParams params)? delete,
  }) {
    return delete?.call(params);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? clear,
    TResult Function(GetAllExamParams params)? getExams,
    TResult Function(String query)? filterExams,
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
    required TResult Function(ExamEventClear value) clear,
    required TResult Function(ExamEventGetExams value) getExams,
    required TResult Function(ExamEventFilterExams value) filterExams,
    required TResult Function(ExamEventCreate value) create,
    required TResult Function(ExamEventUpdate value) update,
    required TResult Function(ExamEventDelete value) delete,
  }) {
    return delete(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ExamEventClear value)? clear,
    TResult? Function(ExamEventGetExams value)? getExams,
    TResult? Function(ExamEventFilterExams value)? filterExams,
    TResult? Function(ExamEventCreate value)? create,
    TResult? Function(ExamEventUpdate value)? update,
    TResult? Function(ExamEventDelete value)? delete,
  }) {
    return delete?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExamEventClear value)? clear,
    TResult Function(ExamEventGetExams value)? getExams,
    TResult Function(ExamEventFilterExams value)? filterExams,
    TResult Function(ExamEventCreate value)? create,
    TResult Function(ExamEventUpdate value)? update,
    TResult Function(ExamEventDelete value)? delete,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete(this);
    }
    return orElse();
  }
}

abstract class ExamEventDelete implements ExamEvent {
  const factory ExamEventDelete(final DeleteExamParams params) =
      _$ExamEventDeleteImpl;

  DeleteExamParams get params;

  /// Create a copy of ExamEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ExamEventDeleteImplCopyWith<_$ExamEventDeleteImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ExamState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            List<ExamModel> exams, List<ExamModel> filteredExams)
        success,
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
        success,
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
        success,
    TResult Function(String message)? failure,
    TResult Function(ExamModel exam)? created,
    TResult Function(ExamModel exam)? updated,
    TResult Function(ExamModel exam)? deleted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ExamStateInitial value) initial,
    required TResult Function(ExamStateLoading value) loading,
    required TResult Function(ExamStateSuccess value) success,
    required TResult Function(ExamStateFailure value) failure,
    required TResult Function(ExamStateCreated value) created,
    required TResult Function(ExamStateUpdated value) updated,
    required TResult Function(ExamStateDeleted value) deleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ExamStateInitial value)? initial,
    TResult? Function(ExamStateLoading value)? loading,
    TResult? Function(ExamStateSuccess value)? success,
    TResult? Function(ExamStateFailure value)? failure,
    TResult? Function(ExamStateCreated value)? created,
    TResult? Function(ExamStateUpdated value)? updated,
    TResult? Function(ExamStateDeleted value)? deleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExamStateInitial value)? initial,
    TResult Function(ExamStateLoading value)? loading,
    TResult Function(ExamStateSuccess value)? success,
    TResult Function(ExamStateFailure value)? failure,
    TResult Function(ExamStateCreated value)? created,
    TResult Function(ExamStateUpdated value)? updated,
    TResult Function(ExamStateDeleted value)? deleted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExamStateCopyWith<$Res> {
  factory $ExamStateCopyWith(ExamState value, $Res Function(ExamState) then) =
      _$ExamStateCopyWithImpl<$Res, ExamState>;
}

/// @nodoc
class _$ExamStateCopyWithImpl<$Res, $Val extends ExamState>
    implements $ExamStateCopyWith<$Res> {
  _$ExamStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ExamState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$ExamStateInitialImplCopyWith<$Res> {
  factory _$$ExamStateInitialImplCopyWith(_$ExamStateInitialImpl value,
          $Res Function(_$ExamStateInitialImpl) then) =
      __$$ExamStateInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ExamStateInitialImplCopyWithImpl<$Res>
    extends _$ExamStateCopyWithImpl<$Res, _$ExamStateInitialImpl>
    implements _$$ExamStateInitialImplCopyWith<$Res> {
  __$$ExamStateInitialImplCopyWithImpl(_$ExamStateInitialImpl _value,
      $Res Function(_$ExamStateInitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of ExamState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ExamStateInitialImpl implements ExamStateInitial {
  const _$ExamStateInitialImpl();

  @override
  String toString() {
    return 'ExamState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ExamStateInitialImpl);
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
        success,
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
        success,
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
        success,
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
    required TResult Function(ExamStateInitial value) initial,
    required TResult Function(ExamStateLoading value) loading,
    required TResult Function(ExamStateSuccess value) success,
    required TResult Function(ExamStateFailure value) failure,
    required TResult Function(ExamStateCreated value) created,
    required TResult Function(ExamStateUpdated value) updated,
    required TResult Function(ExamStateDeleted value) deleted,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ExamStateInitial value)? initial,
    TResult? Function(ExamStateLoading value)? loading,
    TResult? Function(ExamStateSuccess value)? success,
    TResult? Function(ExamStateFailure value)? failure,
    TResult? Function(ExamStateCreated value)? created,
    TResult? Function(ExamStateUpdated value)? updated,
    TResult? Function(ExamStateDeleted value)? deleted,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExamStateInitial value)? initial,
    TResult Function(ExamStateLoading value)? loading,
    TResult Function(ExamStateSuccess value)? success,
    TResult Function(ExamStateFailure value)? failure,
    TResult Function(ExamStateCreated value)? created,
    TResult Function(ExamStateUpdated value)? updated,
    TResult Function(ExamStateDeleted value)? deleted,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class ExamStateInitial implements ExamState {
  const factory ExamStateInitial() = _$ExamStateInitialImpl;
}

/// @nodoc
abstract class _$$ExamStateLoadingImplCopyWith<$Res> {
  factory _$$ExamStateLoadingImplCopyWith(_$ExamStateLoadingImpl value,
          $Res Function(_$ExamStateLoadingImpl) then) =
      __$$ExamStateLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ExamStateLoadingImplCopyWithImpl<$Res>
    extends _$ExamStateCopyWithImpl<$Res, _$ExamStateLoadingImpl>
    implements _$$ExamStateLoadingImplCopyWith<$Res> {
  __$$ExamStateLoadingImplCopyWithImpl(_$ExamStateLoadingImpl _value,
      $Res Function(_$ExamStateLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of ExamState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ExamStateLoadingImpl implements ExamStateLoading {
  const _$ExamStateLoadingImpl();

  @override
  String toString() {
    return 'ExamState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ExamStateLoadingImpl);
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
        success,
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
        success,
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
        success,
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
    required TResult Function(ExamStateInitial value) initial,
    required TResult Function(ExamStateLoading value) loading,
    required TResult Function(ExamStateSuccess value) success,
    required TResult Function(ExamStateFailure value) failure,
    required TResult Function(ExamStateCreated value) created,
    required TResult Function(ExamStateUpdated value) updated,
    required TResult Function(ExamStateDeleted value) deleted,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ExamStateInitial value)? initial,
    TResult? Function(ExamStateLoading value)? loading,
    TResult? Function(ExamStateSuccess value)? success,
    TResult? Function(ExamStateFailure value)? failure,
    TResult? Function(ExamStateCreated value)? created,
    TResult? Function(ExamStateUpdated value)? updated,
    TResult? Function(ExamStateDeleted value)? deleted,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExamStateInitial value)? initial,
    TResult Function(ExamStateLoading value)? loading,
    TResult Function(ExamStateSuccess value)? success,
    TResult Function(ExamStateFailure value)? failure,
    TResult Function(ExamStateCreated value)? created,
    TResult Function(ExamStateUpdated value)? updated,
    TResult Function(ExamStateDeleted value)? deleted,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class ExamStateLoading implements ExamState {
  const factory ExamStateLoading() = _$ExamStateLoadingImpl;
}

/// @nodoc
abstract class _$$ExamStateSuccessImplCopyWith<$Res> {
  factory _$$ExamStateSuccessImplCopyWith(_$ExamStateSuccessImpl value,
          $Res Function(_$ExamStateSuccessImpl) then) =
      __$$ExamStateSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<ExamModel> exams, List<ExamModel> filteredExams});
}

/// @nodoc
class __$$ExamStateSuccessImplCopyWithImpl<$Res>
    extends _$ExamStateCopyWithImpl<$Res, _$ExamStateSuccessImpl>
    implements _$$ExamStateSuccessImplCopyWith<$Res> {
  __$$ExamStateSuccessImplCopyWithImpl(_$ExamStateSuccessImpl _value,
      $Res Function(_$ExamStateSuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of ExamState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? exams = null,
    Object? filteredExams = null,
  }) {
    return _then(_$ExamStateSuccessImpl(
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

class _$ExamStateSuccessImpl implements ExamStateSuccess {
  const _$ExamStateSuccessImpl(
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
    return 'ExamState.success(exams: $exams, filteredExams: $filteredExams)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExamStateSuccessImpl &&
            const DeepCollectionEquality().equals(other._exams, _exams) &&
            const DeepCollectionEquality()
                .equals(other._filteredExams, _filteredExams));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_exams),
      const DeepCollectionEquality().hash(_filteredExams));

  /// Create a copy of ExamState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ExamStateSuccessImplCopyWith<_$ExamStateSuccessImpl> get copyWith =>
      __$$ExamStateSuccessImplCopyWithImpl<_$ExamStateSuccessImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            List<ExamModel> exams, List<ExamModel> filteredExams)
        success,
    required TResult Function(String message) failure,
    required TResult Function(ExamModel exam) created,
    required TResult Function(ExamModel exam) updated,
    required TResult Function(ExamModel exam) deleted,
  }) {
    return success(exams, filteredExams);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<ExamModel> exams, List<ExamModel> filteredExams)?
        success,
    TResult? Function(String message)? failure,
    TResult? Function(ExamModel exam)? created,
    TResult? Function(ExamModel exam)? updated,
    TResult? Function(ExamModel exam)? deleted,
  }) {
    return success?.call(exams, filteredExams);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ExamModel> exams, List<ExamModel> filteredExams)?
        success,
    TResult Function(String message)? failure,
    TResult Function(ExamModel exam)? created,
    TResult Function(ExamModel exam)? updated,
    TResult Function(ExamModel exam)? deleted,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(exams, filteredExams);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ExamStateInitial value) initial,
    required TResult Function(ExamStateLoading value) loading,
    required TResult Function(ExamStateSuccess value) success,
    required TResult Function(ExamStateFailure value) failure,
    required TResult Function(ExamStateCreated value) created,
    required TResult Function(ExamStateUpdated value) updated,
    required TResult Function(ExamStateDeleted value) deleted,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ExamStateInitial value)? initial,
    TResult? Function(ExamStateLoading value)? loading,
    TResult? Function(ExamStateSuccess value)? success,
    TResult? Function(ExamStateFailure value)? failure,
    TResult? Function(ExamStateCreated value)? created,
    TResult? Function(ExamStateUpdated value)? updated,
    TResult? Function(ExamStateDeleted value)? deleted,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExamStateInitial value)? initial,
    TResult Function(ExamStateLoading value)? loading,
    TResult Function(ExamStateSuccess value)? success,
    TResult Function(ExamStateFailure value)? failure,
    TResult Function(ExamStateCreated value)? created,
    TResult Function(ExamStateUpdated value)? updated,
    TResult Function(ExamStateDeleted value)? deleted,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class ExamStateSuccess implements ExamState {
  const factory ExamStateSuccess(
      {required final List<ExamModel> exams,
      required final List<ExamModel> filteredExams}) = _$ExamStateSuccessImpl;

  List<ExamModel> get exams;
  List<ExamModel> get filteredExams;

  /// Create a copy of ExamState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ExamStateSuccessImplCopyWith<_$ExamStateSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ExamStateFailureImplCopyWith<$Res> {
  factory _$$ExamStateFailureImplCopyWith(_$ExamStateFailureImpl value,
          $Res Function(_$ExamStateFailureImpl) then) =
      __$$ExamStateFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ExamStateFailureImplCopyWithImpl<$Res>
    extends _$ExamStateCopyWithImpl<$Res, _$ExamStateFailureImpl>
    implements _$$ExamStateFailureImplCopyWith<$Res> {
  __$$ExamStateFailureImplCopyWithImpl(_$ExamStateFailureImpl _value,
      $Res Function(_$ExamStateFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of ExamState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ExamStateFailureImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ExamStateFailureImpl implements ExamStateFailure {
  const _$ExamStateFailureImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'ExamState.failure(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExamStateFailureImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of ExamState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ExamStateFailureImplCopyWith<_$ExamStateFailureImpl> get copyWith =>
      __$$ExamStateFailureImplCopyWithImpl<_$ExamStateFailureImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            List<ExamModel> exams, List<ExamModel> filteredExams)
        success,
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
        success,
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
        success,
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
    required TResult Function(ExamStateInitial value) initial,
    required TResult Function(ExamStateLoading value) loading,
    required TResult Function(ExamStateSuccess value) success,
    required TResult Function(ExamStateFailure value) failure,
    required TResult Function(ExamStateCreated value) created,
    required TResult Function(ExamStateUpdated value) updated,
    required TResult Function(ExamStateDeleted value) deleted,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ExamStateInitial value)? initial,
    TResult? Function(ExamStateLoading value)? loading,
    TResult? Function(ExamStateSuccess value)? success,
    TResult? Function(ExamStateFailure value)? failure,
    TResult? Function(ExamStateCreated value)? created,
    TResult? Function(ExamStateUpdated value)? updated,
    TResult? Function(ExamStateDeleted value)? deleted,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExamStateInitial value)? initial,
    TResult Function(ExamStateLoading value)? loading,
    TResult Function(ExamStateSuccess value)? success,
    TResult Function(ExamStateFailure value)? failure,
    TResult Function(ExamStateCreated value)? created,
    TResult Function(ExamStateUpdated value)? updated,
    TResult Function(ExamStateDeleted value)? deleted,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class ExamStateFailure implements ExamState {
  const factory ExamStateFailure(final String message) = _$ExamStateFailureImpl;

  String get message;

  /// Create a copy of ExamState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ExamStateFailureImplCopyWith<_$ExamStateFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ExamStateCreatedImplCopyWith<$Res> {
  factory _$$ExamStateCreatedImplCopyWith(_$ExamStateCreatedImpl value,
          $Res Function(_$ExamStateCreatedImpl) then) =
      __$$ExamStateCreatedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ExamModel exam});

  $ExamModelCopyWith<$Res> get exam;
}

/// @nodoc
class __$$ExamStateCreatedImplCopyWithImpl<$Res>
    extends _$ExamStateCopyWithImpl<$Res, _$ExamStateCreatedImpl>
    implements _$$ExamStateCreatedImplCopyWith<$Res> {
  __$$ExamStateCreatedImplCopyWithImpl(_$ExamStateCreatedImpl _value,
      $Res Function(_$ExamStateCreatedImpl) _then)
      : super(_value, _then);

  /// Create a copy of ExamState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? exam = null,
  }) {
    return _then(_$ExamStateCreatedImpl(
      null == exam
          ? _value.exam
          : exam // ignore: cast_nullable_to_non_nullable
              as ExamModel,
    ));
  }

  /// Create a copy of ExamState
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

class _$ExamStateCreatedImpl implements ExamStateCreated {
  const _$ExamStateCreatedImpl(this.exam);

  @override
  final ExamModel exam;

  @override
  String toString() {
    return 'ExamState.created(exam: $exam)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExamStateCreatedImpl &&
            (identical(other.exam, exam) || other.exam == exam));
  }

  @override
  int get hashCode => Object.hash(runtimeType, exam);

  /// Create a copy of ExamState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ExamStateCreatedImplCopyWith<_$ExamStateCreatedImpl> get copyWith =>
      __$$ExamStateCreatedImplCopyWithImpl<_$ExamStateCreatedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            List<ExamModel> exams, List<ExamModel> filteredExams)
        success,
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
        success,
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
        success,
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
    required TResult Function(ExamStateInitial value) initial,
    required TResult Function(ExamStateLoading value) loading,
    required TResult Function(ExamStateSuccess value) success,
    required TResult Function(ExamStateFailure value) failure,
    required TResult Function(ExamStateCreated value) created,
    required TResult Function(ExamStateUpdated value) updated,
    required TResult Function(ExamStateDeleted value) deleted,
  }) {
    return created(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ExamStateInitial value)? initial,
    TResult? Function(ExamStateLoading value)? loading,
    TResult? Function(ExamStateSuccess value)? success,
    TResult? Function(ExamStateFailure value)? failure,
    TResult? Function(ExamStateCreated value)? created,
    TResult? Function(ExamStateUpdated value)? updated,
    TResult? Function(ExamStateDeleted value)? deleted,
  }) {
    return created?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExamStateInitial value)? initial,
    TResult Function(ExamStateLoading value)? loading,
    TResult Function(ExamStateSuccess value)? success,
    TResult Function(ExamStateFailure value)? failure,
    TResult Function(ExamStateCreated value)? created,
    TResult Function(ExamStateUpdated value)? updated,
    TResult Function(ExamStateDeleted value)? deleted,
    required TResult orElse(),
  }) {
    if (created != null) {
      return created(this);
    }
    return orElse();
  }
}

abstract class ExamStateCreated implements ExamState {
  const factory ExamStateCreated(final ExamModel exam) = _$ExamStateCreatedImpl;

  ExamModel get exam;

  /// Create a copy of ExamState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ExamStateCreatedImplCopyWith<_$ExamStateCreatedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ExamStateUpdatedImplCopyWith<$Res> {
  factory _$$ExamStateUpdatedImplCopyWith(_$ExamStateUpdatedImpl value,
          $Res Function(_$ExamStateUpdatedImpl) then) =
      __$$ExamStateUpdatedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ExamModel exam});

  $ExamModelCopyWith<$Res> get exam;
}

/// @nodoc
class __$$ExamStateUpdatedImplCopyWithImpl<$Res>
    extends _$ExamStateCopyWithImpl<$Res, _$ExamStateUpdatedImpl>
    implements _$$ExamStateUpdatedImplCopyWith<$Res> {
  __$$ExamStateUpdatedImplCopyWithImpl(_$ExamStateUpdatedImpl _value,
      $Res Function(_$ExamStateUpdatedImpl) _then)
      : super(_value, _then);

  /// Create a copy of ExamState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? exam = null,
  }) {
    return _then(_$ExamStateUpdatedImpl(
      null == exam
          ? _value.exam
          : exam // ignore: cast_nullable_to_non_nullable
              as ExamModel,
    ));
  }

  /// Create a copy of ExamState
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

class _$ExamStateUpdatedImpl implements ExamStateUpdated {
  const _$ExamStateUpdatedImpl(this.exam);

  @override
  final ExamModel exam;

  @override
  String toString() {
    return 'ExamState.updated(exam: $exam)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExamStateUpdatedImpl &&
            (identical(other.exam, exam) || other.exam == exam));
  }

  @override
  int get hashCode => Object.hash(runtimeType, exam);

  /// Create a copy of ExamState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ExamStateUpdatedImplCopyWith<_$ExamStateUpdatedImpl> get copyWith =>
      __$$ExamStateUpdatedImplCopyWithImpl<_$ExamStateUpdatedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            List<ExamModel> exams, List<ExamModel> filteredExams)
        success,
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
        success,
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
        success,
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
    required TResult Function(ExamStateInitial value) initial,
    required TResult Function(ExamStateLoading value) loading,
    required TResult Function(ExamStateSuccess value) success,
    required TResult Function(ExamStateFailure value) failure,
    required TResult Function(ExamStateCreated value) created,
    required TResult Function(ExamStateUpdated value) updated,
    required TResult Function(ExamStateDeleted value) deleted,
  }) {
    return updated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ExamStateInitial value)? initial,
    TResult? Function(ExamStateLoading value)? loading,
    TResult? Function(ExamStateSuccess value)? success,
    TResult? Function(ExamStateFailure value)? failure,
    TResult? Function(ExamStateCreated value)? created,
    TResult? Function(ExamStateUpdated value)? updated,
    TResult? Function(ExamStateDeleted value)? deleted,
  }) {
    return updated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExamStateInitial value)? initial,
    TResult Function(ExamStateLoading value)? loading,
    TResult Function(ExamStateSuccess value)? success,
    TResult Function(ExamStateFailure value)? failure,
    TResult Function(ExamStateCreated value)? created,
    TResult Function(ExamStateUpdated value)? updated,
    TResult Function(ExamStateDeleted value)? deleted,
    required TResult orElse(),
  }) {
    if (updated != null) {
      return updated(this);
    }
    return orElse();
  }
}

abstract class ExamStateUpdated implements ExamState {
  const factory ExamStateUpdated(final ExamModel exam) = _$ExamStateUpdatedImpl;

  ExamModel get exam;

  /// Create a copy of ExamState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ExamStateUpdatedImplCopyWith<_$ExamStateUpdatedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ExamStateDeletedImplCopyWith<$Res> {
  factory _$$ExamStateDeletedImplCopyWith(_$ExamStateDeletedImpl value,
          $Res Function(_$ExamStateDeletedImpl) then) =
      __$$ExamStateDeletedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ExamModel exam});

  $ExamModelCopyWith<$Res> get exam;
}

/// @nodoc
class __$$ExamStateDeletedImplCopyWithImpl<$Res>
    extends _$ExamStateCopyWithImpl<$Res, _$ExamStateDeletedImpl>
    implements _$$ExamStateDeletedImplCopyWith<$Res> {
  __$$ExamStateDeletedImplCopyWithImpl(_$ExamStateDeletedImpl _value,
      $Res Function(_$ExamStateDeletedImpl) _then)
      : super(_value, _then);

  /// Create a copy of ExamState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? exam = null,
  }) {
    return _then(_$ExamStateDeletedImpl(
      null == exam
          ? _value.exam
          : exam // ignore: cast_nullable_to_non_nullable
              as ExamModel,
    ));
  }

  /// Create a copy of ExamState
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

class _$ExamStateDeletedImpl implements ExamStateDeleted {
  const _$ExamStateDeletedImpl(this.exam);

  @override
  final ExamModel exam;

  @override
  String toString() {
    return 'ExamState.deleted(exam: $exam)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExamStateDeletedImpl &&
            (identical(other.exam, exam) || other.exam == exam));
  }

  @override
  int get hashCode => Object.hash(runtimeType, exam);

  /// Create a copy of ExamState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ExamStateDeletedImplCopyWith<_$ExamStateDeletedImpl> get copyWith =>
      __$$ExamStateDeletedImplCopyWithImpl<_$ExamStateDeletedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            List<ExamModel> exams, List<ExamModel> filteredExams)
        success,
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
        success,
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
        success,
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
    required TResult Function(ExamStateInitial value) initial,
    required TResult Function(ExamStateLoading value) loading,
    required TResult Function(ExamStateSuccess value) success,
    required TResult Function(ExamStateFailure value) failure,
    required TResult Function(ExamStateCreated value) created,
    required TResult Function(ExamStateUpdated value) updated,
    required TResult Function(ExamStateDeleted value) deleted,
  }) {
    return deleted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ExamStateInitial value)? initial,
    TResult? Function(ExamStateLoading value)? loading,
    TResult? Function(ExamStateSuccess value)? success,
    TResult? Function(ExamStateFailure value)? failure,
    TResult? Function(ExamStateCreated value)? created,
    TResult? Function(ExamStateUpdated value)? updated,
    TResult? Function(ExamStateDeleted value)? deleted,
  }) {
    return deleted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExamStateInitial value)? initial,
    TResult Function(ExamStateLoading value)? loading,
    TResult Function(ExamStateSuccess value)? success,
    TResult Function(ExamStateFailure value)? failure,
    TResult Function(ExamStateCreated value)? created,
    TResult Function(ExamStateUpdated value)? updated,
    TResult Function(ExamStateDeleted value)? deleted,
    required TResult orElse(),
  }) {
    if (deleted != null) {
      return deleted(this);
    }
    return orElse();
  }
}

abstract class ExamStateDeleted implements ExamState {
  const factory ExamStateDeleted(final ExamModel exam) = _$ExamStateDeletedImpl;

  ExamModel get exam;

  /// Create a copy of ExamState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ExamStateDeletedImplCopyWith<_$ExamStateDeletedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
