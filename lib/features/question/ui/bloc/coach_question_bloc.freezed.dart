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
    required TResult Function(_GetQuestions value) getQuestions,
    required TResult Function(_FilterQuestions value) filterQuestions,
    required TResult Function(_Clear value) clear,
    required TResult Function(_CreateBatch value) createBatch,
    required TResult Function(_UpdateBatch value) updateBatch,
    required TResult Function(_Delete value) delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetQuestions value)? getQuestions,
    TResult? Function(_FilterQuestions value)? filterQuestions,
    TResult? Function(_Clear value)? clear,
    TResult? Function(_CreateBatch value)? createBatch,
    TResult? Function(_UpdateBatch value)? updateBatch,
    TResult? Function(_Delete value)? delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetQuestions value)? getQuestions,
    TResult Function(_FilterQuestions value)? filterQuestions,
    TResult Function(_Clear value)? clear,
    TResult Function(_CreateBatch value)? createBatch,
    TResult Function(_UpdateBatch value)? updateBatch,
    TResult Function(_Delete value)? delete,
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
abstract class _$$GetQuestionsImplCopyWith<$Res> {
  factory _$$GetQuestionsImplCopyWith(
          _$GetQuestionsImpl value, $Res Function(_$GetQuestionsImpl) then) =
      __$$GetQuestionsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({GetAllQuestionParams params});

  $GetAllQuestionParamsCopyWith<$Res> get params;
}

/// @nodoc
class __$$GetQuestionsImplCopyWithImpl<$Res>
    extends _$CoachQuestionEventCopyWithImpl<$Res, _$GetQuestionsImpl>
    implements _$$GetQuestionsImplCopyWith<$Res> {
  __$$GetQuestionsImplCopyWithImpl(
      _$GetQuestionsImpl _value, $Res Function(_$GetQuestionsImpl) _then)
      : super(_value, _then);

  /// Create a copy of CoachQuestionEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? params = null,
  }) {
    return _then(_$GetQuestionsImpl(
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

class _$GetQuestionsImpl implements _GetQuestions {
  const _$GetQuestionsImpl(this.params);

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
            other is _$GetQuestionsImpl &&
            (identical(other.params, params) || other.params == params));
  }

  @override
  int get hashCode => Object.hash(runtimeType, params);

  /// Create a copy of CoachQuestionEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetQuestionsImplCopyWith<_$GetQuestionsImpl> get copyWith =>
      __$$GetQuestionsImplCopyWithImpl<_$GetQuestionsImpl>(this, _$identity);

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
    required TResult Function(_GetQuestions value) getQuestions,
    required TResult Function(_FilterQuestions value) filterQuestions,
    required TResult Function(_Clear value) clear,
    required TResult Function(_CreateBatch value) createBatch,
    required TResult Function(_UpdateBatch value) updateBatch,
    required TResult Function(_Delete value) delete,
  }) {
    return getQuestions(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetQuestions value)? getQuestions,
    TResult? Function(_FilterQuestions value)? filterQuestions,
    TResult? Function(_Clear value)? clear,
    TResult? Function(_CreateBatch value)? createBatch,
    TResult? Function(_UpdateBatch value)? updateBatch,
    TResult? Function(_Delete value)? delete,
  }) {
    return getQuestions?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetQuestions value)? getQuestions,
    TResult Function(_FilterQuestions value)? filterQuestions,
    TResult Function(_Clear value)? clear,
    TResult Function(_CreateBatch value)? createBatch,
    TResult Function(_UpdateBatch value)? updateBatch,
    TResult Function(_Delete value)? delete,
    required TResult orElse(),
  }) {
    if (getQuestions != null) {
      return getQuestions(this);
    }
    return orElse();
  }
}

abstract class _GetQuestions implements CoachQuestionEvent {
  const factory _GetQuestions(final GetAllQuestionParams params) =
      _$GetQuestionsImpl;

  GetAllQuestionParams get params;

  /// Create a copy of CoachQuestionEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetQuestionsImplCopyWith<_$GetQuestionsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FilterQuestionsImplCopyWith<$Res> {
  factory _$$FilterQuestionsImplCopyWith(_$FilterQuestionsImpl value,
          $Res Function(_$FilterQuestionsImpl) then) =
      __$$FilterQuestionsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String query});
}

