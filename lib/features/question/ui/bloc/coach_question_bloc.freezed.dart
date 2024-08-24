// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'coach_question_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CoachQuestionEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(GetAllQuestionParams params) getQuestions,
    required TResult Function(String query) filterQuestions,
    required TResult Function() clear,
    required TResult Function(List<CreateQuestionParams> params) createBatch,
    required TResult Function(List<UpdateQuestionParams> params) updateBatch,
    required TResult Function(DeleteQuestionParams params) delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(GetAllQuestionParams params)? getQuestions,
    TResult? Function(String query)? filterQuestions,
    TResult? Function()? clear,
    TResult? Function(List<CreateQuestionParams> params)? createBatch,
    TResult? Function(List<UpdateQuestionParams> params)? updateBatch,
    TResult? Function(DeleteQuestionParams params)? delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GetAllQuestionParams params)? getQuestions,
    TResult Function(String query)? filterQuestions,
    TResult Function()? clear,
    TResult Function(List<CreateQuestionParams> params)? createBatch,
    TResult Function(List<UpdateQuestionParams> params)? updateBatch,
    TResult Function(DeleteQuestionParams params)? delete,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CoachQuestionEventGetQuestions value)
        getQuestions,
    required TResult Function(CoachQuestionEventFilterQuestions value)
        filterQuestions,
    required TResult Function(CoachQuestionEventClear value) clear,
    required TResult Function(CoachQuestionEventCreateBatch value) createBatch,
    required TResult Function(CoachQuestionEventUpdateBatch value) updateBatch,
    required TResult Function(CoachQuestionEventDelete value) delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CoachQuestionEventGetQuestions value)? getQuestions,
    TResult? Function(CoachQuestionEventFilterQuestions value)? filterQuestions,
    TResult? Function(CoachQuestionEventClear value)? clear,
    TResult? Function(CoachQuestionEventCreateBatch value)? createBatch,
    TResult? Function(CoachQuestionEventUpdateBatch value)? updateBatch,
    TResult? Function(CoachQuestionEventDelete value)? delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CoachQuestionEventGetQuestions value)? getQuestions,
    TResult Function(CoachQuestionEventFilterQuestions value)? filterQuestions,
    TResult Function(CoachQuestionEventClear value)? clear,
    TResult Function(CoachQuestionEventCreateBatch value)? createBatch,
    TResult Function(CoachQuestionEventUpdateBatch value)? updateBatch,
    TResult Function(CoachQuestionEventDelete value)? delete,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CoachQuestionEventCopyWith<$Res> {
  factory $CoachQuestionEventCopyWith(
          CoachQuestionEvent value, $Res Function(CoachQuestionEvent) then) =
      _$CoachQuestionEventCopyWithImpl<$Res, CoachQuestionEvent>;
}

/// @nodoc
class _$CoachQuestionEventCopyWithImpl<$Res, $Val extends CoachQuestionEvent>
    implements $CoachQuestionEventCopyWith<$Res> {
  _$CoachQuestionEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CoachQuestionEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$CoachQuestionEventGetQuestionsImplCopyWith<$Res> {
  factory _$$CoachQuestionEventGetQuestionsImplCopyWith(
          _$CoachQuestionEventGetQuestionsImpl value,
          $Res Function(_$CoachQuestionEventGetQuestionsImpl) then) =
      __$$CoachQuestionEventGetQuestionsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({GetAllQuestionParams params});

  $GetAllQuestionParamsCopyWith<$Res> get params;
}

/// @nodoc
class __$$CoachQuestionEventGetQuestionsImplCopyWithImpl<$Res>
    extends _$CoachQuestionEventCopyWithImpl<$Res,
        _$CoachQuestionEventGetQuestionsImpl>
    implements _$$CoachQuestionEventGetQuestionsImplCopyWith<$Res> {
  __$$CoachQuestionEventGetQuestionsImplCopyWithImpl(
      _$CoachQuestionEventGetQuestionsImpl _value,
      $Res Function(_$CoachQuestionEventGetQuestionsImpl) _then)
      : super(_value, _then);

  /// Create a copy of CoachQuestionEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? params = null,
  }) {
    return _then(_$CoachQuestionEventGetQuestionsImpl(
      null == params
          ? _value.params
          : params // ignore: cast_nullable_to_non_nullable
              as GetAllQuestionParams,
    ));
  }

  /// Create a copy of CoachQuestionEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GetAllQuestionParamsCopyWith<$Res> get params {
    return $GetAllQuestionParamsCopyWith<$Res>(_value.params, (value) {
      return _then(_value.copyWith(params: value));
    });
  }
}

/// @nodoc

class _$CoachQuestionEventGetQuestionsImpl
    implements CoachQuestionEventGetQuestions {
  const _$CoachQuestionEventGetQuestionsImpl(this.params);

  @override
  final GetAllQuestionParams params;

  @override
  String toString() {
    return 'CoachQuestionEvent.getQuestions(params: $params)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CoachQuestionEventGetQuestionsImpl &&
            (identical(other.params, params) || other.params == params));
  }

  @override
  int get hashCode => Object.hash(runtimeType, params);

  /// Create a copy of CoachQuestionEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CoachQuestionEventGetQuestionsImplCopyWith<
          _$CoachQuestionEventGetQuestionsImpl>
      get copyWith => __$$CoachQuestionEventGetQuestionsImplCopyWithImpl<
          _$CoachQuestionEventGetQuestionsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(GetAllQuestionParams params) getQuestions,
    required TResult Function(String query) filterQuestions,
    required TResult Function() clear,
    required TResult Function(List<CreateQuestionParams> params) createBatch,
    required TResult Function(List<UpdateQuestionParams> params) updateBatch,
    required TResult Function(DeleteQuestionParams params) delete,
  }) {
    return getQuestions(params);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(GetAllQuestionParams params)? getQuestions,
    TResult? Function(String query)? filterQuestions,
    TResult? Function()? clear,
    TResult? Function(List<CreateQuestionParams> params)? createBatch,
    TResult? Function(List<UpdateQuestionParams> params)? updateBatch,
    TResult? Function(DeleteQuestionParams params)? delete,
  }) {
    return getQuestions?.call(params);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GetAllQuestionParams params)? getQuestions,
    TResult Function(String query)? filterQuestions,
    TResult Function()? clear,
    TResult Function(List<CreateQuestionParams> params)? createBatch,
    TResult Function(List<UpdateQuestionParams> params)? updateBatch,
    TResult Function(DeleteQuestionParams params)? delete,
    required TResult orElse(),
  }) {
    if (getQuestions != null) {
      return getQuestions(params);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CoachQuestionEventGetQuestions value)
        getQuestions,
    required TResult Function(CoachQuestionEventFilterQuestions value)
        filterQuestions,
    required TResult Function(CoachQuestionEventClear value) clear,
    required TResult Function(CoachQuestionEventCreateBatch value) createBatch,
    required TResult Function(CoachQuestionEventUpdateBatch value) updateBatch,
    required TResult Function(CoachQuestionEventDelete value) delete,
  }) {
    return getQuestions(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CoachQuestionEventGetQuestions value)? getQuestions,
    TResult? Function(CoachQuestionEventFilterQuestions value)? filterQuestions,
    TResult? Function(CoachQuestionEventClear value)? clear,
    TResult? Function(CoachQuestionEventCreateBatch value)? createBatch,
    TResult? Function(CoachQuestionEventUpdateBatch value)? updateBatch,
    TResult? Function(CoachQuestionEventDelete value)? delete,
  }) {
    return getQuestions?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CoachQuestionEventGetQuestions value)? getQuestions,
    TResult Function(CoachQuestionEventFilterQuestions value)? filterQuestions,
    TResult Function(CoachQuestionEventClear value)? clear,
    TResult Function(CoachQuestionEventCreateBatch value)? createBatch,
    TResult Function(CoachQuestionEventUpdateBatch value)? updateBatch,
    TResult Function(CoachQuestionEventDelete value)? delete,
    required TResult orElse(),
  }) {
    if (getQuestions != null) {
      return getQuestions(this);
    }
    return orElse();
  }
}

abstract class CoachQuestionEventGetQuestions implements CoachQuestionEvent {
  const factory CoachQuestionEventGetQuestions(
      final GetAllQuestionParams params) = _$CoachQuestionEventGetQuestionsImpl;

  GetAllQuestionParams get params;

  /// Create a copy of CoachQuestionEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CoachQuestionEventGetQuestionsImplCopyWith<
          _$CoachQuestionEventGetQuestionsImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CoachQuestionEventFilterQuestionsImplCopyWith<$Res> {
  factory _$$CoachQuestionEventFilterQuestionsImplCopyWith(
          _$CoachQuestionEventFilterQuestionsImpl value,
          $Res Function(_$CoachQuestionEventFilterQuestionsImpl) then) =
      __$$CoachQuestionEventFilterQuestionsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String query});
}

