// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'coach_program_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CoachProgramEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(GetAllProgramParams params) getPrograms,
    required TResult Function(String query) filterPrograms,
    required TResult Function() clear,
    required TResult Function(CreateProgramParams params) create,
    required TResult Function(UpdateProgramParams params) update,
    required TResult Function(DeleteProgramParams params) delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(GetAllProgramParams params)? getPrograms,
    TResult? Function(String query)? filterPrograms,
    TResult? Function()? clear,
    TResult? Function(CreateProgramParams params)? create,
    TResult? Function(UpdateProgramParams params)? update,
    TResult? Function(DeleteProgramParams params)? delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GetAllProgramParams params)? getPrograms,
    TResult Function(String query)? filterPrograms,
    TResult Function()? clear,
    TResult Function(CreateProgramParams params)? create,
    TResult Function(UpdateProgramParams params)? update,
    TResult Function(DeleteProgramParams params)? delete,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetPrograms value) getPrograms,
    required TResult Function(_FilterPrograms value) filterPrograms,
    required TResult Function(_Clear value) clear,
    required TResult Function(_Create value) create,
    required TResult Function(_Update value) update,
    required TResult Function(_Delete value) delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetPrograms value)? getPrograms,
    TResult? Function(_FilterPrograms value)? filterPrograms,
    TResult? Function(_Clear value)? clear,
    TResult? Function(_Create value)? create,
    TResult? Function(_Update value)? update,
    TResult? Function(_Delete value)? delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetPrograms value)? getPrograms,
    TResult Function(_FilterPrograms value)? filterPrograms,
    TResult Function(_Clear value)? clear,
    TResult Function(_Create value)? create,
    TResult Function(_Update value)? update,
    TResult Function(_Delete value)? delete,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CoachProgramEventCopyWith<$Res> {
  factory $CoachProgramEventCopyWith(
          CoachProgramEvent value, $Res Function(CoachProgramEvent) then) =
      _$CoachProgramEventCopyWithImpl<$Res, CoachProgramEvent>;
}

/// @nodoc
class _$CoachProgramEventCopyWithImpl<$Res, $Val extends CoachProgramEvent>
    implements $CoachProgramEventCopyWith<$Res> {
  _$CoachProgramEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CoachProgramEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$GetProgramsImplCopyWith<$Res> {
  factory _$$GetProgramsImplCopyWith(
          _$GetProgramsImpl value, $Res Function(_$GetProgramsImpl) then) =
      __$$GetProgramsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({GetAllProgramParams params});

  $GetAllProgramParamsCopyWith<$Res> get params;
}

/// @nodoc
class __$$GetProgramsImplCopyWithImpl<$Res>
    extends _$CoachProgramEventCopyWithImpl<$Res, _$GetProgramsImpl>
    implements _$$GetProgramsImplCopyWith<$Res> {
  __$$GetProgramsImplCopyWithImpl(
      _$GetProgramsImpl _value, $Res Function(_$GetProgramsImpl) _then)
      : super(_value, _then);

  /// Create a copy of CoachProgramEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? params = null,
  }) {
    return _then(_$GetProgramsImpl(
      null == params
          ? _value.params
          : params // ignore: cast_nullable_to_non_nullable
              as GetAllProgramParams,
    ));
  }

  /// Create a copy of CoachProgramEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GetAllProgramParamsCopyWith<$Res> get params {
    return $GetAllProgramParamsCopyWith<$Res>(_value.params, (value) {
      return _then(_value.copyWith(params: value));
    });
  }
}

/// @nodoc

class _$GetProgramsImpl implements _GetPrograms {
  const _$GetProgramsImpl(this.params);

  @override
  final GetAllProgramParams params;

  @override
  String toString() {
    return 'CoachProgramEvent.getPrograms(params: $params)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetProgramsImpl &&
            (identical(other.params, params) || other.params == params));
  }

  @override
  int get hashCode => Object.hash(runtimeType, params);

  /// Create a copy of CoachProgramEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetProgramsImplCopyWith<_$GetProgramsImpl> get copyWith =>
      __$$GetProgramsImplCopyWithImpl<_$GetProgramsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(GetAllProgramParams params) getPrograms,
    required TResult Function(String query) filterPrograms,
    required TResult Function() clear,
    required TResult Function(CreateProgramParams params) create,
    required TResult Function(UpdateProgramParams params) update,
    required TResult Function(DeleteProgramParams params) delete,
  }) {
    return getPrograms(params);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(GetAllProgramParams params)? getPrograms,
    TResult? Function(String query)? filterPrograms,
    TResult? Function()? clear,
    TResult? Function(CreateProgramParams params)? create,
    TResult? Function(UpdateProgramParams params)? update,
    TResult? Function(DeleteProgramParams params)? delete,
  }) {
    return getPrograms?.call(params);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GetAllProgramParams params)? getPrograms,
    TResult Function(String query)? filterPrograms,
    TResult Function()? clear,
    TResult Function(CreateProgramParams params)? create,
    TResult Function(UpdateProgramParams params)? update,
    TResult Function(DeleteProgramParams params)? delete,
    required TResult orElse(),
  }) {
    if (getPrograms != null) {
      return getPrograms(params);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetPrograms value) getPrograms,
    required TResult Function(_FilterPrograms value) filterPrograms,
    required TResult Function(_Clear value) clear,
    required TResult Function(_Create value) create,
    required TResult Function(_Update value) update,
    required TResult Function(_Delete value) delete,
  }) {
    return getPrograms(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetPrograms value)? getPrograms,
    TResult? Function(_FilterPrograms value)? filterPrograms,
    TResult? Function(_Clear value)? clear,
    TResult? Function(_Create value)? create,
    TResult? Function(_Update value)? update,
    TResult? Function(_Delete value)? delete,
  }) {
    return getPrograms?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetPrograms value)? getPrograms,
    TResult Function(_FilterPrograms value)? filterPrograms,
    TResult Function(_Clear value)? clear,
    TResult Function(_Create value)? create,
    TResult Function(_Update value)? update,
    TResult Function(_Delete value)? delete,
    required TResult orElse(),
  }) {
    if (getPrograms != null) {
      return getPrograms(this);
    }
    return orElse();
  }
}

