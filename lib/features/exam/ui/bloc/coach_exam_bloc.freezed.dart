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
    required TResult Function(_GetExams value) getExams,
    required TResult Function(_FilterExams value) filterExams,
    required TResult Function(_Clear value) clear,
    required TResult Function(_Create value) create,
    required TResult Function(_Update value) update,
    required TResult Function(_Delete value) delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetExams value)? getExams,
    TResult? Function(_FilterExams value)? filterExams,
    TResult? Function(_Clear value)? clear,
    TResult? Function(_Create value)? create,
    TResult? Function(_Update value)? update,
    TResult? Function(_Delete value)? delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetExams value)? getExams,
    TResult Function(_FilterExams value)? filterExams,
    TResult Function(_Clear value)? clear,
    TResult Function(_Create value)? create,
    TResult Function(_Update value)? update,
    TResult Function(_Delete value)? delete,
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
    extends _$CoachExamEventCopyWithImpl<$Res, _$GetExamsImpl>
    implements _$$GetExamsImplCopyWith<$Res> {
  __$$GetExamsImplCopyWithImpl(
      _$GetExamsImpl _value, $Res Function(_$GetExamsImpl) _then)
      : super(_value, _then);

  /// Create a copy of CoachExamEvent
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

class _$GetExamsImpl implements _GetExams {
  const _$GetExamsImpl(this.params);

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
            other is _$GetExamsImpl &&
            (identical(other.params, params) || other.params == params));
  }

  @override
  int get hashCode => Object.hash(runtimeType, params);

  /// Create a copy of CoachExamEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetExamsImplCopyWith<_$GetExamsImpl> get copyWith =>
      __$$GetExamsImplCopyWithImpl<_$GetExamsImpl>(this, _$identity);

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
    required TResult Function(_GetExams value) getExams,
    required TResult Function(_FilterExams value) filterExams,
    required TResult Function(_Clear value) clear,
    required TResult Function(_Create value) create,
    required TResult Function(_Update value) update,
    required TResult Function(_Delete value) delete,
  }) {
    return getExams(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetExams value)? getExams,
    TResult? Function(_FilterExams value)? filterExams,
    TResult? Function(_Clear value)? clear,
    TResult? Function(_Create value)? create,
    TResult? Function(_Update value)? update,
    TResult? Function(_Delete value)? delete,
  }) {
    return getExams?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetExams value)? getExams,
    TResult Function(_FilterExams value)? filterExams,
    TResult Function(_Clear value)? clear,
    TResult Function(_Create value)? create,
    TResult Function(_Update value)? update,
    TResult Function(_Delete value)? delete,
    required TResult orElse(),
  }) {
    if (getExams != null) {
      return getExams(this);
    }
    return orElse();
  }
}

abstract class _GetExams implements CoachExamEvent {
  const factory _GetExams(final GetAllExamParams params) = _$GetExamsImpl;

  GetAllExamParams get params;

  /// Create a copy of CoachExamEvent
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
    extends _$CoachExamEventCopyWithImpl<$Res, _$FilterExamsImpl>
    implements _$$FilterExamsImplCopyWith<$Res> {
  __$$FilterExamsImplCopyWithImpl(
      _$FilterExamsImpl _value, $Res Function(_$FilterExamsImpl) _then)
      : super(_value, _then);

  /// Create a copy of CoachExamEvent
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
    return 'CoachExamEvent.filterExams(query: $query)';
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

  /// Create a copy of CoachExamEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FilterExamsImplCopyWith<_$FilterExamsImpl> get copyWith =>
      __$$FilterExamsImplCopyWithImpl<_$FilterExamsImpl>(this, _$identity);

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
    required TResult Function(_GetExams value) getExams,
    required TResult Function(_FilterExams value) filterExams,
    required TResult Function(_Clear value) clear,
    required TResult Function(_Create value) create,
    required TResult Function(_Update value) update,
    required TResult Function(_Delete value) delete,
  }) {
    return filterExams(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetExams value)? getExams,
    TResult? Function(_FilterExams value)? filterExams,
    TResult? Function(_Clear value)? clear,
    TResult? Function(_Create value)? create,
    TResult? Function(_Update value)? update,
    TResult? Function(_Delete value)? delete,
  }) {
    return filterExams?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetExams value)? getExams,
    TResult Function(_FilterExams value)? filterExams,
    TResult Function(_Clear value)? clear,
    TResult Function(_Create value)? create,
    TResult Function(_Update value)? update,
    TResult Function(_Delete value)? delete,
    required TResult orElse(),
  }) {
    if (filterExams != null) {
      return filterExams(this);
    }
    return orElse();
  }
}