/// @nodoc
class __$$CoachQuestionEventFilterQuestionsImplCopyWithImpl<$Res>
    extends _$CoachQuestionEventCopyWithImpl<$Res,
        _$CoachQuestionEventFilterQuestionsImpl>
    implements _$$CoachQuestionEventFilterQuestionsImplCopyWith<$Res> {
  __$$CoachQuestionEventFilterQuestionsImplCopyWithImpl(
      _$CoachQuestionEventFilterQuestionsImpl _value,
      $Res Function(_$CoachQuestionEventFilterQuestionsImpl) _then)
      : super(_value, _then);

  /// Create a copy of CoachQuestionEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
  }) {
    return _then(_$CoachQuestionEventFilterQuestionsImpl(
      null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CoachQuestionEventFilterQuestionsImpl
    implements CoachQuestionEventFilterQuestions {
  const _$CoachQuestionEventFilterQuestionsImpl(this.query);

  @override
  final String query;

  @override
  String toString() {
    return 'CoachQuestionEvent.filterQuestions(query: $query)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CoachQuestionEventFilterQuestionsImpl &&
            (identical(other.query, query) || other.query == query));
  }

  @override
  int get hashCode => Object.hash(runtimeType, query);

  /// Create a copy of CoachQuestionEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CoachQuestionEventFilterQuestionsImplCopyWith<
          _$CoachQuestionEventFilterQuestionsImpl>
      get copyWith => __$$CoachQuestionEventFilterQuestionsImplCopyWithImpl<
          _$CoachQuestionEventFilterQuestionsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(GetAllQuestionParams params) getQuestions,
    required TResult Function(String query) filterQuestions,
    required TResult Function() clear,
    required TResult Function(List<CreateQuestionParams> params) createBatch,
    required TResult Function(List<UpdateQuestionParams> params) updateBatch,
    required TResult Function(DeleteQuestionParams params) delete,
  }) {
    return filterQuestions(query);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(GetAllQuestionParams params)? getQuestions,
    TResult? Function(String query)? filterQuestions,
    TResult? Function()? clear,
    TResult? Function(List<CreateQuestionParams> params)? createBatch,
    TResult? Function(List<UpdateQuestionParams> params)? updateBatch,
    TResult? Function(DeleteQuestionParams params)? delete,
  }) {
    return filterQuestions?.call(query);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GetAllQuestionParams params)? getQuestions,
    TResult Function(String query)? filterQuestions,
    TResult Function()? clear,
    TResult Function(List<CreateQuestionParams> params)? createBatch,
    TResult Function(List<UpdateQuestionParams> params)? updateBatch,
    TResult Function(DeleteQuestionParams params)? delete,
    required TResult orElse(),
  }) {
    if (filterQuestions != null) {
      return filterQuestions(query);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CoachQuestionEventGetQuestions value)
        getQuestions,
    required TResult Function(CoachQuestionEventFilterQuestions value)
        filterQuestions,
    required TResult Function(CoachQuestionEventClear value) clear,
    required TResult Function(CoachQuestionEventCreateBatch value) createBatch,
    required TResult Function(CoachQuestionEventUpdateBatch value) updateBatch,
    required TResult Function(CoachQuestionEventDelete value) delete,
  }) {
    return filterQuestions(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CoachQuestionEventGetQuestions value)? getQuestions,
    TResult? Function(CoachQuestionEventFilterQuestions value)? filterQuestions,
    TResult? Function(CoachQuestionEventClear value)? clear,
    TResult? Function(CoachQuestionEventCreateBatch value)? createBatch,
    TResult? Function(CoachQuestionEventUpdateBatch value)? updateBatch,
    TResult? Function(CoachQuestionEventDelete value)? delete,
  }) {
    return filterQuestions?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CoachQuestionEventGetQuestions value)? getQuestions,
    TResult Function(CoachQuestionEventFilterQuestions value)? filterQuestions,
    TResult Function(CoachQuestionEventClear value)? clear,
    TResult Function(CoachQuestionEventCreateBatch value)? createBatch,
    TResult Function(CoachQuestionEventUpdateBatch value)? updateBatch,
    TResult Function(CoachQuestionEventDelete value)? delete,
    required TResult orElse(),
  }) {
    if (filterQuestions != null) {
      return filterQuestions(this);
    }
    return orElse();
  }
}

abstract class CoachQuestionEventFilterQuestions implements CoachQuestionEvent {
  const factory CoachQuestionEventFilterQuestions(final String query) =
      _$CoachQuestionEventFilterQuestionsImpl;

  String get query;

  /// Create a copy of CoachQuestionEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CoachQuestionEventFilterQuestionsImplCopyWith<
          _$CoachQuestionEventFilterQuestionsImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CoachQuestionEventClearImplCopyWith<$Res> {
  factory _$$CoachQuestionEventClearImplCopyWith(
          _$CoachQuestionEventClearImpl value,
          $Res Function(_$CoachQuestionEventClearImpl) then) =
      __$$CoachQuestionEventClearImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CoachQuestionEventClearImplCopyWithImpl<$Res>
    extends _$CoachQuestionEventCopyWithImpl<$Res,
        _$CoachQuestionEventClearImpl>
    implements _$$CoachQuestionEventClearImplCopyWith<$Res> {
  __$$CoachQuestionEventClearImplCopyWithImpl(
      _$CoachQuestionEventClearImpl _value,
      $Res Function(_$CoachQuestionEventClearImpl) _then)
      : super(_value, _then);

  /// Create a copy of CoachQuestionEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$CoachQuestionEventClearImpl implements CoachQuestionEventClear {
  const _$CoachQuestionEventClearImpl();

  @override
  String toString() {
    return 'CoachQuestionEvent.clear()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CoachQuestionEventClearImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(GetAllQuestionParams params) getQuestions,
    required TResult Function(String query) filterQuestions,
    required TResult Function() clear,
    required TResult Function(List<CreateQuestionParams> params) createBatch,
    required TResult Function(List<UpdateQuestionParams> params) updateBatch,
    required TResult Function(DeleteQuestionParams params) delete,
  }) {
    return clear();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(GetAllQuestionParams params)? getQuestions,
    TResult? Function(String query)? filterQuestions,
    TResult? Function()? clear,
    TResult? Function(List<CreateQuestionParams> params)? createBatch,
    TResult? Function(List<UpdateQuestionParams> params)? updateBatch,
    TResult? Function(DeleteQuestionParams params)? delete,
  }) {
    return clear?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GetAllQuestionParams params)? getQuestions,
    TResult Function(String query)? filterQuestions,
    TResult Function()? clear,
    TResult Function(List<CreateQuestionParams> params)? createBatch,
    TResult Function(List<UpdateQuestionParams> params)? updateBatch,
    TResult Function(DeleteQuestionParams params)? delete,
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
    required TResult Function(CoachQuestionEventGetQuestions value)
        getQuestions,
    required TResult Function(CoachQuestionEventFilterQuestions value)
        filterQuestions,
    required TResult Function(CoachQuestionEventClear value) clear,
    required TResult Function(CoachQuestionEventCreateBatch value) createBatch,
    required TResult Function(CoachQuestionEventUpdateBatch value) updateBatch,
    required TResult Function(CoachQuestionEventDelete value) delete,
  }) {
    return clear(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CoachQuestionEventGetQuestions value)? getQuestions,
    TResult? Function(CoachQuestionEventFilterQuestions value)? filterQuestions,
    TResult? Function(CoachQuestionEventClear value)? clear,
    TResult? Function(CoachQuestionEventCreateBatch value)? createBatch,
    TResult? Function(CoachQuestionEventUpdateBatch value)? updateBatch,
    TResult? Function(CoachQuestionEventDelete value)? delete,
  }) {
    return clear?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CoachQuestionEventGetQuestions value)? getQuestions,
    TResult Function(CoachQuestionEventFilterQuestions value)? filterQuestions,
    TResult Function(CoachQuestionEventClear value)? clear,
    TResult Function(CoachQuestionEventCreateBatch value)? createBatch,
    TResult Function(CoachQuestionEventUpdateBatch value)? updateBatch,
    TResult Function(CoachQuestionEventDelete value)? delete,
    required TResult orElse(),
  }) {
    if (clear != null) {
      return clear(this);
    }
    return orElse();
  }
}

abstract class CoachQuestionEventClear implements CoachQuestionEvent {
  const factory CoachQuestionEventClear() = _$CoachQuestionEventClearImpl;
}