abstract class _GetPrograms implements CoachProgramEvent {
  const factory _GetPrograms(final GetAllProgramParams params) =
      _$GetProgramsImpl;

  GetAllProgramParams get params;

  /// Create a copy of CoachProgramEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetProgramsImplCopyWith<_$GetProgramsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FilterProgramsImplCopyWith<$Res> {
  factory _$$FilterProgramsImplCopyWith(_$FilterProgramsImpl value,
          $Res Function(_$FilterProgramsImpl) then) =
      __$$FilterProgramsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String query});
}

/// @nodoc
class __$$FilterProgramsImplCopyWithImpl<$Res>
    extends _$CoachProgramEventCopyWithImpl<$Res, _$FilterProgramsImpl>
    implements _$$FilterProgramsImplCopyWith<$Res> {
  __$$FilterProgramsImplCopyWithImpl(
      _$FilterProgramsImpl _value, $Res Function(_$FilterProgramsImpl) _then)
      : super(_value, _then);

  /// Create a copy of CoachProgramEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
  }) {
    return _then(_$FilterProgramsImpl(
      null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FilterProgramsImpl implements _FilterPrograms {
  const _$FilterProgramsImpl(this.query);

  @override
  final String query;

  @override
  String toString() {
    return 'CoachProgramEvent.filterPrograms(query: $query)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FilterProgramsImpl &&
            (identical(other.query, query) || other.query == query));
  }

  @override
  int get hashCode => Object.hash(runtimeType, query);

  /// Create a copy of CoachProgramEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FilterProgramsImplCopyWith<_$FilterProgramsImpl> get copyWith =>
      __$$FilterProgramsImplCopyWithImpl<_$FilterProgramsImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(GetAllProgramParams params) getPrograms,
    required TResult Function(String query) filterPrograms,
    required TResult Function() clear,
    required TResult Function(CreateProgramParams params) create,
    required TResult Function(UpdateProgramParams params) update,
    required TResult Function(DeleteProgramParams params) delete,
  }) {
    return filterPrograms(query);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(GetAllProgramParams params)? getPrograms,
    TResult? Function(String query)? filterPrograms,
    TResult? Function()? clear,
    TResult? Function(CreateProgramParams params)? create,
    TResult? Function(UpdateProgramParams params)? update,
    TResult? Function(DeleteProgramParams params)? delete,
  }) {
    return filterPrograms?.call(query);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GetAllProgramParams params)? getPrograms,
    TResult Function(String query)? filterPrograms,
    TResult Function()? clear,
    TResult Function(CreateProgramParams params)? create,
    TResult Function(UpdateProgramParams params)? update,
    TResult Function(DeleteProgramParams params)? delete,
    required TResult orElse(),
  }) {
    if (filterPrograms != null) {
      return filterPrograms(query);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetPrograms value) getPrograms,
    required TResult Function(_FilterPrograms value) filterPrograms,
    required TResult Function(_Clear value) clear,
    required TResult Function(_Create value) create,
    required TResult Function(_Update value) update,
    required TResult Function(_Delete value) delete,
  }) {
    return filterPrograms(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetPrograms value)? getPrograms,
    TResult? Function(_FilterPrograms value)? filterPrograms,
    TResult? Function(_Clear value)? clear,
    TResult? Function(_Create value)? create,
    TResult? Function(_Update value)? update,
    TResult? Function(_Delete value)? delete,
  }) {
    return filterPrograms?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetPrograms value)? getPrograms,
    TResult Function(_FilterPrograms value)? filterPrograms,
    TResult Function(_Clear value)? clear,
    TResult Function(_Create value)? create,
    TResult Function(_Update value)? update,
    TResult Function(_Delete value)? delete,
    required TResult orElse(),
  }) {
    if (filterPrograms != null) {
      return filterPrograms(this);
    }
    return orElse();
  }
}