abstract class _FilterExams implements CoachExamEvent {
  const factory _FilterExams(final String query) = _$FilterExamsImpl;

  String get query;

  /// Create a copy of CoachExamEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FilterExamsImplCopyWith<_$FilterExamsImpl> get copyWith =>
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
    extends _$CoachExamEventCopyWithImpl<$Res, _$ClearImpl>
    implements _$$ClearImplCopyWith<$Res> {
  __$$ClearImplCopyWithImpl(
      _$ClearImpl _value, $Res Function(_$ClearImpl) _then)
      : super(_value, _then);

  /// Create a copy of CoachExamEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ClearImpl implements _Clear {
  const _$ClearImpl();

  @override
  String toString() {
    return 'CoachExamEvent.clear()';
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
    required TResult Function(_GetExams value) getExams,
    required TResult Function(_FilterExams value) filterExams,
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
    TResult? Function(_GetExams value)? getExams,
    TResult? Function(_FilterExams value)? filterExams,
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
    TResult Function(_GetExams value)? getExams,
    TResult Function(_FilterExams value)? filterExams,
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

abstract class _Clear implements CoachExamEvent {
  const factory _Clear() = _$ClearImpl;
}

/// @nodoc
abstract class _$$CreateImplCopyWith<$Res> {
  factory _$$CreateImplCopyWith(
          _$CreateImpl value, $Res Function(_$CreateImpl) then) =
      __$$CreateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({CreateExamParams params});

  $CreateExamParamsCopyWith<$Res> get params;
}

/// @nodoc
class __$$CreateImplCopyWithImpl<$Res>
    extends _$CoachExamEventCopyWithImpl<$Res, _$CreateImpl>
    implements _$$CreateImplCopyWith<$Res> {
  __$$CreateImplCopyWithImpl(
      _$CreateImpl _value, $Res Function(_$CreateImpl) _then)
      : super(_value, _then);

  /// Create a copy of CoachExamEvent
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

class _$CreateImpl implements _Create {
  const _$CreateImpl(this.params);

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
            other is _$CreateImpl &&
            (identical(other.params, params) || other.params == params));
  }

  @override
  int get hashCode => Object.hash(runtimeType, params);

  /// Create a copy of CoachExamEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateImplCopyWith<_$CreateImpl> get copyWith =>
      __$$CreateImplCopyWithImpl<_$CreateImpl>(this, _$identity);

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
    required TResult Function(_GetExams value) getExams,
    required TResult Function(_FilterExams value) filterExams,
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
    TResult? Function(_GetExams value)? getExams,
    TResult? Function(_FilterExams value)? filterExams,
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
    TResult Function(_GetExams value)? getExams,
    TResult Function(_FilterExams value)? filterExams,
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

abstract class _Create implements CoachExamEvent {
  const factory _Create(final CreateExamParams params) = _$CreateImpl;

  CreateExamParams get params;

  /// Create a copy of CoachExamEvent
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
  $Res call({UpdateExamParams params});

  $UpdateExamParamsCopyWith<$Res> get params;
}

/// @nodoc
class __$$UpdateImplCopyWithImpl<$Res>
    extends _$CoachExamEventCopyWithImpl<$Res, _$UpdateImpl>
    implements _$$UpdateImplCopyWith<$Res> {
  __$$UpdateImplCopyWithImpl(
      _$UpdateImpl _value, $Res Function(_$UpdateImpl) _then)
      : super(_value, _then);

  /// Create a copy of CoachExamEvent
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

class _$UpdateImpl implements _Update {
  const _$UpdateImpl(this.params);

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
            other is _$UpdateImpl &&
            (identical(other.params, params) || other.params == params));
  }

  @override
  int get hashCode => Object.hash(runtimeType, params);

  /// Create a copy of CoachExamEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateImplCopyWith<_$UpdateImpl> get copyWith =>
      __$$UpdateImplCopyWithImpl<_$UpdateImpl>(this, _$identity);

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
    required TResult Function(_GetExams value) getExams,
    required TResult Function(_FilterExams value) filterExams,
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
    TResult? Function(_GetExams value)? getExams,
    TResult? Function(_FilterExams value)? filterExams,
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
    TResult Function(_GetExams value)? getExams,
    TResult Function(_FilterExams value)? filterExams,
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

abstract class _Update implements CoachExamEvent {
  const factory _Update(final UpdateExamParams params) = _$UpdateImpl;

  UpdateExamParams get params;

  /// Create a copy of CoachExamEvent
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
  $Res call({DeleteExamParams params});

  $DeleteExamParamsCopyWith<$Res> get params;
}

/// @nodoc
class __$$DeleteImplCopyWithImpl<$Res>
    extends _$CoachExamEventCopyWithImpl<$Res, _$DeleteImpl>
    implements _$$DeleteImplCopyWith<$Res> {
  __$$DeleteImplCopyWithImpl(
      _$DeleteImpl _value, $Res Function(_$DeleteImpl) _then)
      : super(_value, _then);

  /// Create a copy of CoachExamEvent
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

class _$DeleteImpl implements _Delete {
  const _$DeleteImpl(this.params);

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
            other is _$DeleteImpl &&
            (identical(other.params, params) || other.params == params));
  }

  @override
  int get hashCode => Object.hash(runtimeType, params);

  /// Create a copy of CoachExamEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteImplCopyWith<_$DeleteImpl> get copyWith =>
      __$$DeleteImplCopyWithImpl<_$DeleteImpl>(this, _$identity);

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
    required TResult Function(_GetExams value) getExams,
    required TResult Function(_FilterExams value) filterExams,
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
    TResult? Function(_GetExams value)? getExams,
    TResult? Function(_FilterExams value)? filterExams,
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
    TResult Function(_GetExams value)? getExams,
    TResult Function(_FilterExams value)? filterExams,
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

abstract class _Delete implements CoachExamEvent {
  const factory _Delete(final DeleteExamParams params) = _$DeleteImpl;

  DeleteExamParams get params;

  /// Create a copy of CoachExamEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeleteImplCopyWith<_$DeleteImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CoachExamState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(CoachExamLoadedEvent data) loaded,
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
    TResult? Function(CoachExamLoadedEvent data)? loaded,
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
    TResult Function(CoachExamLoadedEvent data)? loaded,
    TResult Function(String message)? failure,
    TResult Function(ExamModel exam)? created,
    TResult Function(ExamModel exam)? updated,
    TResult Function(ExamModel exam)? deleted,
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
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$CoachExamStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of CoachExamState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'CoachExamState.initial()';
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
    required TResult Function(CoachExamLoadedEvent data) loaded,
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
    TResult? Function(CoachExamLoadedEvent data)? loaded,
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
    TResult Function(CoachExamLoadedEvent data)? loaded,
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

abstract class _Initial implements CoachExamState {
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
    extends _$CoachExamStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of CoachExamState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'CoachExamState.loading()';
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
    required TResult Function(CoachExamLoadedEvent data) loaded,
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
    TResult? Function(CoachExamLoadedEvent data)? loaded,
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
    TResult Function(CoachExamLoadedEvent data)? loaded,
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

abstract class _Loading implements CoachExamState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$LoadedImplCopyWith<$Res> {
  factory _$$LoadedImplCopyWith(
          _$LoadedImpl value, $Res Function(_$LoadedImpl) then) =
      __$$LoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({CoachExamLoadedEvent data});

  $CoachExamLoadedEventCopyWith<$Res> get data;
}

/// @nodoc
class __$$LoadedImplCopyWithImpl<$Res>
    extends _$CoachExamStateCopyWithImpl<$Res, _$LoadedImpl>
    implements _$$LoadedImplCopyWith<$Res> {
  __$$LoadedImplCopyWithImpl(
      _$LoadedImpl _value, $Res Function(_$LoadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of CoachExamState
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
              as CoachExamLoadedEvent,
    ));
  }

  /// Create a copy of CoachExamState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CoachExamLoadedEventCopyWith<$Res> get data {
    return $CoachExamLoadedEventCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc

class _$LoadedImpl implements _Loaded {
  const _$LoadedImpl(this.data);

  @override
  final CoachExamLoadedEvent data;

  @override
  String toString() {
    return 'CoachExamState.loaded(data: $data)';
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

  /// Create a copy of CoachExamState
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
    required TResult Function(CoachExamLoadedEvent data) loaded,
    required TResult Function(String message) failure,
    required TResult Function(ExamModel exam) created,
    required TResult Function(ExamModel exam) updated,
    required TResult Function(ExamModel exam) deleted,
  }) {
    return loaded(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(CoachExamLoadedEvent data)? loaded,
    TResult? Function(String message)? failure,
    TResult? Function(ExamModel exam)? created,
    TResult? Function(ExamModel exam)? updated,
    TResult? Function(ExamModel exam)? deleted,
  }) {
    return loaded?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(CoachExamLoadedEvent data)? loaded,
    TResult Function(String message)? failure,
    TResult Function(ExamModel exam)? created,
    TResult Function(ExamModel exam)? updated,
    TResult Function(ExamModel exam)? deleted,
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

abstract class _Loaded implements CoachExamState {
  const factory _Loaded(final CoachExamLoadedEvent data) = _$LoadedImpl;

  CoachExamLoadedEvent get data;

  /// Create a copy of CoachExamState
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
    extends _$CoachExamStateCopyWithImpl<$Res, _$FailureImpl>
    implements _$$FailureImplCopyWith<$Res> {
  __$$FailureImplCopyWithImpl(
      _$FailureImpl _value, $Res Function(_$FailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of CoachExamState
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
    return 'CoachExamState.failure(message: $message)';
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

  /// Create a copy of CoachExamState
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
    required TResult Function(CoachExamLoadedEvent data) loaded,
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
    TResult? Function(CoachExamLoadedEvent data)? loaded,
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
    TResult Function(CoachExamLoadedEvent data)? loaded,
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

abstract class _Failure implements CoachExamState {
  const factory _Failure(final String message) = _$FailureImpl;

  String get message;

  /// Create a copy of CoachExamState
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
  $Res call({ExamModel exam});

  $ExamModelCopyWith<$Res> get exam;
}

/// @nodoc
class __$$CreatedImplCopyWithImpl<$Res>
    extends _$CoachExamStateCopyWithImpl<$Res, _$CreatedImpl>
    implements _$$CreatedImplCopyWith<$Res> {
  __$$CreatedImplCopyWithImpl(
      _$CreatedImpl _value, $Res Function(_$CreatedImpl) _then)
      : super(_value, _then);

  /// Create a copy of CoachExamState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? exam = null,
  }) {
    return _then(_$CreatedImpl(
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

class _$CreatedImpl implements _Created {
  const _$CreatedImpl(this.exam);

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
            other is _$CreatedImpl &&
            (identical(other.exam, exam) || other.exam == exam));
  }

  @override
  int get hashCode => Object.hash(runtimeType, exam);

  /// Create a copy of CoachExamState
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
    required TResult Function(CoachExamLoadedEvent data) loaded,
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
    TResult? Function(CoachExamLoadedEvent data)? loaded,
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
    TResult Function(CoachExamLoadedEvent data)? loaded,
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

abstract class _Created implements CoachExamState {
  const factory _Created(final ExamModel exam) = _$CreatedImpl;

  ExamModel get exam;

  /// Create a copy of CoachExamState
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
  $Res call({ExamModel exam});

  $ExamModelCopyWith<$Res> get exam;
}

/// @nodoc
class __$$UpdatedImplCopyWithImpl<$Res>
    extends _$CoachExamStateCopyWithImpl<$Res, _$UpdatedImpl>
    implements _$$UpdatedImplCopyWith<$Res> {
  __$$UpdatedImplCopyWithImpl(
      _$UpdatedImpl _value, $Res Function(_$UpdatedImpl) _then)
      : super(_value, _then);

  /// Create a copy of CoachExamState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? exam = null,
  }) {
    return _then(_$UpdatedImpl(
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

class _$UpdatedImpl implements _Updated {
  const _$UpdatedImpl(this.exam);

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
            other is _$UpdatedImpl &&
            (identical(other.exam, exam) || other.exam == exam));
  }

  @override
  int get hashCode => Object.hash(runtimeType, exam);

  /// Create a copy of CoachExamState
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
    required TResult Function(CoachExamLoadedEvent data) loaded,
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
    TResult? Function(CoachExamLoadedEvent data)? loaded,
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
    TResult Function(CoachExamLoadedEvent data)? loaded,
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

abstract class _Updated implements CoachExamState {
  const factory _Updated(final ExamModel exam) = _$UpdatedImpl;

  ExamModel get exam;

  /// Create a copy of CoachExamState
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
  $Res call({ExamModel exam});

  $ExamModelCopyWith<$Res> get exam;
}

/// @nodoc
class __$$DeletedImplCopyWithImpl<$Res>
    extends _$CoachExamStateCopyWithImpl<$Res, _$DeletedImpl>
    implements _$$DeletedImplCopyWith<$Res> {
  __$$DeletedImplCopyWithImpl(
      _$DeletedImpl _value, $Res Function(_$DeletedImpl) _then)
      : super(_value, _then);

  /// Create a copy of CoachExamState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? exam = null,
  }) {
    return _then(_$DeletedImpl(
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

class _$DeletedImpl implements _Deleted {
  const _$DeletedImpl(this.exam);

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
            other is _$DeletedImpl &&
            (identical(other.exam, exam) || other.exam == exam));
  }

  @override
  int get hashCode => Object.hash(runtimeType, exam);

  /// Create a copy of CoachExamState
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
    required TResult Function(CoachExamLoadedEvent data) loaded,
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
    TResult? Function(CoachExamLoadedEvent data)? loaded,
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
    TResult Function(CoachExamLoadedEvent data)? loaded,
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

abstract class _Deleted implements CoachExamState {
  const factory _Deleted(final ExamModel exam) = _$DeletedImpl;

  ExamModel get exam;

  /// Create a copy of CoachExamState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeletedImplCopyWith<_$DeletedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CoachExamLoadedEvent {
  List<ExamModel> get exams => throw _privateConstructorUsedError;
  List<ExamModel> get filteredExams => throw _privateConstructorUsedError;

  /// Create a copy of CoachExamLoadedEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CoachExamLoadedEventCopyWith<CoachExamLoadedEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CoachExamLoadedEventCopyWith<$Res> {
  factory $CoachExamLoadedEventCopyWith(CoachExamLoadedEvent value,
          $Res Function(CoachExamLoadedEvent) then) =
      _$CoachExamLoadedEventCopyWithImpl<$Res, CoachExamLoadedEvent>;
  @useResult
  $Res call({List<ExamModel> exams, List<ExamModel> filteredExams});
}

/// @nodoc
class _$CoachExamLoadedEventCopyWithImpl<$Res,
        $Val extends CoachExamLoadedEvent>
    implements $CoachExamLoadedEventCopyWith<$Res> {
  _$CoachExamLoadedEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CoachExamLoadedEvent
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
abstract class _$$CoachExamLoadedEventImplCopyWith<$Res>
    implements $CoachExamLoadedEventCopyWith<$Res> {
  factory _$$CoachExamLoadedEventImplCopyWith(_$CoachExamLoadedEventImpl value,
          $Res Function(_$CoachExamLoadedEventImpl) then) =
      __$$CoachExamLoadedEventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<ExamModel> exams, List<ExamModel> filteredExams});
}

/// @nodoc
class __$$CoachExamLoadedEventImplCopyWithImpl<$Res>
    extends _$CoachExamLoadedEventCopyWithImpl<$Res, _$CoachExamLoadedEventImpl>
    implements _$$CoachExamLoadedEventImplCopyWith<$Res> {
  __$$CoachExamLoadedEventImplCopyWithImpl(_$CoachExamLoadedEventImpl _value,
      $Res Function(_$CoachExamLoadedEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of CoachExamLoadedEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? exams = null,
    Object? filteredExams = null,
  }) {
    return _then(_$CoachExamLoadedEventImpl(
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

class _$CoachExamLoadedEventImpl implements _CoachExamLoadedEvent {
  const _$CoachExamLoadedEventImpl(
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
    return 'CoachExamLoadedEvent(exams: $exams, filteredExams: $filteredExams)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CoachExamLoadedEventImpl &&
            const DeepCollectionEquality().equals(other._exams, _exams) &&
            const DeepCollectionEquality()
                .equals(other._filteredExams, _filteredExams));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_exams),
      const DeepCollectionEquality().hash(_filteredExams));

  /// Create a copy of CoachExamLoadedEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CoachExamLoadedEventImplCopyWith<_$CoachExamLoadedEventImpl>
      get copyWith =>
          __$$CoachExamLoadedEventImplCopyWithImpl<_$CoachExamLoadedEventImpl>(
              this, _$identity);
}

abstract class _CoachExamLoadedEvent implements CoachExamLoadedEvent {
  const factory _CoachExamLoadedEvent(
      {final List<ExamModel> exams,
      final List<ExamModel> filteredExams}) = _$CoachExamLoadedEventImpl;

  @override
  List<ExamModel> get exams;
  @override
  List<ExamModel> get filteredExams;

  /// Create a copy of CoachExamLoadedEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CoachExamLoadedEventImplCopyWith<_$CoachExamLoadedEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}