/// @nodoc
abstract class _$$CoachQuestionEventCreateBatchImplCopyWith<$Res> {
  factory _$$CoachQuestionEventCreateBatchImplCopyWith(
          _$CoachQuestionEventCreateBatchImpl value,
          $Res Function(_$CoachQuestionEventCreateBatchImpl) then) =
      __$$CoachQuestionEventCreateBatchImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<CreateQuestionParams> params});
}

/// @nodoc
class __$$CoachQuestionEventCreateBatchImplCopyWithImpl<$Res>
    extends _$CoachQuestionEventCopyWithImpl<$Res,
        _$CoachQuestionEventCreateBatchImpl>
    implements _$$CoachQuestionEventCreateBatchImplCopyWith<$Res> {
  __$$CoachQuestionEventCreateBatchImplCopyWithImpl(
      _$CoachQuestionEventCreateBatchImpl _value,
      $Res Function(_$CoachQuestionEventCreateBatchImpl) _then)
      : super(_value, _then);

  /// Create a copy of CoachQuestionEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? params = null,
  }) {
    return _then(_$CoachQuestionEventCreateBatchImpl(
      null == params
          ? _value._params
          : params // ignore: cast_nullable_to_non_nullable
              as List<CreateQuestionParams>,
    ));
  }
}

/// @nodoc

class _$CoachQuestionEventCreateBatchImpl
    implements CoachQuestionEventCreateBatch {
  const _$CoachQuestionEventCreateBatchImpl(
      final List<CreateQuestionParams> params)
      : _params = params;

  final List<CreateQuestionParams> _params;
  @override
  List<CreateQuestionParams> get params {
    if (_params is EqualUnmodifiableListView) return _params;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_params);
  }

  @override
  String toString() {
    return 'CoachQuestionEvent.createBatch(params: $params)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CoachQuestionEventCreateBatchImpl &&
            const DeepCollectionEquality().equals(other._params, _params));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_params));

  /// Create a copy of CoachQuestionEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CoachQuestionEventCreateBatchImplCopyWith<
          _$CoachQuestionEventCreateBatchImpl>
      get copyWith => __$$CoachQuestionEventCreateBatchImplCopyWithImpl<
          _$CoachQuestionEventCreateBatchImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(GetAllQuestionParams params) getQuestions,
    required TResult Function(String query) filterQuestions,
    required TResult Function() clear,
    required TResult Function(List<CreateQuestionParams> params) createBatch,
    required TResult Function(List<UpdateQuestionParams> params) updateBatch,
    required TResult Function(DeleteQuestionParams params) delete,
  }) {
    return createBatch(params);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(GetAllQuestionParams params)? getQuestions,
    TResult? Function(String query)? filterQuestions,
    TResult? Function()? clear,
    TResult? Function(List<CreateQuestionParams> params)? createBatch,
    TResult? Function(List<UpdateQuestionParams> params)? updateBatch,
    TResult? Function(DeleteQuestionParams params)? delete,
  }) {
    return createBatch?.call(params);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GetAllQuestionParams params)? getQuestions,
    TResult Function(String query)? filterQuestions,
    TResult Function()? clear,
    TResult Function(List<CreateQuestionParams> params)? createBatch,
    TResult Function(List<UpdateQuestionParams> params)? updateBatch,
    TResult Function(DeleteQuestionParams params)? delete,
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
    required TResult Function(CoachQuestionEventGetQuestions value)
        getQuestions,
    required TResult Function(CoachQuestionEventFilterQuestions value)
        filterQuestions,
    required TResult Function(CoachQuestionEventClear value) clear,
    required TResult Function(CoachQuestionEventCreateBatch value) createBatch,
    required TResult Function(CoachQuestionEventUpdateBatch value) updateBatch,
    required TResult Function(CoachQuestionEventDelete value) delete,
  }) {
    return createBatch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CoachQuestionEventGetQuestions value)? getQuestions,
    TResult? Function(CoachQuestionEventFilterQuestions value)? filterQuestions,
    TResult? Function(CoachQuestionEventClear value)? clear,
    TResult? Function(CoachQuestionEventCreateBatch value)? createBatch,
    TResult? Function(CoachQuestionEventUpdateBatch value)? updateBatch,
    TResult? Function(CoachQuestionEventDelete value)? delete,
  }) {
    return createBatch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CoachQuestionEventGetQuestions value)? getQuestions,
    TResult Function(CoachQuestionEventFilterQuestions value)? filterQuestions,
    TResult Function(CoachQuestionEventClear value)? clear,
    TResult Function(CoachQuestionEventCreateBatch value)? createBatch,
    TResult Function(CoachQuestionEventUpdateBatch value)? updateBatch,
    TResult Function(CoachQuestionEventDelete value)? delete,
    required TResult orElse(),
  }) {
    if (createBatch != null) {
      return createBatch(this);
    }
    return orElse();
  }
}

abstract class CoachQuestionEventCreateBatch implements CoachQuestionEvent {
  const factory CoachQuestionEventCreateBatch(
          final List<CreateQuestionParams> params) =
      _$CoachQuestionEventCreateBatchImpl;

  List<CreateQuestionParams> get params;

  /// Create a copy of CoachQuestionEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CoachQuestionEventCreateBatchImplCopyWith<
          _$CoachQuestionEventCreateBatchImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CoachQuestionEventUpdateBatchImplCopyWith<$Res> {
  factory _$$CoachQuestionEventUpdateBatchImplCopyWith(
          _$CoachQuestionEventUpdateBatchImpl value,
          $Res Function(_$CoachQuestionEventUpdateBatchImpl) then) =
      __$$CoachQuestionEventUpdateBatchImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<UpdateQuestionParams> params});
}

/// @nodoc
class __$$CoachQuestionEventUpdateBatchImplCopyWithImpl<$Res>
    extends _$CoachQuestionEventCopyWithImpl<$Res,
        _$CoachQuestionEventUpdateBatchImpl>
    implements _$$CoachQuestionEventUpdateBatchImplCopyWith<$Res> {
  __$$CoachQuestionEventUpdateBatchImplCopyWithImpl(
      _$CoachQuestionEventUpdateBatchImpl _value,
      $Res Function(_$CoachQuestionEventUpdateBatchImpl) _then)
      : super(_value, _then);

  /// Create a copy of CoachQuestionEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? params = null,
  }) {
    return _then(_$CoachQuestionEventUpdateBatchImpl(
      null == params
          ? _value._params
          : params // ignore: cast_nullable_to_non_nullable
              as List<UpdateQuestionParams>,
    ));
  }
}

/// @nodoc

class _$CoachQuestionEventUpdateBatchImpl
    implements CoachQuestionEventUpdateBatch {
  const _$CoachQuestionEventUpdateBatchImpl(
      final List<UpdateQuestionParams> params)
      : _params = params;

  final List<UpdateQuestionParams> _params;
  @override
  List<UpdateQuestionParams> get params {
    if (_params is EqualUnmodifiableListView) return _params;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_params);
  }

  @override
  String toString() {
    return 'CoachQuestionEvent.updateBatch(params: $params)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CoachQuestionEventUpdateBatchImpl &&
            const DeepCollectionEquality().equals(other._params, _params));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_params));

  /// Create a copy of CoachQuestionEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CoachQuestionEventUpdateBatchImplCopyWith<
          _$CoachQuestionEventUpdateBatchImpl>
      get copyWith => __$$CoachQuestionEventUpdateBatchImplCopyWithImpl<
          _$CoachQuestionEventUpdateBatchImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(GetAllQuestionParams params) getQuestions,
    required TResult Function(String query) filterQuestions,
    required TResult Function() clear,
    required TResult Function(List<CreateQuestionParams> params) createBatch,
    required TResult Function(List<UpdateQuestionParams> params) updateBatch,
    required TResult Function(DeleteQuestionParams params) delete,
  }) {
    return updateBatch(params);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(GetAllQuestionParams params)? getQuestions,
    TResult? Function(String query)? filterQuestions,
    TResult? Function()? clear,
    TResult? Function(List<CreateQuestionParams> params)? createBatch,
    TResult? Function(List<UpdateQuestionParams> params)? updateBatch,
    TResult? Function(DeleteQuestionParams params)? delete,
  }) {
    return updateBatch?.call(params);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GetAllQuestionParams params)? getQuestions,
    TResult Function(String query)? filterQuestions,
    TResult Function()? clear,
    TResult Function(List<CreateQuestionParams> params)? createBatch,
    TResult Function(List<UpdateQuestionParams> params)? updateBatch,
    TResult Function(DeleteQuestionParams params)? delete,
    required TResult orElse(),
  }) {
    if (updateBatch != null) {
      return updateBatch(params);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CoachQuestionEventGetQuestions value)
        getQuestions,
    required TResult Function(CoachQuestionEventFilterQuestions value)
        filterQuestions,
    required TResult Function(CoachQuestionEventClear value) clear,
    required TResult Function(CoachQuestionEventCreateBatch value) createBatch,
    required TResult Function(CoachQuestionEventUpdateBatch value) updateBatch,
    required TResult Function(CoachQuestionEventDelete value) delete,
  }) {
    return updateBatch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CoachQuestionEventGetQuestions value)? getQuestions,
    TResult? Function(CoachQuestionEventFilterQuestions value)? filterQuestions,
    TResult? Function(CoachQuestionEventClear value)? clear,
    TResult? Function(CoachQuestionEventCreateBatch value)? createBatch,
    TResult? Function(CoachQuestionEventUpdateBatch value)? updateBatch,
    TResult? Function(CoachQuestionEventDelete value)? delete,
  }) {
    return updateBatch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CoachQuestionEventGetQuestions value)? getQuestions,
    TResult Function(CoachQuestionEventFilterQuestions value)? filterQuestions,
    TResult Function(CoachQuestionEventClear value)? clear,
    TResult Function(CoachQuestionEventCreateBatch value)? createBatch,
    TResult Function(CoachQuestionEventUpdateBatch value)? updateBatch,
    TResult Function(CoachQuestionEventDelete value)? delete,
    required TResult orElse(),
  }) {
    if (updateBatch != null) {
      return updateBatch(this);
    }
    return orElse();
  }
}