abstract class _FilterPrograms implements CoachProgramEvent {
  const factory _FilterPrograms(final String query) = _$FilterProgramsImpl;

  String get query;

  /// Create a copy of CoachProgramEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FilterProgramsImplCopyWith<_$FilterProgramsImpl> get copyWith =>
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
    extends _$CoachProgramEventCopyWithImpl<$Res, _$ClearImpl>
    implements _$$ClearImplCopyWith<$Res> {
  __$$ClearImplCopyWithImpl(
      _$ClearImpl _value, $Res Function(_$ClearImpl) _then)
      : super(_value, _then);

  /// Create a copy of CoachProgramEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ClearImpl implements _Clear {
  const _$ClearImpl();

  @override
  String toString() {
    return 'CoachProgramEvent.clear()';
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
    required TResult Function(GetAllProgramParams params) getPrograms,
    required TResult Function(String query) filterPrograms,
    required TResult Function() clear,
    required TResult Function(CreateProgramParams params) create,
    required TResult Function(UpdateProgramParams params) update,
    required TResult Function(DeleteProgramParams params) delete,
  }) {
    return clear();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(GetAllProgramParams params)? getPrograms,
    TResult? Function(String query)? filterPrograms,
    TResult? Function()? clear,
    TResult? Function(CreateProgramParams params)? create,
    TResult? Function(UpdateProgramParams params)? update,
    TResult? Function(DeleteProgramParams params)? delete,
  }) {
    return clear?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GetAllProgramParams params)? getPrograms,
    TResult Function(String query)? filterPrograms,
    TResult Function()? clear,
    TResult Function(CreateProgramParams params)? create,
    TResult Function(UpdateProgramParams params)? update,
    TResult Function(DeleteProgramParams params)? delete,
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
    required TResult Function(_GetPrograms value) getPrograms,
    required TResult Function(_FilterPrograms value) filterPrograms,
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
    TResult? Function(_GetPrograms value)? getPrograms,
    TResult? Function(_FilterPrograms value)? filterPrograms,
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
    TResult Function(_GetPrograms value)? getPrograms,
    TResult Function(_FilterPrograms value)? filterPrograms,
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

abstract class _Clear implements CoachProgramEvent {
  const factory _Clear() = _$ClearImpl;
}

/// @nodoc
abstract class _$$CreateImplCopyWith<$Res> {
  factory _$$CreateImplCopyWith(
          _$CreateImpl value, $Res Function(_$CreateImpl) then) =
      __$$CreateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({CreateProgramParams params});

  $CreateProgramParamsCopyWith<$Res> get params;
}

/// @nodoc
class __$$CreateImplCopyWithImpl<$Res>
    extends _$CoachProgramEventCopyWithImpl<$Res, _$CreateImpl>
    implements _$$CreateImplCopyWith<$Res> {
  __$$CreateImplCopyWithImpl(
      _$CreateImpl _value, $Res Function(_$CreateImpl) _then)
      : super(_value, _then);

  /// Create a copy of CoachProgramEvent
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
              as CreateProgramParams,
    ));
  }

  /// Create a copy of CoachProgramEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CreateProgramParamsCopyWith<$Res> get params {
    return $CreateProgramParamsCopyWith<$Res>(_value.params, (value) {
      return _then(_value.copyWith(params: value));
    });
  }
}

/// @nodoc

class _$CreateImpl implements _Create {
  const _$CreateImpl(this.params);

  @override
  final CreateProgramParams params;

  @override
  String toString() {
    return 'CoachProgramEvent.create(params: $params)';
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

  /// Create a copy of CoachProgramEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateImplCopyWith<_$CreateImpl> get copyWith =>
      __$$CreateImplCopyWithImpl<_$CreateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(GetAllProgramParams params) getPrograms,
    required TResult Function(String query) filterPrograms,
    required TResult Function() clear,
    required TResult Function(CreateProgramParams params) create,
    required TResult Function(UpdateProgramParams params) update,
    required TResult Function(DeleteProgramParams params) delete,
  }) {
    return create(params);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(GetAllProgramParams params)? getPrograms,
    TResult? Function(String query)? filterPrograms,
    TResult? Function()? clear,
    TResult? Function(CreateProgramParams params)? create,
    TResult? Function(UpdateProgramParams params)? update,
    TResult? Function(DeleteProgramParams params)? delete,
  }) {
    return create?.call(params);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GetAllProgramParams params)? getPrograms,
    TResult Function(String query)? filterPrograms,
    TResult Function()? clear,
    TResult Function(CreateProgramParams params)? create,
    TResult Function(UpdateProgramParams params)? update,
    TResult Function(DeleteProgramParams params)? delete,
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
    required TResult Function(_GetPrograms value) getPrograms,
    required TResult Function(_FilterPrograms value) filterPrograms,
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
    TResult? Function(_GetPrograms value)? getPrograms,
    TResult? Function(_FilterPrograms value)? filterPrograms,
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
    TResult Function(_GetPrograms value)? getPrograms,
    TResult Function(_FilterPrograms value)? filterPrograms,
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