/// @nodoc
class __$$FilterQuestionsImplCopyWithImpl<$Res>
    extends _$CoachQuestionEventCopyWithImpl<$Res, _$FilterQuestionsImpl>
    implements _$$FilterQuestionsImplCopyWith<$Res> {
  __$$FilterQuestionsImplCopyWithImpl(
      _$FilterQuestionsImpl _value, $Res Function(_$FilterQuestionsImpl) _then)
      : super(_value, _then);

  /// Create a copy of CoachQuestionEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
  }) {
    return _then(_$FilterQuestionsImpl(
      null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FilterQuestionsImpl implements _FilterQuestions {
  const _$FilterQuestionsImpl(this.query);

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
            other is _$FilterQuestionsImpl &&
            (identical(other.query, query) || other.query == query));
  }

  @override
  int get hashCode => Object.hash(runtimeType, query);

  /// Create a copy of CoachQuestionEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FilterQuestionsImplCopyWith<_$FilterQuestionsImpl> get copyWith =>
      __$$FilterQuestionsImplCopyWithImpl<_$FilterQuestionsImpl>(
          this, _$identity);

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
    required TResult Function(_GetQuestions value) getQuestions,
    required TResult Function(_FilterQuestions value) filterQuestions,
    required TResult Function(_Clear value) clear,
    required TResult Function(_CreateBatch value) createBatch,
    required TResult Function(_UpdateBatch value) updateBatch,
    required TResult Function(_Delete value) delete,
  }) {
    return filterQuestions(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetQuestions value)? getQuestions,
    TResult? Function(_FilterQuestions value)? filterQuestions,
    TResult? Function(_Clear value)? clear,
    TResult? Function(_CreateBatch value)? createBatch,
    TResult? Function(_UpdateBatch value)? updateBatch,
    TResult? Function(_Delete value)? delete,
  }) {
    return filterQuestions?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetQuestions value)? getQuestions,
    TResult Function(_FilterQuestions value)? filterQuestions,
    TResult Function(_Clear value)? clear,
    TResult Function(_CreateBatch value)? createBatch,
    TResult Function(_UpdateBatch value)? updateBatch,
    TResult Function(_Delete value)? delete,
    required TResult orElse(),
  }) {
    if (filterQuestions != null) {
      return filterQuestions(this);
    }
    return orElse();
  }
}

abstract class _FilterQuestions implements CoachQuestionEvent {
  const factory _FilterQuestions(final String query) = _$FilterQuestionsImpl;

  String get query;

  /// Create a copy of CoachQuestionEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FilterQuestionsImplCopyWith<_$FilterQuestionsImpl> get copyWith =>
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
    extends _$CoachQuestionEventCopyWithImpl<$Res, _$ClearImpl>
    implements _$$ClearImplCopyWith<$Res> {
  __$$ClearImplCopyWithImpl(
      _$ClearImpl _value, $Res Function(_$ClearImpl) _then)
      : super(_value, _then);

  /// Create a copy of CoachQuestionEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ClearImpl implements _Clear {
  const _$ClearImpl();

  @override
  String toString() {
    return 'CoachQuestionEvent.clear()';
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
    required TResult Function(_GetQuestions value) getQuestions,
    required TResult Function(_FilterQuestions value) filterQuestions,
    required TResult Function(_Clear value) clear,
    required TResult Function(_CreateBatch value) createBatch,
    required TResult Function(_UpdateBatch value) updateBatch,
    required TResult Function(_Delete value) delete,
  }) {
    return clear(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetQuestions value)? getQuestions,
    TResult? Function(_FilterQuestions value)? filterQuestions,
    TResult? Function(_Clear value)? clear,
    TResult? Function(_CreateBatch value)? createBatch,
    TResult? Function(_UpdateBatch value)? updateBatch,
    TResult? Function(_Delete value)? delete,
  }) {
    return clear?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetQuestions value)? getQuestions,
    TResult Function(_FilterQuestions value)? filterQuestions,
    TResult Function(_Clear value)? clear,
    TResult Function(_CreateBatch value)? createBatch,
    TResult Function(_UpdateBatch value)? updateBatch,
    TResult Function(_Delete value)? delete,
    required TResult orElse(),
  }) {
    if (clear != null) {
      return clear(this);
    }
    return orElse();
  }
}