abstract class CoachQuestionEventUpdateBatch implements CoachQuestionEvent {
  const factory CoachQuestionEventUpdateBatch(
          final List<UpdateQuestionParams> params) =
      _$CoachQuestionEventUpdateBatchImpl;

  List<UpdateQuestionParams> get params;

  /// Create a copy of CoachQuestionEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CoachQuestionEventUpdateBatchImplCopyWith<
          _$CoachQuestionEventUpdateBatchImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CoachQuestionEventDeleteImplCopyWith<$Res> {
  factory _$$CoachQuestionEventDeleteImplCopyWith(
          _$CoachQuestionEventDeleteImpl value,
          $Res Function(_$CoachQuestionEventDeleteImpl) then) =
      __$$CoachQuestionEventDeleteImplCopyWithImpl<$Res>;
  @useResult
  $Res call({DeleteQuestionParams params});

  $DeleteQuestionParamsCopyWith<$Res> get params;
}

/// @nodoc
class __$$CoachQuestionEventDeleteImplCopyWithImpl<$Res>
    extends _$CoachQuestionEventCopyWithImpl<$Res,
        _$CoachQuestionEventDeleteImpl>
    implements _$$CoachQuestionEventDeleteImplCopyWith<$Res> {
  __$$CoachQuestionEventDeleteImplCopyWithImpl(
      _$CoachQuestionEventDeleteImpl _value,
      $Res Function(_$CoachQuestionEventDeleteImpl) _then)
      : super(_value, _then);

  /// Create a copy of CoachQuestionEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? params = null,
  }) {
    return _then(_$CoachQuestionEventDeleteImpl(
      null == params
          ? _value.params
          : params // ignore: cast_nullable_to_non_nullable
              as DeleteQuestionParams,
    ));
  }

  /// Create a copy of CoachQuestionEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DeleteQuestionParamsCopyWith<$Res> get params {
    return $DeleteQuestionParamsCopyWith<$Res>(_value.params, (value) {
      return _then(_value.copyWith(params: value));
    });
  }
}

/// @nodoc

class _$CoachQuestionEventDeleteImpl implements CoachQuestionEventDelete {
  const _$CoachQuestionEventDeleteImpl(this.params);

  @override
  final DeleteQuestionParams params;

  @override
  String toString() {
    return 'CoachQuestionEvent.delete(params: $params)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CoachQuestionEventDeleteImpl &&
            (identical(other.params, params) || other.params == params));
  }

  @override
  int get hashCode => Object.hash(runtimeType, params);

  /// Create a copy of CoachQuestionEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CoachQuestionEventDeleteImplCopyWith<_$CoachQuestionEventDeleteImpl>
      get copyWith => __$$CoachQuestionEventDeleteImplCopyWithImpl<
          _$CoachQuestionEventDeleteImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(GetAllQuestionParams params) getQuestions,
    required TResult Function(String query) filterQuestions,
    required TResult Function() clear,
    required TResult Function(List<CreateQuestionParams> params) createBatch,
    required TResult Function(List<UpdateQuestionParams> params) updateBatch,
    required TResult Function(DeleteQuestionParams params) delete,
  }) {
    return delete(params);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(GetAllQuestionParams params)? getQuestions,
    TResult? Function(String query)? filterQuestions,
    TResult? Function()? clear,
    TResult? Function(List<CreateQuestionParams> params)? createBatch,
    TResult? Function(List<UpdateQuestionParams> params)? updateBatch,
    TResult? Function(DeleteQuestionParams params)? delete,
  }) {
    return delete?.call(params);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GetAllQuestionParams params)? getQuestions,
    TResult Function(String query)? filterQuestions,
    TResult Function()? clear,
    TResult Function(List<CreateQuestionParams> params)? createBatch,
    TResult Function(List<UpdateQuestionParams> params)? updateBatch,
    TResult Function(DeleteQuestionParams params)? delete,
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
    required TResult Function(CoachQuestionEventGetQuestions value)
        getQuestions,
    required TResult Function(CoachQuestionEventFilterQuestions value)
        filterQuestions,
    required TResult Function(CoachQuestionEventClear value) clear,
    required TResult Function(CoachQuestionEventCreateBatch value) createBatch,
    required TResult Function(CoachQuestionEventUpdateBatch value) updateBatch,
    required TResult Function(CoachQuestionEventDelete value) delete,
  }) {
    return delete(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CoachQuestionEventGetQuestions value)? getQuestions,
    TResult? Function(CoachQuestionEventFilterQuestions value)? filterQuestions,
    TResult? Function(CoachQuestionEventClear value)? clear,
    TResult? Function(CoachQuestionEventCreateBatch value)? createBatch,
    TResult? Function(CoachQuestionEventUpdateBatch value)? updateBatch,
    TResult? Function(CoachQuestionEventDelete value)? delete,
  }) {
    return delete?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CoachQuestionEventGetQuestions value)? getQuestions,
    TResult Function(CoachQuestionEventFilterQuestions value)? filterQuestions,
    TResult Function(CoachQuestionEventClear value)? clear,
    TResult Function(CoachQuestionEventCreateBatch value)? createBatch,
    TResult Function(CoachQuestionEventUpdateBatch value)? updateBatch,
    TResult Function(CoachQuestionEventDelete value)? delete,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete(this);
    }
    return orElse();
  }
}

abstract class CoachQuestionEventDelete implements CoachQuestionEvent {
  const factory CoachQuestionEventDelete(final DeleteQuestionParams params) =
      _$CoachQuestionEventDeleteImpl;

  DeleteQuestionParams get params;

  /// Create a copy of CoachQuestionEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CoachQuestionEventDeleteImplCopyWith<_$CoachQuestionEventDeleteImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CoachQuestionState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<QuestionModel> questions,
            List<QuestionModel> filteredQuestions)
        loaded,
    required TResult Function(String message) failure,
    required TResult Function(List<QuestionModel> question) createdBatch,
    required TResult Function(List<QuestionModel> question) updatedBatch,
    required TResult Function(QuestionModel question) deleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<QuestionModel> questions,
            List<QuestionModel> filteredQuestions)?
        loaded,
    TResult? Function(String message)? failure,
    TResult? Function(List<QuestionModel> question)? createdBatch,
    TResult? Function(List<QuestionModel> question)? updatedBatch,
    TResult? Function(QuestionModel question)? deleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<QuestionModel> questions,
            List<QuestionModel> filteredQuestions)?
        loaded,
    TResult Function(String message)? failure,
    TResult Function(List<QuestionModel> question)? createdBatch,
    TResult Function(List<QuestionModel> question)? updatedBatch,
    TResult Function(QuestionModel question)? deleted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CoachQuestionStateInitial value) initial,
    required TResult Function(CoachQuestionStateLoading value) loading,
    required TResult Function(CoachQuestionStateLoaded value) loaded,
    required TResult Function(CoachQuestionStateFailure value) failure,
    required TResult Function(CoachQuestionStateCreatedBatch value)
        createdBatch,
    required TResult Function(CoachQuestionStateUpdatedBatch value)
        updatedBatch,
    required TResult Function(CoachQuestionStateDeleted value) deleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CoachQuestionStateInitial value)? initial,
    TResult? Function(CoachQuestionStateLoading value)? loading,
    TResult? Function(CoachQuestionStateLoaded value)? loaded,
    TResult? Function(CoachQuestionStateFailure value)? failure,
    TResult? Function(CoachQuestionStateCreatedBatch value)? createdBatch,
    TResult? Function(CoachQuestionStateUpdatedBatch value)? updatedBatch,
    TResult? Function(CoachQuestionStateDeleted value)? deleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CoachQuestionStateInitial value)? initial,
    TResult Function(CoachQuestionStateLoading value)? loading,
    TResult Function(CoachQuestionStateLoaded value)? loaded,
    TResult Function(CoachQuestionStateFailure value)? failure,
    TResult Function(CoachQuestionStateCreatedBatch value)? createdBatch,
    TResult Function(CoachQuestionStateUpdatedBatch value)? updatedBatch,
    TResult Function(CoachQuestionStateDeleted value)? deleted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CoachQuestionStateCopyWith<$Res> {
  factory $CoachQuestionStateCopyWith(
          CoachQuestionState value, $Res Function(CoachQuestionState) then) =
      _$CoachQuestionStateCopyWithImpl<$Res, CoachQuestionState>;
}