abstract class _Create implements CoachProgramEvent {
  const factory _Create(final CreateProgramParams params) = _$CreateImpl;

  CreateProgramParams get params;

  /// Create a copy of CoachProgramEvent
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
  $Res call({UpdateProgramParams params});

  $UpdateProgramParamsCopyWith<$Res> get params;
}

/// @nodoc
class __$$UpdateImplCopyWithImpl<$Res>
    extends _$CoachProgramEventCopyWithImpl<$Res, _$UpdateImpl>
    implements _$$UpdateImplCopyWith<$Res> {
  __$$UpdateImplCopyWithImpl(
      _$UpdateImpl _value, $Res Function(_$UpdateImpl) _then)
      : super(_value, _then);

  /// Create a copy of CoachProgramEvent
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
              as UpdateProgramParams,
    ));
  }

  /// Create a copy of CoachProgramEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UpdateProgramParamsCopyWith<$Res> get params {
    return $UpdateProgramParamsCopyWith<$Res>(_value.params, (value) {
      return _then(_value.copyWith(params: value));
    });
  }
}

/// @nodoc

class _$UpdateImpl implements _Update {
  const _$UpdateImpl(this.params);

  @override
  final UpdateProgramParams params;

  @override
  String toString() {
    return 'CoachProgramEvent.update(params: $params)';
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

  /// Create a copy of CoachProgramEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateImplCopyWith<_$UpdateImpl> get copyWith =>
      __$$UpdateImplCopyWithImpl<_$UpdateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(GetAllProgramParams params) getPrograms,
    required TResult Function(String query) filterPrograms,
    required TResult Function() clear,
    required TResult Function(CreateProgramParams params) create,
    required TResult Function(UpdateProgramParams params) update,
    required TResult Function(DeleteProgramParams params) delete,
  }) {
    return update(params);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(GetAllProgramParams params)? getPrograms,
    TResult? Function(String query)? filterPrograms,
    TResult? Function()? clear,
    TResult? Function(CreateProgramParams params)? create,
    TResult? Function(UpdateProgramParams params)? update,
    TResult? Function(DeleteProgramParams params)? delete,
  }) {
    return update?.call(params);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GetAllProgramParams params)? getPrograms,
    TResult Function(String query)? filterPrograms,
    TResult Function()? clear,
    TResult Function(CreateProgramParams params)? create,
    TResult Function(UpdateProgramParams params)? update,
    TResult Function(DeleteProgramParams params)? delete,
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
    required TResult Function(_GetPrograms value) getPrograms,
    required TResult Function(_FilterPrograms value) filterPrograms,
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
    TResult? Function(_GetPrograms value)? getPrograms,
    TResult? Function(_FilterPrograms value)? filterPrograms,
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
    TResult Function(_GetPrograms value)? getPrograms,
    TResult Function(_FilterPrograms value)? filterPrograms,
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

abstract class _Update implements CoachProgramEvent {
  const factory _Update(final UpdateProgramParams params) = _$UpdateImpl;

  UpdateProgramParams get params;

  /// Create a copy of CoachProgramEvent
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
  $Res call({DeleteProgramParams params});

  $DeleteProgramParamsCopyWith<$Res> get params;
}

/// @nodoc
class __$$DeleteImplCopyWithImpl<$Res>
    extends _$CoachProgramEventCopyWithImpl<$Res, _$DeleteImpl>
    implements _$$DeleteImplCopyWith<$Res> {
  __$$DeleteImplCopyWithImpl(
      _$DeleteImpl _value, $Res Function(_$DeleteImpl) _then)
      : super(_value, _then);

  /// Create a copy of CoachProgramEvent
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
              as DeleteProgramParams,
    ));
  }

  /// Create a copy of CoachProgramEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DeleteProgramParamsCopyWith<$Res> get params {
    return $DeleteProgramParamsCopyWith<$Res>(_value.params, (value) {
      return _then(_value.copyWith(params: value));
    });
  }
}

/// @nodoc

class _$DeleteImpl implements _Delete {
  const _$DeleteImpl(this.params);

  @override
  final DeleteProgramParams params;

  @override
  String toString() {
    return 'CoachProgramEvent.delete(params: $params)';
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

  /// Create a copy of CoachProgramEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteImplCopyWith<_$DeleteImpl> get copyWith =>
      __$$DeleteImplCopyWithImpl<_$DeleteImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(GetAllProgramParams params) getPrograms,
    required TResult Function(String query) filterPrograms,
    required TResult Function() clear,
    required TResult Function(CreateProgramParams params) create,
    required TResult Function(UpdateProgramParams params) update,
    required TResult Function(DeleteProgramParams params) delete,
  }) {
    return delete(params);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(GetAllProgramParams params)? getPrograms,
    TResult? Function(String query)? filterPrograms,
    TResult? Function()? clear,
    TResult? Function(CreateProgramParams params)? create,
    TResult? Function(UpdateProgramParams params)? update,
    TResult? Function(DeleteProgramParams params)? delete,
  }) {
    return delete?.call(params);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GetAllProgramParams params)? getPrograms,
    TResult Function(String query)? filterPrograms,
    TResult Function()? clear,
    TResult Function(CreateProgramParams params)? create,
    TResult Function(UpdateProgramParams params)? update,
    TResult Function(DeleteProgramParams params)? delete,
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
    required TResult Function(_GetPrograms value) getPrograms,
    required TResult Function(_FilterPrograms value) filterPrograms,
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
    TResult? Function(_GetPrograms value)? getPrograms,
    TResult? Function(_FilterPrograms value)? filterPrograms,
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
    TResult Function(_GetPrograms value)? getPrograms,
    TResult Function(_FilterPrograms value)? filterPrograms,
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