abstract class _Clear implements CoachQuestionEvent {
  const factory _Clear() = _$ClearImpl;
}

/// @nodoc
abstract class _$$CreateBatchImplCopyWith<$Res> {
  factory _$$CreateBatchImplCopyWith(
          _$CreateBatchImpl value, $Res Function(_$CreateBatchImpl) then) =
      __$$CreateBatchImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<CreateQuestionParams> params});
}

/// @nodoc
class __$$CreateBatchImplCopyWithImpl<$Res>
    extends _$CoachQuestionEventCopyWithImpl<$Res, _$CreateBatchImpl>
    implements _$$CreateBatchImplCopyWith<$Res> {
  __$$CreateBatchImplCopyWithImpl(
      _$CreateBatchImpl _value, $Res Function(_$CreateBatchImpl) _then)
      : super(_value, _then);

  /// Create a copy of CoachQuestionEvent
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
              as List<CreateQuestionParams>,
    ));
  }
}

/// @nodoc

class _$CreateBatchImpl implements _CreateBatch {
  const _$CreateBatchImpl(final List<CreateQuestionParams> params)
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
            other is _$CreateBatchImpl &&
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
  _$$CreateBatchImplCopyWith<_$CreateBatchImpl> get copyWith =>
      __$$CreateBatchImplCopyWithImpl<_$CreateBatchImpl>(this, _$identity);

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
    required TResult Function(_GetQuestions value) getQuestions,
    required TResult Function(_FilterQuestions value) filterQuestions,
    required TResult Function(_Clear value) clear,
    required TResult Function(_CreateBatch value) createBatch,
    required TResult Function(_UpdateBatch value) updateBatch,
    required TResult Function(_Delete value) delete,
  }) {
    return createBatch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetQuestions value)? getQuestions,
    TResult? Function(_FilterQuestions value)? filterQuestions,
    TResult? Function(_Clear value)? clear,
    TResult? Function(_CreateBatch value)? createBatch,
    TResult? Function(_UpdateBatch value)? updateBatch,
    TResult? Function(_Delete value)? delete,
  }) {
    return createBatch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetQuestions value)? getQuestions,
    TResult Function(_FilterQuestions value)? filterQuestions,
    TResult Function(_Clear value)? clear,
    TResult Function(_CreateBatch value)? createBatch,
    TResult Function(_UpdateBatch value)? updateBatch,
    TResult Function(_Delete value)? delete,
    required TResult orElse(),
  }) {
    if (createBatch != null) {
      return createBatch(this);
    }
    return orElse();
  }
}

abstract class _CreateBatch implements CoachQuestionEvent {
  const factory _CreateBatch(final List<CreateQuestionParams> params) =
      _$CreateBatchImpl;

  List<CreateQuestionParams> get params;

  /// Create a copy of CoachQuestionEvent
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
  $Res call({List<UpdateQuestionParams> params});
}

/// @nodoc
class __$$UpdateBatchImplCopyWithImpl<$Res>
    extends _$CoachQuestionEventCopyWithImpl<$Res, _$UpdateBatchImpl>
    implements _$$UpdateBatchImplCopyWith<$Res> {
  __$$UpdateBatchImplCopyWithImpl(
      _$UpdateBatchImpl _value, $Res Function(_$UpdateBatchImpl) _then)
      : super(_value, _then);

  /// Create a copy of CoachQuestionEvent
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
              as List<UpdateQuestionParams>,
    ));
  }
}

/// @nodoc

class _$UpdateBatchImpl implements _UpdateBatch {
  const _$UpdateBatchImpl(final List<UpdateQuestionParams> params)
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
            other is _$UpdateBatchImpl &&
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
  _$$UpdateBatchImplCopyWith<_$UpdateBatchImpl> get copyWith =>
      __$$UpdateBatchImplCopyWithImpl<_$UpdateBatchImpl>(this, _$identity);

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
    required TResult Function(_GetQuestions value) getQuestions,
    required TResult Function(_FilterQuestions value) filterQuestions,
    required TResult Function(_Clear value) clear,
    required TResult Function(_CreateBatch value) createBatch,
    required TResult Function(_UpdateBatch value) updateBatch,
    required TResult Function(_Delete value) delete,
  }) {
    return updateBatch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetQuestions value)? getQuestions,
    TResult? Function(_FilterQuestions value)? filterQuestions,
    TResult? Function(_Clear value)? clear,
    TResult? Function(_CreateBatch value)? createBatch,
    TResult? Function(_UpdateBatch value)? updateBatch,
    TResult? Function(_Delete value)? delete,
  }) {
    return updateBatch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetQuestions value)? getQuestions,
    TResult Function(_FilterQuestions value)? filterQuestions,
    TResult Function(_Clear value)? clear,
    TResult Function(_CreateBatch value)? createBatch,
    TResult Function(_UpdateBatch value)? updateBatch,
    TResult Function(_Delete value)? delete,
    required TResult orElse(),
  }) {
    if (updateBatch != null) {
      return updateBatch(this);
    }
    return orElse();
  }
}