/// @nodoc
class _$CoachQuestionStateCopyWithImpl<$Res, $Val extends CoachQuestionState>
    implements $CoachQuestionStateCopyWith<$Res> {
  _$CoachQuestionStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CoachQuestionState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$CoachQuestionStateInitialImplCopyWith<$Res> {
  factory _$$CoachQuestionStateInitialImplCopyWith(
          _$CoachQuestionStateInitialImpl value,
          $Res Function(_$CoachQuestionStateInitialImpl) then) =
      __$$CoachQuestionStateInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CoachQuestionStateInitialImplCopyWithImpl<$Res>
    extends _$CoachQuestionStateCopyWithImpl<$Res,
        _$CoachQuestionStateInitialImpl>
    implements _$$CoachQuestionStateInitialImplCopyWith<$Res> {
  __$$CoachQuestionStateInitialImplCopyWithImpl(
      _$CoachQuestionStateInitialImpl _value,
      $Res Function(_$CoachQuestionStateInitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of CoachQuestionState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$CoachQuestionStateInitialImpl implements CoachQuestionStateInitial {
  const _$CoachQuestionStateInitialImpl();

  @override
  String toString() {
    return 'CoachQuestionState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CoachQuestionStateInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<QuestionModel> questions,
            List<QuestionModel> filteredQuestions)
        loaded,
    required TResult Function(String message) failure,
    required TResult Function(List<QuestionModel> question) createdBatch,
    required TResult Function(List<QuestionModel> question) updatedBatch,
    required TResult Function(QuestionModel question) deleted,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<QuestionModel> questions,
            List<QuestionModel> filteredQuestions)?
        loaded,
    TResult? Function(String message)? failure,
    TResult? Function(List<QuestionModel> question)? createdBatch,
    TResult? Function(List<QuestionModel> question)? updatedBatch,
    TResult? Function(QuestionModel question)? deleted,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<QuestionModel> questions,
            List<QuestionModel> filteredQuestions)?
        loaded,
    TResult Function(String message)? failure,
    TResult Function(List<QuestionModel> question)? createdBatch,
    TResult Function(List<QuestionModel> question)? updatedBatch,
    TResult Function(QuestionModel question)? deleted,
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
    required TResult Function(CoachQuestionStateInitial value) initial,
    required TResult Function(CoachQuestionStateLoading value) loading,
    required TResult Function(CoachQuestionStateLoaded value) loaded,
    required TResult Function(CoachQuestionStateFailure value) failure,
    required TResult Function(CoachQuestionStateCreatedBatch value)
        createdBatch,
    required TResult Function(CoachQuestionStateUpdatedBatch value)
        updatedBatch,
    required TResult Function(CoachQuestionStateDeleted value) deleted,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CoachQuestionStateInitial value)? initial,
    TResult? Function(CoachQuestionStateLoading value)? loading,
    TResult? Function(CoachQuestionStateLoaded value)? loaded,
    TResult? Function(CoachQuestionStateFailure value)? failure,
    TResult? Function(CoachQuestionStateCreatedBatch value)? createdBatch,
    TResult? Function(CoachQuestionStateUpdatedBatch value)? updatedBatch,
    TResult? Function(CoachQuestionStateDeleted value)? deleted,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CoachQuestionStateInitial value)? initial,
    TResult Function(CoachQuestionStateLoading value)? loading,
    TResult Function(CoachQuestionStateLoaded value)? loaded,
    TResult Function(CoachQuestionStateFailure value)? failure,
    TResult Function(CoachQuestionStateCreatedBatch value)? createdBatch,
    TResult Function(CoachQuestionStateUpdatedBatch value)? updatedBatch,
    TResult Function(CoachQuestionStateDeleted value)? deleted,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class CoachQuestionStateInitial implements CoachQuestionState {
  const factory CoachQuestionStateInitial() = _$CoachQuestionStateInitialImpl;
}

/// @nodoc
abstract class _$$CoachQuestionStateLoadingImplCopyWith<$Res> {
  factory _$$CoachQuestionStateLoadingImplCopyWith(
          _$CoachQuestionStateLoadingImpl value,
          $Res Function(_$CoachQuestionStateLoadingImpl) then) =
      __$$CoachQuestionStateLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CoachQuestionStateLoadingImplCopyWithImpl<$Res>
    extends _$CoachQuestionStateCopyWithImpl<$Res,
        _$CoachQuestionStateLoadingImpl>
    implements _$$CoachQuestionStateLoadingImplCopyWith<$Res> {
  __$$CoachQuestionStateLoadingImplCopyWithImpl(
      _$CoachQuestionStateLoadingImpl _value,
      $Res Function(_$CoachQuestionStateLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of CoachQuestionState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$CoachQuestionStateLoadingImpl implements CoachQuestionStateLoading {
  const _$CoachQuestionStateLoadingImpl();

  @override
  String toString() {
    return 'CoachQuestionState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CoachQuestionStateLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<QuestionModel> questions,
            List<QuestionModel> filteredQuestions)
        loaded,
    required TResult Function(String message) failure,
    required TResult Function(List<QuestionModel> question) createdBatch,
    required TResult Function(List<QuestionModel> question) updatedBatch,
    required TResult Function(QuestionModel question) deleted,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<QuestionModel> questions,
            List<QuestionModel> filteredQuestions)?
        loaded,
    TResult? Function(String message)? failure,
    TResult? Function(List<QuestionModel> question)? createdBatch,
    TResult? Function(List<QuestionModel> question)? updatedBatch,
    TResult? Function(QuestionModel question)? deleted,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<QuestionModel> questions,
            List<QuestionModel> filteredQuestions)?
        loaded,
    TResult Function(String message)? failure,
    TResult Function(List<QuestionModel> question)? createdBatch,
    TResult Function(List<QuestionModel> question)? updatedBatch,
    TResult Function(QuestionModel question)? deleted,
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
    required TResult Function(CoachQuestionStateInitial value) initial,
    required TResult Function(CoachQuestionStateLoading value) loading,
    required TResult Function(CoachQuestionStateLoaded value) loaded,
    required TResult Function(CoachQuestionStateFailure value) failure,
    required TResult Function(CoachQuestionStateCreatedBatch value)
        createdBatch,
    required TResult Function(CoachQuestionStateUpdatedBatch value)
        updatedBatch,
    required TResult Function(CoachQuestionStateDeleted value) deleted,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CoachQuestionStateInitial value)? initial,
    TResult? Function(CoachQuestionStateLoading value)? loading,
    TResult? Function(CoachQuestionStateLoaded value)? loaded,
    TResult? Function(CoachQuestionStateFailure value)? failure,
    TResult? Function(CoachQuestionStateCreatedBatch value)? createdBatch,
    TResult? Function(CoachQuestionStateUpdatedBatch value)? updatedBatch,
    TResult? Function(CoachQuestionStateDeleted value)? deleted,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CoachQuestionStateInitial value)? initial,
    TResult Function(CoachQuestionStateLoading value)? loading,
    TResult Function(CoachQuestionStateLoaded value)? loaded,
    TResult Function(CoachQuestionStateFailure value)? failure,
    TResult Function(CoachQuestionStateCreatedBatch value)? createdBatch,
    TResult Function(CoachQuestionStateUpdatedBatch value)? updatedBatch,
    TResult Function(CoachQuestionStateDeleted value)? deleted,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class CoachQuestionStateLoading implements CoachQuestionState {
  const factory CoachQuestionStateLoading() = _$CoachQuestionStateLoadingImpl;
}

/// @nodoc
abstract class _$$CoachQuestionStateLoadedImplCopyWith<$Res> {
  factory _$$CoachQuestionStateLoadedImplCopyWith(
          _$CoachQuestionStateLoadedImpl value,
          $Res Function(_$CoachQuestionStateLoadedImpl) then) =
      __$$CoachQuestionStateLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {List<QuestionModel> questions, List<QuestionModel> filteredQuestions});
}

/// @nodoc
class __$$CoachQuestionStateLoadedImplCopyWithImpl<$Res>
    extends _$CoachQuestionStateCopyWithImpl<$Res,
        _$CoachQuestionStateLoadedImpl>
    implements _$$CoachQuestionStateLoadedImplCopyWith<$Res> {
  __$$CoachQuestionStateLoadedImplCopyWithImpl(
      _$CoachQuestionStateLoadedImpl _value,
      $Res Function(_$CoachQuestionStateLoadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of CoachQuestionState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? questions = null,
    Object? filteredQuestions = null,
  }) {
    return _then(_$CoachQuestionStateLoadedImpl(
      questions: null == questions
          ? _value._questions
          : questions // ignore: cast_nullable_to_non_nullable
              as List<QuestionModel>,
      filteredQuestions: null == filteredQuestions
          ? _value._filteredQuestions
          : filteredQuestions // ignore: cast_nullable_to_non_nullable
              as List<QuestionModel>,
    ));
  }
}

/// @nodoc

class _$CoachQuestionStateLoadedImpl implements CoachQuestionStateLoaded {
  const _$CoachQuestionStateLoadedImpl(
      {required final List<QuestionModel> questions,
      required final List<QuestionModel> filteredQuestions})
      : _questions = questions,
        _filteredQuestions = filteredQuestions;

  final List<QuestionModel> _questions;
  @override
  List<QuestionModel> get questions {
    if (_questions is EqualUnmodifiableListView) return _questions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_questions);
  }

  final List<QuestionModel> _filteredQuestions;
  @override
  List<QuestionModel> get filteredQuestions {
    if (_filteredQuestions is EqualUnmodifiableListView)
      return _filteredQuestions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_filteredQuestions);
  }

  @override
  String toString() {
    return 'CoachQuestionState.loaded(questions: $questions, filteredQuestions: $filteredQuestions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CoachQuestionStateLoadedImpl &&
            const DeepCollectionEquality()
                .equals(other._questions, _questions) &&
            const DeepCollectionEquality()
                .equals(other._filteredQuestions, _filteredQuestions));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_questions),
      const DeepCollectionEquality().hash(_filteredQuestions));

  /// Create a copy of CoachQuestionState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CoachQuestionStateLoadedImplCopyWith<_$CoachQuestionStateLoadedImpl>
      get copyWith => __$$CoachQuestionStateLoadedImplCopyWithImpl<
          _$CoachQuestionStateLoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<QuestionModel> questions,
            List<QuestionModel> filteredQuestions)
        loaded,
    required TResult Function(String message) failure,
    required TResult Function(List<QuestionModel> question) createdBatch,
    required TResult Function(List<QuestionModel> question) updatedBatch,
    required TResult Function(QuestionModel question) deleted,
  }) {
    return loaded(questions, filteredQuestions);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<QuestionModel> questions,
            List<QuestionModel> filteredQuestions)?
        loaded,
    TResult? Function(String message)? failure,
    TResult? Function(List<QuestionModel> question)? createdBatch,
    TResult? Function(List<QuestionModel> question)? updatedBatch,
    TResult? Function(QuestionModel question)? deleted,
  }) {
    return loaded?.call(questions, filteredQuestions);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<QuestionModel> questions,
            List<QuestionModel> filteredQuestions)?
        loaded,
    TResult Function(String message)? failure,
    TResult Function(List<QuestionModel> question)? createdBatch,
    TResult Function(List<QuestionModel> question)? updatedBatch,
    TResult Function(QuestionModel question)? deleted,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(questions, filteredQuestions);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CoachQuestionStateInitial value) initial,
    required TResult Function(CoachQuestionStateLoading value) loading,
    required TResult Function(CoachQuestionStateLoaded value) loaded,
    required TResult Function(CoachQuestionStateFailure value) failure,
    required TResult Function(CoachQuestionStateCreatedBatch value)
        createdBatch,
    required TResult Function(CoachQuestionStateUpdatedBatch value)
        updatedBatch,
    required TResult Function(CoachQuestionStateDeleted value) deleted,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CoachQuestionStateInitial value)? initial,
    TResult? Function(CoachQuestionStateLoading value)? loading,
    TResult? Function(CoachQuestionStateLoaded value)? loaded,
    TResult? Function(CoachQuestionStateFailure value)? failure,
    TResult? Function(CoachQuestionStateCreatedBatch value)? createdBatch,
    TResult? Function(CoachQuestionStateUpdatedBatch value)? updatedBatch,
    TResult? Function(CoachQuestionStateDeleted value)? deleted,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CoachQuestionStateInitial value)? initial,
    TResult Function(CoachQuestionStateLoading value)? loading,
    TResult Function(CoachQuestionStateLoaded value)? loaded,
    TResult Function(CoachQuestionStateFailure value)? failure,
    TResult Function(CoachQuestionStateCreatedBatch value)? createdBatch,
    TResult Function(CoachQuestionStateUpdatedBatch value)? updatedBatch,
    TResult Function(CoachQuestionStateDeleted value)? deleted,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class CoachQuestionStateLoaded implements CoachQuestionState {
  const factory CoachQuestionStateLoaded(
          {required final List<QuestionModel> questions,
          required final List<QuestionModel> filteredQuestions}) =
      _$CoachQuestionStateLoadedImpl;

  List<QuestionModel> get questions;
  List<QuestionModel> get filteredQuestions;

  /// Create a copy of CoachQuestionState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CoachQuestionStateLoadedImplCopyWith<_$CoachQuestionStateLoadedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CoachQuestionStateFailureImplCopyWith<$Res> {
  factory _$$CoachQuestionStateFailureImplCopyWith(
          _$CoachQuestionStateFailureImpl value,
          $Res Function(_$CoachQuestionStateFailureImpl) then) =
      __$$CoachQuestionStateFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$CoachQuestionStateFailureImplCopyWithImpl<$Res>
    extends _$CoachQuestionStateCopyWithImpl<$Res,
        _$CoachQuestionStateFailureImpl>
    implements _$$CoachQuestionStateFailureImplCopyWith<$Res> {
  __$$CoachQuestionStateFailureImplCopyWithImpl(
      _$CoachQuestionStateFailureImpl _value,
      $Res Function(_$CoachQuestionStateFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of CoachQuestionState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$CoachQuestionStateFailureImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CoachQuestionStateFailureImpl implements CoachQuestionStateFailure {
  const _$CoachQuestionStateFailureImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'CoachQuestionState.failure(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CoachQuestionStateFailureImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of CoachQuestionState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CoachQuestionStateFailureImplCopyWith<_$CoachQuestionStateFailureImpl>
      get copyWith => __$$CoachQuestionStateFailureImplCopyWithImpl<
          _$CoachQuestionStateFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<QuestionModel> questions,
            List<QuestionModel> filteredQuestions)
        loaded,
    required TResult Function(String message) failure,
    required TResult Function(List<QuestionModel> question) createdBatch,
    required TResult Function(List<QuestionModel> question) updatedBatch,
    required TResult Function(QuestionModel question) deleted,
  }) {
    return failure(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<QuestionModel> questions,
            List<QuestionModel> filteredQuestions)?
        loaded,
    TResult? Function(String message)? failure,
    TResult? Function(List<QuestionModel> question)? createdBatch,
    TResult? Function(List<QuestionModel> question)? updatedBatch,
    TResult? Function(QuestionModel question)? deleted,
  }) {
    return failure?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<QuestionModel> questions,
            List<QuestionModel> filteredQuestions)?
        loaded,
    TResult Function(String message)? failure,
    TResult Function(List<QuestionModel> question)? createdBatch,
    TResult Function(List<QuestionModel> question)? updatedBatch,
    TResult Function(QuestionModel question)? deleted,
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
    required TResult Function(CoachQuestionStateInitial value) initial,
    required TResult Function(CoachQuestionStateLoading value) loading,
    required TResult Function(CoachQuestionStateLoaded value) loaded,
    required TResult Function(CoachQuestionStateFailure value) failure,
    required TResult Function(CoachQuestionStateCreatedBatch value)
        createdBatch,
    required TResult Function(CoachQuestionStateUpdatedBatch value)
        updatedBatch,
    required TResult Function(CoachQuestionStateDeleted value) deleted,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CoachQuestionStateInitial value)? initial,
    TResult? Function(CoachQuestionStateLoading value)? loading,
    TResult? Function(CoachQuestionStateLoaded value)? loaded,
    TResult? Function(CoachQuestionStateFailure value)? failure,
    TResult? Function(CoachQuestionStateCreatedBatch value)? createdBatch,
    TResult? Function(CoachQuestionStateUpdatedBatch value)? updatedBatch,
    TResult? Function(CoachQuestionStateDeleted value)? deleted,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CoachQuestionStateInitial value)? initial,
    TResult Function(CoachQuestionStateLoading value)? loading,
    TResult Function(CoachQuestionStateLoaded value)? loaded,
    TResult Function(CoachQuestionStateFailure value)? failure,
    TResult Function(CoachQuestionStateCreatedBatch value)? createdBatch,
    TResult Function(CoachQuestionStateUpdatedBatch value)? updatedBatch,
    TResult Function(CoachQuestionStateDeleted value)? deleted,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class CoachQuestionStateFailure implements CoachQuestionState {
  const factory CoachQuestionStateFailure(final String message) =
      _$CoachQuestionStateFailureImpl;

  String get message;

  /// Create a copy of CoachQuestionState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CoachQuestionStateFailureImplCopyWith<_$CoachQuestionStateFailureImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CoachQuestionStateCreatedBatchImplCopyWith<$Res> {
  factory _$$CoachQuestionStateCreatedBatchImplCopyWith(
          _$CoachQuestionStateCreatedBatchImpl value,
          $Res Function(_$CoachQuestionStateCreatedBatchImpl) then) =
      __$$CoachQuestionStateCreatedBatchImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<QuestionModel> question});
}