abstract class _Delete implements CoachProgramEvent {
  const factory _Delete(final DeleteProgramParams params) = _$DeleteImpl;

  DeleteProgramParams get params;

  /// Create a copy of CoachProgramEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeleteImplCopyWith<_$DeleteImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CoachProgramState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(CoachProgramLoadedEvent data) loaded,
    required TResult Function(String message) failure,
    required TResult Function(ProgramModel program) created,
    required TResult Function(ProgramModel program) updated,
    required TResult Function(ProgramModel program) deleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(CoachProgramLoadedEvent data)? loaded,
    TResult? Function(String message)? failure,
    TResult? Function(ProgramModel program)? created,
    TResult? Function(ProgramModel program)? updated,
    TResult? Function(ProgramModel program)? deleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(CoachProgramLoadedEvent data)? loaded,
    TResult Function(String message)? failure,
    TResult Function(ProgramModel program)? created,
    TResult Function(ProgramModel program)? updated,
    TResult Function(ProgramModel program)? deleted,
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
abstract class $CoachProgramStateCopyWith<$Res> {
  factory $CoachProgramStateCopyWith(
          CoachProgramState value, $Res Function(CoachProgramState) then) =
      _$CoachProgramStateCopyWithImpl<$Res, CoachProgramState>;
}

/// @nodoc
class _$CoachProgramStateCopyWithImpl<$Res, $Val extends CoachProgramState>
    implements $CoachProgramStateCopyWith<$Res> {
  _$CoachProgramStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CoachProgramState
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
    extends _$CoachProgramStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of CoachProgramState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'CoachProgramState.initial()';
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
    required TResult Function(CoachProgramLoadedEvent data) loaded,
    required TResult Function(String message) failure,
    required TResult Function(ProgramModel program) created,
    required TResult Function(ProgramModel program) updated,
    required TResult Function(ProgramModel program) deleted,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(CoachProgramLoadedEvent data)? loaded,
    TResult? Function(String message)? failure,
    TResult? Function(ProgramModel program)? created,
    TResult? Function(ProgramModel program)? updated,
    TResult? Function(ProgramModel program)? deleted,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(CoachProgramLoadedEvent data)? loaded,
    TResult Function(String message)? failure,
    TResult Function(ProgramModel program)? created,
    TResult Function(ProgramModel program)? updated,
    TResult Function(ProgramModel program)? deleted,
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

abstract class _Initial implements CoachProgramState {
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
    extends _$CoachProgramStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of CoachProgramState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'CoachProgramState.loading()';
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
    required TResult Function(CoachProgramLoadedEvent data) loaded,
    required TResult Function(String message) failure,
    required TResult Function(ProgramModel program) created,
    required TResult Function(ProgramModel program) updated,
    required TResult Function(ProgramModel program) deleted,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(CoachProgramLoadedEvent data)? loaded,
    TResult? Function(String message)? failure,
    TResult? Function(ProgramModel program)? created,
    TResult? Function(ProgramModel program)? updated,
    TResult? Function(ProgramModel program)? deleted,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(CoachProgramLoadedEvent data)? loaded,
    TResult Function(String message)? failure,
    TResult Function(ProgramModel program)? created,
    TResult Function(ProgramModel program)? updated,
    TResult Function(ProgramModel program)? deleted,
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

abstract class _Loading implements CoachProgramState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$LoadedImplCopyWith<$Res> {
  factory _$$LoadedImplCopyWith(
          _$LoadedImpl value, $Res Function(_$LoadedImpl) then) =
      __$$LoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({CoachProgramLoadedEvent data});

  $CoachProgramLoadedEventCopyWith<$Res> get data;
}

/// @nodoc
class __$$LoadedImplCopyWithImpl<$Res>
    extends _$CoachProgramStateCopyWithImpl<$Res, _$LoadedImpl>
    implements _$$LoadedImplCopyWith<$Res> {
  __$$LoadedImplCopyWithImpl(
      _$LoadedImpl _value, $Res Function(_$LoadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of CoachProgramState
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
              as CoachProgramLoadedEvent,
    ));
  }

  /// Create a copy of CoachProgramState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CoachProgramLoadedEventCopyWith<$Res> get data {
    return $CoachProgramLoadedEventCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc

class _$LoadedImpl implements _Loaded {
  const _$LoadedImpl(this.data);

  @override
  final CoachProgramLoadedEvent data;

  @override
  String toString() {
    return 'CoachProgramState.loaded(data: $data)';
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

  /// Create a copy of CoachProgramState
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
    required TResult Function(CoachProgramLoadedEvent data) loaded,
    required TResult Function(String message) failure,
    required TResult Function(ProgramModel program) created,
    required TResult Function(ProgramModel program) updated,
    required TResult Function(ProgramModel program) deleted,
  }) {
    return loaded(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(CoachProgramLoadedEvent data)? loaded,
    TResult? Function(String message)? failure,
    TResult? Function(ProgramModel program)? created,
    TResult? Function(ProgramModel program)? updated,
    TResult? Function(ProgramModel program)? deleted,
  }) {
    return loaded?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(CoachProgramLoadedEvent data)? loaded,
    TResult Function(String message)? failure,
    TResult Function(ProgramModel program)? created,
    TResult Function(ProgramModel program)? updated,
    TResult Function(ProgramModel program)? deleted,
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

abstract class _Loaded implements CoachProgramState {
  const factory _Loaded(final CoachProgramLoadedEvent data) = _$LoadedImpl;

  CoachProgramLoadedEvent get data;

  /// Create a copy of CoachProgramState
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
    extends _$CoachProgramStateCopyWithImpl<$Res, _$FailureImpl>
    implements _$$FailureImplCopyWith<$Res> {
  __$$FailureImplCopyWithImpl(
      _$FailureImpl _value, $Res Function(_$FailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of CoachProgramState
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
    return 'CoachProgramState.failure(message: $message)';
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

  /// Create a copy of CoachProgramState
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
    required TResult Function(CoachProgramLoadedEvent data) loaded,
    required TResult Function(String message) failure,
    required TResult Function(ProgramModel program) created,
    required TResult Function(ProgramModel program) updated,
    required TResult Function(ProgramModel program) deleted,
  }) {
    return failure(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(CoachProgramLoadedEvent data)? loaded,
    TResult? Function(String message)? failure,
    TResult? Function(ProgramModel program)? created,
    TResult? Function(ProgramModel program)? updated,
    TResult? Function(ProgramModel program)? deleted,
  }) {
    return failure?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(CoachProgramLoadedEvent data)? loaded,
    TResult Function(String message)? failure,
    TResult Function(ProgramModel program)? created,
    TResult Function(ProgramModel program)? updated,
    TResult Function(ProgramModel program)? deleted,
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

abstract class _Failure implements CoachProgramState {
  const factory _Failure(final String message) = _$FailureImpl;

  String get message;

  /// Create a copy of CoachProgramState
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
  $Res call({ProgramModel program});

  $ProgramModelCopyWith<$Res> get program;
}

/// @nodoc
class __$$CreatedImplCopyWithImpl<$Res>
    extends _$CoachProgramStateCopyWithImpl<$Res, _$CreatedImpl>
    implements _$$CreatedImplCopyWith<$Res> {
  __$$CreatedImplCopyWithImpl(
      _$CreatedImpl _value, $Res Function(_$CreatedImpl) _then)
      : super(_value, _then);

  /// Create a copy of CoachProgramState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? program = null,
  }) {
    return _then(_$CreatedImpl(
      null == program
          ? _value.program
          : program // ignore: cast_nullable_to_non_nullable
              as ProgramModel,
    ));
  }

  /// Create a copy of CoachProgramState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProgramModelCopyWith<$Res> get program {
    return $ProgramModelCopyWith<$Res>(_value.program, (value) {
      return _then(_value.copyWith(program: value));
    });
  }
}

/// @nodoc

class _$CreatedImpl implements _Created {
  const _$CreatedImpl(this.program);

  @override
  final ProgramModel program;

  @override
  String toString() {
    return 'CoachProgramState.created(program: $program)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreatedImpl &&
            (identical(other.program, program) || other.program == program));
  }

  @override
  int get hashCode => Object.hash(runtimeType, program);

  /// Create a copy of CoachProgramState
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
    required TResult Function(CoachProgramLoadedEvent data) loaded,
    required TResult Function(String message) failure,
    required TResult Function(ProgramModel program) created,
    required TResult Function(ProgramModel program) updated,
    required TResult Function(ProgramModel program) deleted,
  }) {
    return created(program);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(CoachProgramLoadedEvent data)? loaded,
    TResult? Function(String message)? failure,
    TResult? Function(ProgramModel program)? created,
    TResult? Function(ProgramModel program)? updated,
    TResult? Function(ProgramModel program)? deleted,
  }) {
    return created?.call(program);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(CoachProgramLoadedEvent data)? loaded,
    TResult Function(String message)? failure,
    TResult Function(ProgramModel program)? created,
    TResult Function(ProgramModel program)? updated,
    TResult Function(ProgramModel program)? deleted,
    required TResult orElse(),
  }) {
    if (created != null) {
      return created(program);
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

abstract class _Created implements CoachProgramState {
  const factory _Created(final ProgramModel program) = _$CreatedImpl;

  ProgramModel get program;

  /// Create a copy of CoachProgramState
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
  $Res call({ProgramModel program});

  $ProgramModelCopyWith<$Res> get program;
}

/// @nodoc
class __$$UpdatedImplCopyWithImpl<$Res>
    extends _$CoachProgramStateCopyWithImpl<$Res, _$UpdatedImpl>
    implements _$$UpdatedImplCopyWith<$Res> {
  __$$UpdatedImplCopyWithImpl(
      _$UpdatedImpl _value, $Res Function(_$UpdatedImpl) _then)
      : super(_value, _then);

  /// Create a copy of CoachProgramState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? program = null,
  }) {
    return _then(_$UpdatedImpl(
      null == program
          ? _value.program
          : program // ignore: cast_nullable_to_non_nullable
              as ProgramModel,
    ));
  }

  /// Create a copy of CoachProgramState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProgramModelCopyWith<$Res> get program {
    return $ProgramModelCopyWith<$Res>(_value.program, (value) {
      return _then(_value.copyWith(program: value));
    });
  }
}