abstract class _UpdateBatch implements CoachQuestionEvent {
  const factory _UpdateBatch(final List<UpdateQuestionParams> params) =
      _$UpdateBatchImpl;

  List<UpdateQuestionParams> get params;

  /// Create a copy of CoachQuestionEvent
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
  $Res call({DeleteQuestionParams params});

  $DeleteQuestionParamsCopyWith<$Res> get params;
}

/// @nodoc
class __$$DeleteImplCopyWithImpl<$Res>
    extends _$CoachQuestionEventCopyWithImpl<$Res, _$DeleteImpl>
    implements _$$DeleteImplCopyWith<$Res> {
  __$$DeleteImplCopyWithImpl(
      _$DeleteImpl _value, $Res Function(_$DeleteImpl) _then)
      : super(_value, _then);

  /// Create a copy of CoachQuestionEvent
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

class _$DeleteImpl implements _Delete {
  const _$DeleteImpl(this.params);

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
            other is _$DeleteImpl &&
            (identical(other.params, params) || other.params == params));
  }

  @override
  int get hashCode => Object.hash(runtimeType, params);

  /// Create a copy of CoachQuestionEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteImplCopyWith<_$DeleteImpl> get copyWith =>
      __$$DeleteImplCopyWithImpl<_$DeleteImpl>(this, _$identity);

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
    required TResult Function(_GetQuestions value) getQuestions,
    required TResult Function(_FilterQuestions value) filterQuestions,
    required TResult Function(_Clear value) clear,
    required TResult Function(_CreateBatch value) createBatch,
    required TResult Function(_UpdateBatch value) updateBatch,
    required TResult Function(_Delete value) delete,
  }) {
    return delete(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetQuestions value)? getQuestions,
    TResult? Function(_FilterQuestions value)? filterQuestions,
    TResult? Function(_Clear value)? clear,
    TResult? Function(_CreateBatch value)? createBatch,
    TResult? Function(_UpdateBatch value)? updateBatch,
    TResult? Function(_Delete value)? delete,
  }) {
    return delete?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetQuestions value)? getQuestions,
    TResult Function(_FilterQuestions value)? filterQuestions,
    TResult Function(_Clear value)? clear,
    TResult Function(_CreateBatch value)? createBatch,
    TResult Function(_UpdateBatch value)? updateBatch,
    TResult Function(_Delete value)? delete,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete(this);
    }
    return orElse();
  }
}

abstract class _Delete implements CoachQuestionEvent {
  const factory _Delete(final DeleteQuestionParams params) = _$DeleteImpl;

  DeleteQuestionParams get params;

  /// Create a copy of CoachQuestionEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeleteImplCopyWith<_$DeleteImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CoachQuestionState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(CoachQuestionLoadedEvent data) loaded,
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
    TResult? Function(CoachQuestionLoadedEvent data)? loaded,
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
    TResult Function(CoachQuestionLoadedEvent data)? loaded,
    TResult Function(String message)? failure,
    TResult Function(List<QuestionModel> question)? createdBatch,
    TResult Function(List<QuestionModel> question)? updatedBatch,
    TResult Function(QuestionModel question)? deleted,
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
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$CoachQuestionStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of CoachQuestionState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'CoachQuestionState.initial()';
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
    required TResult Function(CoachQuestionLoadedEvent data) loaded,
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
    TResult? Function(CoachQuestionLoadedEvent data)? loaded,
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
    TResult Function(CoachQuestionLoadedEvent data)? loaded,
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

abstract class _Initial implements CoachQuestionState {
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
    extends _$CoachQuestionStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of CoachQuestionState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'CoachQuestionState.loading()';
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
    required TResult Function(CoachQuestionLoadedEvent data) loaded,
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
    TResult? Function(CoachQuestionLoadedEvent data)? loaded,
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
    TResult Function(CoachQuestionLoadedEvent data)? loaded,
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

abstract class _Loading implements CoachQuestionState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$LoadedImplCopyWith<$Res> {
  factory _$$LoadedImplCopyWith(
          _$LoadedImpl value, $Res Function(_$LoadedImpl) then) =
      __$$LoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({CoachQuestionLoadedEvent data});