/// @nodoc
class __$$CoachQuestionStateCreatedBatchImplCopyWithImpl<$Res>
    extends _$CoachQuestionStateCopyWithImpl<$Res,
        _$CoachQuestionStateCreatedBatchImpl>
    implements _$$CoachQuestionStateCreatedBatchImplCopyWith<$Res> {
  __$$CoachQuestionStateCreatedBatchImplCopyWithImpl(
      _$CoachQuestionStateCreatedBatchImpl _value,
      $Res Function(_$CoachQuestionStateCreatedBatchImpl) _then)
      : super(_value, _then);

  /// Create a copy of CoachQuestionState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? question = null,
  }) {
    return _then(_$CoachQuestionStateCreatedBatchImpl(
      null == question
          ? _value._question
          : question // ignore: cast_nullable_to_non_nullable
              as List<QuestionModel>,
    ));
  }
}

/// @nodoc

class _$CoachQuestionStateCreatedBatchImpl
    implements CoachQuestionStateCreatedBatch {
  const _$CoachQuestionStateCreatedBatchImpl(final List<QuestionModel> question)
      : _question = question;

  final List<QuestionModel> _question;
  @override
  List<QuestionModel> get question {
    if (_question is EqualUnmodifiableListView) return _question;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_question);
  }

  @override
  String toString() {
    return 'CoachQuestionState.createdBatch(question: $question)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CoachQuestionStateCreatedBatchImpl &&
            const DeepCollectionEquality().equals(other._question, _question));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_question));

  /// Create a copy of CoachQuestionState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CoachQuestionStateCreatedBatchImplCopyWith<
          _$CoachQuestionStateCreatedBatchImpl>
      get copyWith => __$$CoachQuestionStateCreatedBatchImplCopyWithImpl<
          _$CoachQuestionStateCreatedBatchImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<QuestionModel> questions,
            List<QuestionModel> filteredQuestions)
        loaded,
    required TResult Function(String message) failure,
    required TResult Function(List<QuestionModel> question) createdBatch,
    required TResult Function(List<QuestionModel> question) updatedBatch,
    required TResult Function(QuestionModel question) deleted,
  }) {
    return createdBatch(question);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<QuestionModel> questions,
            List<QuestionModel> filteredQuestions)?
        loaded,
    TResult? Function(String message)? failure,
    TResult? Function(List<QuestionModel> question)? createdBatch,
    TResult? Function(List<QuestionModel> question)? updatedBatch,
    TResult? Function(QuestionModel question)? deleted,
  }) {
    return createdBatch?.call(question);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<QuestionModel> questions,
            List<QuestionModel> filteredQuestions)?
        loaded,
    TResult Function(String message)? failure,
    TResult Function(List<QuestionModel> question)? createdBatch,
    TResult Function(List<QuestionModel> question)? updatedBatch,
    TResult Function(QuestionModel question)? deleted,
    required TResult orElse(),
  }) {
    if (createdBatch != null) {
      return createdBatch(question);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CoachQuestionStateInitial value) initial,
    required TResult Function(CoachQuestionStateLoading value) loading,
    required TResult Function(CoachQuestionStateLoaded value) loaded,
    required TResult Function(CoachQuestionStateFailure value) failure,
    required TResult Function(CoachQuestionStateCreatedBatch value)
        createdBatch,
    required TResult Function(CoachQuestionStateUpdatedBatch value)
        updatedBatch,
    required TResult Function(CoachQuestionStateDeleted value) deleted,
  }) {
    return createdBatch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CoachQuestionStateInitial value)? initial,
    TResult? Function(CoachQuestionStateLoading value)? loading,
    TResult? Function(CoachQuestionStateLoaded value)? loaded,
    TResult? Function(CoachQuestionStateFailure value)? failure,
    TResult? Function(CoachQuestionStateCreatedBatch value)? createdBatch,
    TResult? Function(CoachQuestionStateUpdatedBatch value)? updatedBatch,
    TResult? Function(CoachQuestionStateDeleted value)? deleted,
  }) {
    return createdBatch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CoachQuestionStateInitial value)? initial,
    TResult Function(CoachQuestionStateLoading value)? loading,
    TResult Function(CoachQuestionStateLoaded value)? loaded,
    TResult Function(CoachQuestionStateFailure value)? failure,
    TResult Function(CoachQuestionStateCreatedBatch value)? createdBatch,
    TResult Function(CoachQuestionStateUpdatedBatch value)? updatedBatch,
    TResult Function(CoachQuestionStateDeleted value)? deleted,
    required TResult orElse(),
  }) {
    if (createdBatch != null) {
      return createdBatch(this);
    }
    return orElse();
  }
}