/// @nodoc

class _$UpdatedImpl implements _Updated {
  const _$UpdatedImpl(this.program);

  @override
  final ProgramModel program;

  @override
  String toString() {
    return 'CoachProgramState.updated(program: $program)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdatedImpl &&
            (identical(other.program, program) || other.program == program));
  }

  @override
  int get hashCode => Object.hash(runtimeType, program);

  /// Create a copy of CoachProgramState
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
    required TResult Function(CoachProgramLoadedEvent data) loaded,
    required TResult Function(String message) failure,
    required TResult Function(ProgramModel program) created,
    required TResult Function(ProgramModel program) updated,
    required TResult Function(ProgramModel program) deleted,
  }) {
    return updated(program);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(CoachProgramLoadedEvent data)? loaded,
    TResult? Function(String message)? failure,
    TResult? Function(ProgramModel program)? created,
    TResult? Function(ProgramModel program)? updated,
    TResult? Function(ProgramModel program)? deleted,
  }) {
    return updated?.call(program);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(CoachProgramLoadedEvent data)? loaded,
    TResult Function(String message)? failure,
    TResult Function(ProgramModel program)? created,
    TResult Function(ProgramModel program)? updated,
    TResult Function(ProgramModel program)? deleted,
    required TResult orElse(),
  }) {
    if (updated != null) {
      return updated(program);
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

abstract class _Updated implements CoachProgramState {
  const factory _Updated(final ProgramModel program) = _$UpdatedImpl;

  ProgramModel get program;

  /// Create a copy of CoachProgramState
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
  $Res call({ProgramModel program});

  $ProgramModelCopyWith<$Res> get program;
}

/// @nodoc
class __$$DeletedImplCopyWithImpl<$Res>
    extends _$CoachProgramStateCopyWithImpl<$Res, _$DeletedImpl>
    implements _$$DeletedImplCopyWith<$Res> {
  __$$DeletedImplCopyWithImpl(
      _$DeletedImpl _value, $Res Function(_$DeletedImpl) _then)
      : super(_value, _then);

  /// Create a copy of CoachProgramState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? program = null,
  }) {
    return _then(_$DeletedImpl(
      null == program
          ? _value.program
          : program // ignore: cast_nullable_to_non_nullable
              as ProgramModel,
    ));
  }

  /// Create a copy of CoachProgramState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProgramModelCopyWith<$Res> get program {
    return $ProgramModelCopyWith<$Res>(_value.program, (value) {
      return _then(_value.copyWith(program: value));
    });
  }
}