  $CoachQuestionLoadedEventCopyWith<$Res> get data;
}

/// @nodoc
class __$$LoadedImplCopyWithImpl<$Res>
    extends _$CoachQuestionStateCopyWithImpl<$Res, _$LoadedImpl>
    implements _$$LoadedImplCopyWith<$Res> {
  __$$LoadedImplCopyWithImpl(
      _$LoadedImpl _value, $Res Function(_$LoadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of CoachQuestionState
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
              as CoachQuestionLoadedEvent,
    ));
  }

  /// Create a copy of CoachQuestionState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CoachQuestionLoadedEventCopyWith<$Res> get data {
    return $CoachQuestionLoadedEventCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc

class _$LoadedImpl implements _Loaded {
  const _$LoadedImpl(this.data);

  @override
  final CoachQuestionLoadedEvent data;

  @override
  String toString() {
    return 'CoachQuestionState.loaded(data: $data)';
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

  /// Create a copy of CoachQuestionState
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
    required TResult Function(CoachQuestionLoadedEvent data) loaded,
    required TResult Function(String message) failure,
    required TResult Function(List<QuestionModel> question) createdBatch,
    required TResult Function(List<QuestionModel> question) updatedBatch,
    required TResult Function(QuestionModel question) deleted,
  }) {
    return loaded(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(CoachQuestionLoadedEvent data)? loaded,
    TResult? Function(String message)? failure,
    TResult? Function(List<QuestionModel> question)? createdBatch,
    TResult? Function(List<QuestionModel> question)? updatedBatch,
    TResult? Function(QuestionModel question)? deleted,
  }) {
    return loaded?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(CoachQuestionLoadedEvent data)? loaded,
    TResult Function(String message)? failure,
    TResult Function(List<QuestionModel> question)? createdBatch,
    TResult Function(List<QuestionModel> question)? updatedBatch,
    TResult Function(QuestionModel question)? deleted,
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

abstract class _Loaded implements CoachQuestionState {
  const factory _Loaded(final CoachQuestionLoadedEvent data) = _$LoadedImpl;

  CoachQuestionLoadedEvent get data;

  /// Create a copy of CoachQuestionState
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
    extends _$CoachQuestionStateCopyWithImpl<$Res, _$FailureImpl>
    implements _$$FailureImplCopyWith<$Res> {
  __$$FailureImplCopyWithImpl(
      _$FailureImpl _value, $Res Function(_$FailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of CoachQuestionState
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
    return 'CoachQuestionState.failure(message: $message)';
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

  /// Create a copy of CoachQuestionState
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
    required TResult Function(CoachQuestionLoadedEvent data) loaded,
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
    TResult? Function(CoachQuestionLoadedEvent data)? loaded,
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
    TResult Function(CoachQuestionLoadedEvent data)? loaded,
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

abstract class _Failure implements CoachQuestionState {
  const factory _Failure(final String message) = _$FailureImpl;

  String get message;

  /// Create a copy of CoachQuestionState
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
  $Res call({List<QuestionModel> question});
}

/// @nodoc
class __$$CreatedBatchImplCopyWithImpl<$Res>
    extends _$CoachQuestionStateCopyWithImpl<$Res, _$CreatedBatchImpl>
    implements _$$CreatedBatchImplCopyWith<$Res> {
  __$$CreatedBatchImplCopyWithImpl(
      _$CreatedBatchImpl _value, $Res Function(_$CreatedBatchImpl) _then)
      : super(_value, _then);

  /// Create a copy of CoachQuestionState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? question = null,
  }) {
    return _then(_$CreatedBatchImpl(
      null == question
          ? _value._question
          : question // ignore: cast_nullable_to_non_nullable
              as List<QuestionModel>,
    ));
  }
}

/// @nodoc

class _$CreatedBatchImpl implements _CreatedBatch {
  const _$CreatedBatchImpl(final List<QuestionModel> question)
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
            other is _$CreatedBatchImpl &&
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
  _$$CreatedBatchImplCopyWith<_$CreatedBatchImpl> get copyWith =>
      __$$CreatedBatchImplCopyWithImpl<_$CreatedBatchImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(CoachQuestionLoadedEvent data) loaded,
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
    TResult? Function(CoachQuestionLoadedEvent data)? loaded,
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
    TResult Function(CoachQuestionLoadedEvent data)? loaded,
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

abstract class _CreatedBatch implements CoachQuestionState {
  const factory _CreatedBatch(final List<QuestionModel> question) =
      _$CreatedBatchImpl;

  List<QuestionModel> get question;

  /// Create a copy of CoachQuestionState
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
  $Res call({List<QuestionModel> question});
}

/// @nodoc
class __$$UpdatedBatchImplCopyWithImpl<$Res>
    extends _$CoachQuestionStateCopyWithImpl<$Res, _$UpdatedBatchImpl>
    implements _$$UpdatedBatchImplCopyWith<$Res> {
  __$$UpdatedBatchImplCopyWithImpl(
      _$UpdatedBatchImpl _value, $Res Function(_$UpdatedBatchImpl) _then)
      : super(_value, _then);

  /// Create a copy of CoachQuestionState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? question = null,
  }) {
    return _then(_$UpdatedBatchImpl(
      null == question
          ? _value._question
          : question // ignore: cast_nullable_to_non_nullable
              as List<QuestionModel>,
    ));
  }
}

/// @nodoc

class _$UpdatedBatchImpl implements _UpdatedBatch {
  const _$UpdatedBatchImpl(final List<QuestionModel> question)
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
            other is _$UpdatedBatchImpl &&
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
  _$$UpdatedBatchImplCopyWith<_$UpdatedBatchImpl> get copyWith =>
      __$$UpdatedBatchImplCopyWithImpl<_$UpdatedBatchImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(CoachQuestionLoadedEvent data) loaded,
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
    TResult? Function(CoachQuestionLoadedEvent data)? loaded,
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
    TResult Function(CoachQuestionLoadedEvent data)? loaded,
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

abstract class _UpdatedBatch implements CoachQuestionState {
  const factory _UpdatedBatch(final List<QuestionModel> question) =
      _$UpdatedBatchImpl;

  List<QuestionModel> get question;

  /// Create a copy of CoachQuestionState
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
  $Res call({QuestionModel question});

  $QuestionModelCopyWith<$Res> get question;
}

/// @nodoc
class __$$DeletedImplCopyWithImpl<$Res>
    extends _$CoachQuestionStateCopyWithImpl<$Res, _$DeletedImpl>
    implements _$$DeletedImplCopyWith<$Res> {
  __$$DeletedImplCopyWithImpl(
      _$DeletedImpl _value, $Res Function(_$DeletedImpl) _then)
      : super(_value, _then);

  /// Create a copy of CoachQuestionState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? question = null,
  }) {
    return _then(_$DeletedImpl(
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

class _$DeletedImpl implements _Deleted {
  const _$DeletedImpl(this.question);

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
            other is _$DeletedImpl &&
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
  _$$DeletedImplCopyWith<_$DeletedImpl> get copyWith =>
      __$$DeletedImplCopyWithImpl<_$DeletedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(CoachQuestionLoadedEvent data) loaded,
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
    TResult? Function(CoachQuestionLoadedEvent data)? loaded,
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
    TResult Function(CoachQuestionLoadedEvent data)? loaded,
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

abstract class _Deleted implements CoachQuestionState {
  const factory _Deleted(final QuestionModel question) = _$DeletedImpl;

  QuestionModel get question;

  /// Create a copy of CoachQuestionState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeletedImplCopyWith<_$DeletedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CoachQuestionLoadedEvent {
  List<QuestionModel> get questions => throw _privateConstructorUsedError;
  List<QuestionModel> get filteredQuestions =>
      throw _privateConstructorUsedError;

  /// Create a copy of CoachQuestionLoadedEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CoachQuestionLoadedEventCopyWith<CoachQuestionLoadedEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CoachQuestionLoadedEventCopyWith<$Res> {
  factory $CoachQuestionLoadedEventCopyWith(CoachQuestionLoadedEvent value,
          $Res Function(CoachQuestionLoadedEvent) then) =
      _$CoachQuestionLoadedEventCopyWithImpl<$Res, CoachQuestionLoadedEvent>;
  @useResult
  $Res call(
      {List<QuestionModel> questions, List<QuestionModel> filteredQuestions});
}

/// @nodoc
class _$CoachQuestionLoadedEventCopyWithImpl<$Res,
        $Val extends CoachQuestionLoadedEvent>
    implements $CoachQuestionLoadedEventCopyWith<$Res> {
  _$CoachQuestionLoadedEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CoachQuestionLoadedEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? questions = null,
    Object? filteredQuestions = null,
  }) {
    return _then(_value.copyWith(
      questions: null == questions
          ? _value.questions
          : questions // ignore: cast_nullable_to_non_nullable
              as List<QuestionModel>,
      filteredQuestions: null == filteredQuestions
          ? _value.filteredQuestions
          : filteredQuestions // ignore: cast_nullable_to_non_nullable
              as List<QuestionModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CoachQuestionLoadedEventImplCopyWith<$Res>
    implements $CoachQuestionLoadedEventCopyWith<$Res> {
  factory _$$CoachQuestionLoadedEventImplCopyWith(
          _$CoachQuestionLoadedEventImpl value,
          $Res Function(_$CoachQuestionLoadedEventImpl) then) =
      __$$CoachQuestionLoadedEventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<QuestionModel> questions, List<QuestionModel> filteredQuestions});
}

/// @nodoc
class __$$CoachQuestionLoadedEventImplCopyWithImpl<$Res>
    extends _$CoachQuestionLoadedEventCopyWithImpl<$Res,
        _$CoachQuestionLoadedEventImpl>
    implements _$$CoachQuestionLoadedEventImplCopyWith<$Res> {
  __$$CoachQuestionLoadedEventImplCopyWithImpl(
      _$CoachQuestionLoadedEventImpl _value,
      $Res Function(_$CoachQuestionLoadedEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of CoachQuestionLoadedEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? questions = null,
    Object? filteredQuestions = null,
  }) {
    return _then(_$CoachQuestionLoadedEventImpl(
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

class _$CoachQuestionLoadedEventImpl implements _CoachQuestionLoadedEvent {
  const _$CoachQuestionLoadedEventImpl(
      {final List<QuestionModel> questions = const [],
      final List<QuestionModel> filteredQuestions = const []})
      : _questions = questions,
        _filteredQuestions = filteredQuestions;

  final List<QuestionModel> _questions;
  @override
  @JsonKey()
  List<QuestionModel> get questions {
    if (_questions is EqualUnmodifiableListView) return _questions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_questions);
  }

  final List<QuestionModel> _filteredQuestions;
  @override
  @JsonKey()
  List<QuestionModel> get filteredQuestions {
    if (_filteredQuestions is EqualUnmodifiableListView)
      return _filteredQuestions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_filteredQuestions);
  }

  @override
  String toString() {
    return 'CoachQuestionLoadedEvent(questions: $questions, filteredQuestions: $filteredQuestions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CoachQuestionLoadedEventImpl &&
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

  /// Create a copy of CoachQuestionLoadedEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CoachQuestionLoadedEventImplCopyWith<_$CoachQuestionLoadedEventImpl>
      get copyWith => __$$CoachQuestionLoadedEventImplCopyWithImpl<
          _$CoachQuestionLoadedEventImpl>(this, _$identity);
}

abstract class _CoachQuestionLoadedEvent implements CoachQuestionLoadedEvent {
  const factory _CoachQuestionLoadedEvent(
          {final List<QuestionModel> questions,
          final List<QuestionModel> filteredQuestions}) =
      _$CoachQuestionLoadedEventImpl;

  @override
  List<QuestionModel> get questions;
  @override
  List<QuestionModel> get filteredQuestions;

  /// Create a copy of CoachQuestionLoadedEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CoachQuestionLoadedEventImplCopyWith<_$CoachQuestionLoadedEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}