abstract class CoachQuestionStateCreatedBatch implements CoachQuestionState {
  const factory CoachQuestionStateCreatedBatch(
          final List<QuestionModel> question) =
      _$CoachQuestionStateCreatedBatchImpl;

  List<QuestionModel> get question;

  /// Create a copy of CoachQuestionState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CoachQuestionStateCreatedBatchImplCopyWith<
          _$CoachQuestionStateCreatedBatchImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CoachQuestionStateUpdatedBatchImplCopyWith<$Res> {
  factory _$$CoachQuestionStateUpdatedBatchImplCopyWith(
          _$CoachQuestionStateUpdatedBatchImpl value,
          $Res Function(_$CoachQuestionStateUpdatedBatchImpl) then) =
      __$$CoachQuestionStateUpdatedBatchImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<QuestionModel> question});
}

/// @nodoc
class __$$CoachQuestionStateUpdatedBatchImplCopyWithImpl<$Res>
    extends _$CoachQuestionStateCopyWithImpl<$Res,
        _$CoachQuestionStateUpdatedBatchImpl>
    implements _$$CoachQuestionStateUpdatedBatchImplCopyWith<$Res> {
  __$$CoachQuestionStateUpdatedBatchImplCopyWithImpl(
      _$CoachQuestionStateUpdatedBatchImpl _value,
      $Res Function(_$CoachQuestionStateUpdatedBatchImpl) _then)
      : super(_value, _then);

  /// Create a copy of CoachQuestionState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? question = null,
  }) {
    return _then(_$CoachQuestionStateUpdatedBatchImpl(
      null == question
          ? _value._question
          : question // ignore: cast_nullable_to_non_nullable
              as List<QuestionModel>,
    ));
  }
}

/// @nodoc