/// @nodoc

class _$DeletedImpl implements _Deleted {
  const _$DeletedImpl(this.program);

  @override
  final ProgramModel program;

  @override
  String toString() {
    return 'CoachProgramState.deleted(program: $program)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeletedImpl &&
            (identical(other.program, program) || other.program == program));
  }

  @override
  int get hashCode => Object.hash(runtimeType, program);

  /// Create a copy of CoachProgramState
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
    required TResult Function(CoachProgramLoadedEvent data) loaded,
    required TResult Function(String message) failure,
    required TResult Function(ProgramModel program) created,
    required TResult Function(ProgramModel program) updated,
    required TResult Function(ProgramModel program) deleted,
  }) {
    return deleted(program);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(CoachProgramLoadedEvent data)? loaded,
    TResult? Function(String message)? failure,
    TResult? Function(ProgramModel program)? created,
    TResult? Function(ProgramModel program)? updated,
    TResult? Function(ProgramModel program)? deleted,
  }) {
    return deleted?.call(program);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(CoachProgramLoadedEvent data)? loaded,
    TResult Function(String message)? failure,
    TResult Function(ProgramModel program)? created,
    TResult Function(ProgramModel program)? updated,
    TResult Function(ProgramModel program)? deleted,
    required TResult orElse(),
  }) {
    if (deleted != null) {
      return deleted(program);
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

abstract class _Deleted implements CoachProgramState {
  const factory _Deleted(final ProgramModel program) = _$DeletedImpl;

  ProgramModel get program;

  /// Create a copy of CoachProgramState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeletedImplCopyWith<_$DeletedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CoachProgramLoadedEvent {
  List<ProgramModel> get programs => throw _privateConstructorUsedError;
  List<ProgramModel> get filteredPrograms => throw _privateConstructorUsedError;

  /// Create a copy of CoachProgramLoadedEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CoachProgramLoadedEventCopyWith<CoachProgramLoadedEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CoachProgramLoadedEventCopyWith<$Res> {
  factory $CoachProgramLoadedEventCopyWith(CoachProgramLoadedEvent value,
          $Res Function(CoachProgramLoadedEvent) then) =
      _$CoachProgramLoadedEventCopyWithImpl<$Res, CoachProgramLoadedEvent>;
  @useResult
  $Res call({List<ProgramModel> programs, List<ProgramModel> filteredPrograms});
}

/// @nodoc
class _$CoachProgramLoadedEventCopyWithImpl<$Res,
        $Val extends CoachProgramLoadedEvent>
    implements $CoachProgramLoadedEventCopyWith<$Res> {
  _$CoachProgramLoadedEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CoachProgramLoadedEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? programs = null,
    Object? filteredPrograms = null,
  }) {
    return _then(_value.copyWith(
      programs: null == programs
          ? _value.programs
          : programs // ignore: cast_nullable_to_non_nullable
              as List<ProgramModel>,
      filteredPrograms: null == filteredPrograms
          ? _value.filteredPrograms
          : filteredPrograms // ignore: cast_nullable_to_non_nullable
              as List<ProgramModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CoachProgramLoadedEventImplCopyWith<$Res>
    implements $CoachProgramLoadedEventCopyWith<$Res> {
  factory _$$CoachProgramLoadedEventImplCopyWith(
          _$CoachProgramLoadedEventImpl value,
          $Res Function(_$CoachProgramLoadedEventImpl) then) =
      __$$CoachProgramLoadedEventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<ProgramModel> programs, List<ProgramModel> filteredPrograms});
}

/// @nodoc
class __$$CoachProgramLoadedEventImplCopyWithImpl<$Res>
    extends _$CoachProgramLoadedEventCopyWithImpl<$Res,
        _$CoachProgramLoadedEventImpl>
    implements _$$CoachProgramLoadedEventImplCopyWith<$Res> {
  __$$CoachProgramLoadedEventImplCopyWithImpl(
      _$CoachProgramLoadedEventImpl _value,
      $Res Function(_$CoachProgramLoadedEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of CoachProgramLoadedEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? programs = null,
    Object? filteredPrograms = null,
  }) {
    return _then(_$CoachProgramLoadedEventImpl(
      programs: null == programs
          ? _value._programs
          : programs // ignore: cast_nullable_to_non_nullable
              as List<ProgramModel>,
      filteredPrograms: null == filteredPrograms
          ? _value._filteredPrograms
          : filteredPrograms // ignore: cast_nullable_to_non_nullable
              as List<ProgramModel>,
    ));
  }
}

/// @nodoc

class _$CoachProgramLoadedEventImpl implements _CoachProgramLoadedEvent {
  const _$CoachProgramLoadedEventImpl(
      {final List<ProgramModel> programs = const [],
      final List<ProgramModel> filteredPrograms = const []})
      : _programs = programs,
        _filteredPrograms = filteredPrograms;

  final List<ProgramModel> _programs;
  @override
  @JsonKey()
  List<ProgramModel> get programs {
    if (_programs is EqualUnmodifiableListView) return _programs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_programs);
  }

  final List<ProgramModel> _filteredPrograms;
  @override
  @JsonKey()
  List<ProgramModel> get filteredPrograms {
    if (_filteredPrograms is EqualUnmodifiableListView)
      return _filteredPrograms;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_filteredPrograms);
  }

  @override
  String toString() {
    return 'CoachProgramLoadedEvent(programs: $programs, filteredPrograms: $filteredPrograms)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CoachProgramLoadedEventImpl &&
            const DeepCollectionEquality().equals(other._programs, _programs) &&
            const DeepCollectionEquality()
                .equals(other._filteredPrograms, _filteredPrograms));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_programs),
      const DeepCollectionEquality().hash(_filteredPrograms));

  /// Create a copy of CoachProgramLoadedEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CoachProgramLoadedEventImplCopyWith<_$CoachProgramLoadedEventImpl>
      get copyWith => __$$CoachProgramLoadedEventImplCopyWithImpl<
          _$CoachProgramLoadedEventImpl>(this, _$identity);
}

abstract class _CoachProgramLoadedEvent implements CoachProgramLoadedEvent {
  const factory _CoachProgramLoadedEvent(
          {final List<ProgramModel> programs,
          final List<ProgramModel> filteredPrograms}) =
      _$CoachProgramLoadedEventImpl;

  @override
  List<ProgramModel> get programs;
  @override
  List<ProgramModel> get filteredPrograms;

  /// Create a copy of CoachProgramLoadedEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CoachProgramLoadedEventImplCopyWith<_$CoachProgramLoadedEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}