class _$CoachQuestionStateUpdatedBatchImpl
    implements CoachQuestionStateUpdatedBatch {
  const _$CoachQuestionStateUpdatedBatchImpl(final List<QuestionModel> question)
      : _question = question;

  final List<QuestionModel> _question;
  @override
  List<QuestionModel> get question {
    if (_question is EqualUnmodifiableListView) return _question;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_question);
  }

  @override
  String toString() {
    return 'CoachQuestionState.updatedBatch(question: $question)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CoachQuestionStateUpdatedBatchImpl &&
            const DeepCollectionEquality().equals(other._question, _question));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_question));

  /// Create a copy of CoachQuestionState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CoachQuestionStateUpdatedBatchImplCopyWith<
          _$CoachQuestionStateUpdatedBatchImpl>
      get copyWith => __$$CoachQuestionStateUpdatedBatchImplCopyWithImpl<
          _$CoachQuestionStateUpdatedBatchImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<QuestionModel> questions,
            List<QuestionModel> filteredQuestions)
        loaded,
    required TResult Function(String message) failure,
    required TResult Function(List<QuestionModel> question) createdBatch,
    required TResult Function(List<QuestionModel> question) updatedBatch,
    required TResult Function(QuestionModel question) deleted,
  }) {
    return updatedBatch(question);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<QuestionModel> questions,
            List<QuestionModel> filteredQuestions)?
        loaded,
    TResult? Function(String message)? failure,
    TResult? Function(List<QuestionModel> question)? createdBatch,
    TResult? Function(List<QuestionModel> question)? updatedBatch,
    TResult? Function(QuestionModel question)? deleted,
  }) {
    return updatedBatch?.call(question);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<QuestionModel> questions,
            List<QuestionModel> filteredQuestions)?
        loaded,
    TResult Function(String message)? failure,
    TResult Function(List<QuestionModel> question)? createdBatch,
    TResult Function(List<QuestionModel> question)? updatedBatch,
    TResult Function(QuestionModel question)? deleted,
    required TResult orElse(),
  }) {
    if (updatedBatch != null) {
      return updatedBatch(question);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CoachQuestionStateInitial value) initial,
    required TResult Function(CoachQuestionStateLoading value) loading,
    required TResult Function(CoachQuestionStateLoaded value) loaded,
    required TResult Function(CoachQuestionStateFailure value) failure,
    required TResult Function(CoachQuestionStateCreatedBatch value)
        createdBatch,
    required TResult Function(CoachQuestionStateUpdatedBatch value)
        updatedBatch,
    required TResult Function(CoachQuestionStateDeleted value) deleted,
  }) {
    return updatedBatch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CoachQuestionStateInitial value)? initial,
    TResult? Function(CoachQuestionStateLoading value)? loading,
    TResult? Function(CoachQuestionStateLoaded value)? loaded,
    TResult? Function(CoachQuestionStateFailure value)? failure,
    TResult? Function(CoachQuestionStateCreatedBatch value)? createdBatch,
    TResult? Function(CoachQuestionStateUpdatedBatch value)? updatedBatch,
    TResult? Function(CoachQuestionStateDeleted value)? deleted,
  }) {
    return updatedBatch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CoachQuestionStateInitial value)? initial,
    TResult Function(CoachQuestionStateLoading value)? loading,
    TResult Function(CoachQuestionStateLoaded value)? loaded,
    TResult Function(CoachQuestionStateFailure value)? failure,
    TResult Function(CoachQuestionStateCreatedBatch value)? createdBatch,
    TResult Function(CoachQuestionStateUpdatedBatch value)? updatedBatch,
    TResult Function(CoachQuestionStateDeleted value)? deleted,
    required TResult orElse(),
  }) {
    if (updatedBatch != null) {
      return updatedBatch(this);
    }
    return orElse();
  }
}

abstract class CoachQuestionStateUpdatedBatch implements CoachQuestionState {
  const factory CoachQuestionStateUpdatedBatch(
          final List<QuestionModel> question) =
      _$CoachQuestionStateUpdatedBatchImpl;

  List<QuestionModel> get question;

  /// Create a copy of CoachQuestionState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CoachQuestionStateUpdatedBatchImplCopyWith<
          _$CoachQuestionStateUpdatedBatchImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CoachQuestionStateDeletedImplCopyWith<$Res> {
  factory _$$CoachQuestionStateDeletedImplCopyWith(
          _$CoachQuestionStateDeletedImpl value,
          $Res Function(_$CoachQuestionStateDeletedImpl) then) =
      __$$CoachQuestionStateDeletedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({QuestionModel question});

  $QuestionModelCopyWith<$Res> get question;
}

/// @nodoc
class __$$CoachQuestionStateDeletedImplCopyWithImpl<$Res>
    extends _$CoachQuestionStateCopyWithImpl<$Res,
        _$CoachQuestionStateDeletedImpl>
    implements _$$CoachQuestionStateDeletedImplCopyWith<$Res> {
  __$$CoachQuestionStateDeletedImplCopyWithImpl(
      _$CoachQuestionStateDeletedImpl _value,
      $Res Function(_$CoachQuestionStateDeletedImpl) _then)
      : super(_value, _then);

  /// Create a copy of CoachQuestionState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? question = null,
  }) {
    return _then(_$CoachQuestionStateDeletedImpl(
      null == question
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as QuestionModel,
    ));
  }

  /// Create a copy of CoachQuestionState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $QuestionModelCopyWith<$Res> get question {
    return $QuestionModelCopyWith<$Res>(_value.question, (value) {
      return _then(_value.copyWith(question: value));
    });
  }
}

/// @nodoc

class _$CoachQuestionStateDeletedImpl implements CoachQuestionStateDeleted {
  const _$CoachQuestionStateDeletedImpl(this.question);

  @override
  final QuestionModel question;

  @override
  String toString() {
    return 'CoachQuestionState.deleted(question: $question)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CoachQuestionStateDeletedImpl &&
            (identical(other.question, question) ||
                other.question == question));
  }

  @override
  int get hashCode => Object.hash(runtimeType, question);

  /// Create a copy of CoachQuestionState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CoachQuestionStateDeletedImplCopyWith<_$CoachQuestionStateDeletedImpl>
      get copyWith => __$$CoachQuestionStateDeletedImplCopyWithImpl<
          _$CoachQuestionStateDeletedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<QuestionModel> questions,
            List<QuestionModel> filteredQuestions)
        loaded,
    required TResult Function(String message) failure,
    required TResult Function(List<QuestionModel> question) createdBatch,
    required TResult Function(List<QuestionModel> question) updatedBatch,
    required TResult Function(QuestionModel question) deleted,
  }) {
    return deleted(question);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<QuestionModel> questions,
            List<QuestionModel> filteredQuestions)?
        loaded,
    TResult? Function(String message)? failure,
    TResult? Function(List<QuestionModel> question)? createdBatch,
    TResult? Function(List<QuestionModel> question)? updatedBatch,
    TResult? Function(QuestionModel question)? deleted,
  }) {
    return deleted?.call(question);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<QuestionModel> questions,
            List<QuestionModel> filteredQuestions)?
        loaded,
    TResult Function(String message)? failure,
    TResult Function(List<QuestionModel> question)? createdBatch,
    TResult Function(List<QuestionModel> question)? updatedBatch,
    TResult Function(QuestionModel question)? deleted,
    required TResult orElse(),
  }) {
    if (deleted != null) {
      return deleted(question);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CoachQuestionStateInitial value) initial,
    required TResult Function(CoachQuestionStateLoading value) loading,
    required TResult Function(CoachQuestionStateLoaded value) loaded,
    required TResult Function(CoachQuestionStateFailure value) failure,
    required TResult Function(CoachQuestionStateCreatedBatch value)
        createdBatch,
    required TResult Function(CoachQuestionStateUpdatedBatch value)
        updatedBatch,
    required TResult Function(CoachQuestionStateDeleted value) deleted,
  }) {
    return deleted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CoachQuestionStateInitial value)? initial,
    TResult? Function(CoachQuestionStateLoading value)? loading,
    TResult? Function(CoachQuestionStateLoaded value)? loaded,
    TResult? Function(CoachQuestionStateFailure value)? failure,
    TResult? Function(CoachQuestionStateCreatedBatch value)? createdBatch,
    TResult? Function(CoachQuestionStateUpdatedBatch value)? updatedBatch,
    TResult? Function(CoachQuestionStateDeleted value)? deleted,
  }) {
    return deleted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CoachQuestionStateInitial value)? initial,
    TResult Function(CoachQuestionStateLoading value)? loading,
    TResult Function(CoachQuestionStateLoaded value)? loaded,
    TResult Function(CoachQuestionStateFailure value)? failure,
    TResult Function(CoachQuestionStateCreatedBatch value)? createdBatch,
    TResult Function(CoachQuestionStateUpdatedBatch value)? updatedBatch,
    TResult Function(CoachQuestionStateDeleted value)? deleted,
    required TResult orElse(),
  }) {
    if (deleted != null) {
      return deleted(this);
    }
    return orElse();
  }
}

abstract class CoachQuestionStateDeleted implements CoachQuestionState {
  const factory CoachQuestionStateDeleted(final QuestionModel question) =
      _$CoachQuestionStateDeletedImpl;

  QuestionModel get question;

  /// Create a copy of CoachQuestionState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CoachQuestionStateDeletedImplCopyWith<_$CoachQuestionStateDeletedImpl>
      get copyWith => throw _privateConstructorUsedError;
}
