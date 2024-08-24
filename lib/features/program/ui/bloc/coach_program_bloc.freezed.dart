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
    required TResult Function(CoachProgramEventGetPrograms value) getPrograms,
    required TResult Function(CoachProgramEventFilterPrograms value)
        filterPrograms,
    required TResult Function(CoachProgramEventClear value) clear,
    required TResult Function(CoachProgramEventCreate value) create,
    required TResult Function(CoachProgramEventUpdate value) update,
    required TResult Function(CoachProgramEventDelete value) delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CoachProgramEventGetPrograms value)? getPrograms,
    TResult? Function(CoachProgramEventFilterPrograms value)? filterPrograms,
    TResult? Function(CoachProgramEventClear value)? clear,
    TResult? Function(CoachProgramEventCreate value)? create,
    TResult? Function(CoachProgramEventUpdate value)? update,
    TResult? Function(CoachProgramEventDelete value)? delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CoachProgramEventGetPrograms value)? getPrograms,
    TResult Function(CoachProgramEventFilterPrograms value)? filterPrograms,
    TResult Function(CoachProgramEventClear value)? clear,
    TResult Function(CoachProgramEventCreate value)? create,
    TResult Function(CoachProgramEventUpdate value)? update,
    TResult Function(CoachProgramEventDelete value)? delete,
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
abstract class _$$CoachProgramEventGetProgramsImplCopyWith<$Res> {
  factory _$$CoachProgramEventGetProgramsImplCopyWith(
          _$CoachProgramEventGetProgramsImpl value,
          $Res Function(_$CoachProgramEventGetProgramsImpl) then) =
      __$$CoachProgramEventGetProgramsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({GetAllProgramParams params});

  $GetAllProgramParamsCopyWith<$Res> get params;
}

/// @nodoc
class __$$CoachProgramEventGetProgramsImplCopyWithImpl<$Res>
    extends _$CoachProgramEventCopyWithImpl<$Res,
        _$CoachProgramEventGetProgramsImpl>
    implements _$$CoachProgramEventGetProgramsImplCopyWith<$Res> {
  __$$CoachProgramEventGetProgramsImplCopyWithImpl(
      _$CoachProgramEventGetProgramsImpl _value,
      $Res Function(_$CoachProgramEventGetProgramsImpl) _then)
      : super(_value, _then);

  /// Create a copy of CoachProgramEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? params = null,
  }) {
    return _then(_$CoachProgramEventGetProgramsImpl(
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

class _$CoachProgramEventGetProgramsImpl
    implements CoachProgramEventGetPrograms {
  const _$CoachProgramEventGetProgramsImpl(this.params);

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
            other is _$CoachProgramEventGetProgramsImpl &&
            (identical(other.params, params) || other.params == params));
  }

  @override
  int get hashCode => Object.hash(runtimeType, params);

  /// Create a copy of CoachProgramEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CoachProgramEventGetProgramsImplCopyWith<
          _$CoachProgramEventGetProgramsImpl>
      get copyWith => __$$CoachProgramEventGetProgramsImplCopyWithImpl<
          _$CoachProgramEventGetProgramsImpl>(this, _$identity);

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
    required TResult Function(CoachProgramEventGetPrograms value) getPrograms,
    required TResult Function(CoachProgramEventFilterPrograms value)
        filterPrograms,
    required TResult Function(CoachProgramEventClear value) clear,
    required TResult Function(CoachProgramEventCreate value) create,
    required TResult Function(CoachProgramEventUpdate value) update,
    required TResult Function(CoachProgramEventDelete value) delete,
  }) {
    return getPrograms(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CoachProgramEventGetPrograms value)? getPrograms,
    TResult? Function(CoachProgramEventFilterPrograms value)? filterPrograms,
    TResult? Function(CoachProgramEventClear value)? clear,
    TResult? Function(CoachProgramEventCreate value)? create,
    TResult? Function(CoachProgramEventUpdate value)? update,
    TResult? Function(CoachProgramEventDelete value)? delete,
  }) {
    return getPrograms?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CoachProgramEventGetPrograms value)? getPrograms,
    TResult Function(CoachProgramEventFilterPrograms value)? filterPrograms,
    TResult Function(CoachProgramEventClear value)? clear,
    TResult Function(CoachProgramEventCreate value)? create,
    TResult Function(CoachProgramEventUpdate value)? update,
    TResult Function(CoachProgramEventDelete value)? delete,
    required TResult orElse(),
  }) {
    if (getPrograms != null) {
      return getPrograms(this);
    }
    return orElse();
  }
}

abstract class CoachProgramEventGetPrograms implements CoachProgramEvent {
  const factory CoachProgramEventGetPrograms(final GetAllProgramParams params) =
      _$CoachProgramEventGetProgramsImpl;

  GetAllProgramParams get params;

  /// Create a copy of CoachProgramEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CoachProgramEventGetProgramsImplCopyWith<
          _$CoachProgramEventGetProgramsImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CoachProgramEventFilterProgramsImplCopyWith<$Res> {
  factory _$$CoachProgramEventFilterProgramsImplCopyWith(
          _$CoachProgramEventFilterProgramsImpl value,
          $Res Function(_$CoachProgramEventFilterProgramsImpl) then) =
      __$$CoachProgramEventFilterProgramsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String query});
}

/// @nodoc
class __$$CoachProgramEventFilterProgramsImplCopyWithImpl<$Res>
    extends _$CoachProgramEventCopyWithImpl<$Res,
        _$CoachProgramEventFilterProgramsImpl>
    implements _$$CoachProgramEventFilterProgramsImplCopyWith<$Res> {
  __$$CoachProgramEventFilterProgramsImplCopyWithImpl(
      _$CoachProgramEventFilterProgramsImpl _value,
      $Res Function(_$CoachProgramEventFilterProgramsImpl) _then)
      : super(_value, _then);

  /// Create a copy of CoachProgramEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
  }) {
    return _then(_$CoachProgramEventFilterProgramsImpl(
      null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CoachProgramEventFilterProgramsImpl
    implements CoachProgramEventFilterPrograms {
  const _$CoachProgramEventFilterProgramsImpl(this.query);

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
            other is _$CoachProgramEventFilterProgramsImpl &&
            (identical(other.query, query) || other.query == query));
  }

  @override
  int get hashCode => Object.hash(runtimeType, query);

  /// Create a copy of CoachProgramEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CoachProgramEventFilterProgramsImplCopyWith<
          _$CoachProgramEventFilterProgramsImpl>
      get copyWith => __$$CoachProgramEventFilterProgramsImplCopyWithImpl<
          _$CoachProgramEventFilterProgramsImpl>(this, _$identity);

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
    required TResult Function(CoachProgramEventGetPrograms value) getPrograms,
    required TResult Function(CoachProgramEventFilterPrograms value)
        filterPrograms,
    required TResult Function(CoachProgramEventClear value) clear,
    required TResult Function(CoachProgramEventCreate value) create,
    required TResult Function(CoachProgramEventUpdate value) update,
    required TResult Function(CoachProgramEventDelete value) delete,
  }) {
    return filterPrograms(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CoachProgramEventGetPrograms value)? getPrograms,
    TResult? Function(CoachProgramEventFilterPrograms value)? filterPrograms,
    TResult? Function(CoachProgramEventClear value)? clear,
    TResult? Function(CoachProgramEventCreate value)? create,
    TResult? Function(CoachProgramEventUpdate value)? update,
    TResult? Function(CoachProgramEventDelete value)? delete,
  }) {
    return filterPrograms?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CoachProgramEventGetPrograms value)? getPrograms,
    TResult Function(CoachProgramEventFilterPrograms value)? filterPrograms,
    TResult Function(CoachProgramEventClear value)? clear,
    TResult Function(CoachProgramEventCreate value)? create,
    TResult Function(CoachProgramEventUpdate value)? update,
    TResult Function(CoachProgramEventDelete value)? delete,
    required TResult orElse(),
  }) {
    if (filterPrograms != null) {
      return filterPrograms(this);
    }
    return orElse();
  }
}

abstract class CoachProgramEventFilterPrograms implements CoachProgramEvent {
  const factory CoachProgramEventFilterPrograms(final String query) =
      _$CoachProgramEventFilterProgramsImpl;

  String get query;

  /// Create a copy of CoachProgramEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CoachProgramEventFilterProgramsImplCopyWith<
          _$CoachProgramEventFilterProgramsImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CoachProgramEventClearImplCopyWith<$Res> {
  factory _$$CoachProgramEventClearImplCopyWith(
          _$CoachProgramEventClearImpl value,
          $Res Function(_$CoachProgramEventClearImpl) then) =
      __$$CoachProgramEventClearImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CoachProgramEventClearImplCopyWithImpl<$Res>
    extends _$CoachProgramEventCopyWithImpl<$Res, _$CoachProgramEventClearImpl>
    implements _$$CoachProgramEventClearImplCopyWith<$Res> {
  __$$CoachProgramEventClearImplCopyWithImpl(
      _$CoachProgramEventClearImpl _value,
      $Res Function(_$CoachProgramEventClearImpl) _then)
      : super(_value, _then);

  /// Create a copy of CoachProgramEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$CoachProgramEventClearImpl implements CoachProgramEventClear {
  const _$CoachProgramEventClearImpl();

  @override
  String toString() {
    return 'CoachProgramEvent.clear()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CoachProgramEventClearImpl);
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
    required TResult Function(CoachProgramEventGetPrograms value) getPrograms,
    required TResult Function(CoachProgramEventFilterPrograms value)
        filterPrograms,
    required TResult Function(CoachProgramEventClear value) clear,
    required TResult Function(CoachProgramEventCreate value) create,
    required TResult Function(CoachProgramEventUpdate value) update,
    required TResult Function(CoachProgramEventDelete value) delete,
  }) {
    return clear(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CoachProgramEventGetPrograms value)? getPrograms,
    TResult? Function(CoachProgramEventFilterPrograms value)? filterPrograms,
    TResult? Function(CoachProgramEventClear value)? clear,
    TResult? Function(CoachProgramEventCreate value)? create,
    TResult? Function(CoachProgramEventUpdate value)? update,
    TResult? Function(CoachProgramEventDelete value)? delete,
  }) {
    return clear?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CoachProgramEventGetPrograms value)? getPrograms,
    TResult Function(CoachProgramEventFilterPrograms value)? filterPrograms,
    TResult Function(CoachProgramEventClear value)? clear,
    TResult Function(CoachProgramEventCreate value)? create,
    TResult Function(CoachProgramEventUpdate value)? update,
    TResult Function(CoachProgramEventDelete value)? delete,
    required TResult orElse(),
  }) {
    if (clear != null) {
      return clear(this);
    }
    return orElse();
  }
}

abstract class CoachProgramEventClear implements CoachProgramEvent {
  const factory CoachProgramEventClear() = _$CoachProgramEventClearImpl;
}

/// @nodoc
abstract class _$$CoachProgramEventCreateImplCopyWith<$Res> {
  factory _$$CoachProgramEventCreateImplCopyWith(
          _$CoachProgramEventCreateImpl value,
          $Res Function(_$CoachProgramEventCreateImpl) then) =
      __$$CoachProgramEventCreateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({CreateProgramParams params});

  $CreateProgramParamsCopyWith<$Res> get params;
}

/// @nodoc
class __$$CoachProgramEventCreateImplCopyWithImpl<$Res>
    extends _$CoachProgramEventCopyWithImpl<$Res, _$CoachProgramEventCreateImpl>
    implements _$$CoachProgramEventCreateImplCopyWith<$Res> {
  __$$CoachProgramEventCreateImplCopyWithImpl(
      _$CoachProgramEventCreateImpl _value,
      $Res Function(_$CoachProgramEventCreateImpl) _then)
      : super(_value, _then);

  /// Create a copy of CoachProgramEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? params = null,
  }) {
    return _then(_$CoachProgramEventCreateImpl(
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

class _$CoachProgramEventCreateImpl implements CoachProgramEventCreate {
  const _$CoachProgramEventCreateImpl(this.params);

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
            other is _$CoachProgramEventCreateImpl &&
            (identical(other.params, params) || other.params == params));
  }

  @override
  int get hashCode => Object.hash(runtimeType, params);

  /// Create a copy of CoachProgramEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CoachProgramEventCreateImplCopyWith<_$CoachProgramEventCreateImpl>
      get copyWith => __$$CoachProgramEventCreateImplCopyWithImpl<
          _$CoachProgramEventCreateImpl>(this, _$identity);

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
    required TResult Function(CoachProgramEventGetPrograms value) getPrograms,
    required TResult Function(CoachProgramEventFilterPrograms value)
        filterPrograms,
    required TResult Function(CoachProgramEventClear value) clear,
    required TResult Function(CoachProgramEventCreate value) create,
    required TResult Function(CoachProgramEventUpdate value) update,
    required TResult Function(CoachProgramEventDelete value) delete,
  }) {
    return create(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CoachProgramEventGetPrograms value)? getPrograms,
    TResult? Function(CoachProgramEventFilterPrograms value)? filterPrograms,
    TResult? Function(CoachProgramEventClear value)? clear,
    TResult? Function(CoachProgramEventCreate value)? create,
    TResult? Function(CoachProgramEventUpdate value)? update,
    TResult? Function(CoachProgramEventDelete value)? delete,
  }) {
    return create?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CoachProgramEventGetPrograms value)? getPrograms,
    TResult Function(CoachProgramEventFilterPrograms value)? filterPrograms,
    TResult Function(CoachProgramEventClear value)? clear,
    TResult Function(CoachProgramEventCreate value)? create,
    TResult Function(CoachProgramEventUpdate value)? update,
    TResult Function(CoachProgramEventDelete value)? delete,
    required TResult orElse(),
  }) {
    if (create != null) {
      return create(this);
    }
    return orElse();
  }
}

abstract class CoachProgramEventCreate implements CoachProgramEvent {
  const factory CoachProgramEventCreate(final CreateProgramParams params) =
      _$CoachProgramEventCreateImpl;

  CreateProgramParams get params;

  /// Create a copy of CoachProgramEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CoachProgramEventCreateImplCopyWith<_$CoachProgramEventCreateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CoachProgramEventUpdateImplCopyWith<$Res> {
  factory _$$CoachProgramEventUpdateImplCopyWith(
          _$CoachProgramEventUpdateImpl value,
          $Res Function(_$CoachProgramEventUpdateImpl) then) =
      __$$CoachProgramEventUpdateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({UpdateProgramParams params});

  $UpdateProgramParamsCopyWith<$Res> get params;
}

/// @nodoc
class __$$CoachProgramEventUpdateImplCopyWithImpl<$Res>
    extends _$CoachProgramEventCopyWithImpl<$Res, _$CoachProgramEventUpdateImpl>
    implements _$$CoachProgramEventUpdateImplCopyWith<$Res> {
  __$$CoachProgramEventUpdateImplCopyWithImpl(
      _$CoachProgramEventUpdateImpl _value,
      $Res Function(_$CoachProgramEventUpdateImpl) _then)
      : super(_value, _then);

  /// Create a copy of CoachProgramEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? params = null,
  }) {
    return _then(_$CoachProgramEventUpdateImpl(
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

class _$CoachProgramEventUpdateImpl implements CoachProgramEventUpdate {
  const _$CoachProgramEventUpdateImpl(this.params);

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
            other is _$CoachProgramEventUpdateImpl &&
            (identical(other.params, params) || other.params == params));
  }

  @override
  int get hashCode => Object.hash(runtimeType, params);

  /// Create a copy of CoachProgramEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CoachProgramEventUpdateImplCopyWith<_$CoachProgramEventUpdateImpl>
      get copyWith => __$$CoachProgramEventUpdateImplCopyWithImpl<
          _$CoachProgramEventUpdateImpl>(this, _$identity);

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
    required TResult Function(CoachProgramEventGetPrograms value) getPrograms,
    required TResult Function(CoachProgramEventFilterPrograms value)
        filterPrograms,
    required TResult Function(CoachProgramEventClear value) clear,
    required TResult Function(CoachProgramEventCreate value) create,
    required TResult Function(CoachProgramEventUpdate value) update,
    required TResult Function(CoachProgramEventDelete value) delete,
  }) {
    return update(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CoachProgramEventGetPrograms value)? getPrograms,
    TResult? Function(CoachProgramEventFilterPrograms value)? filterPrograms,
    TResult? Function(CoachProgramEventClear value)? clear,
    TResult? Function(CoachProgramEventCreate value)? create,
    TResult? Function(CoachProgramEventUpdate value)? update,
    TResult? Function(CoachProgramEventDelete value)? delete,
  }) {
    return update?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CoachProgramEventGetPrograms value)? getPrograms,
    TResult Function(CoachProgramEventFilterPrograms value)? filterPrograms,
    TResult Function(CoachProgramEventClear value)? clear,
    TResult Function(CoachProgramEventCreate value)? create,
    TResult Function(CoachProgramEventUpdate value)? update,
    TResult Function(CoachProgramEventDelete value)? delete,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(this);
    }
    return orElse();
  }
}

abstract class CoachProgramEventUpdate implements CoachProgramEvent {
  const factory CoachProgramEventUpdate(final UpdateProgramParams params) =
      _$CoachProgramEventUpdateImpl;

  UpdateProgramParams get params;

  /// Create a copy of CoachProgramEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CoachProgramEventUpdateImplCopyWith<_$CoachProgramEventUpdateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CoachProgramEventDeleteImplCopyWith<$Res> {
  factory _$$CoachProgramEventDeleteImplCopyWith(
          _$CoachProgramEventDeleteImpl value,
          $Res Function(_$CoachProgramEventDeleteImpl) then) =
      __$$CoachProgramEventDeleteImplCopyWithImpl<$Res>;
  @useResult
  $Res call({DeleteProgramParams params});

  $DeleteProgramParamsCopyWith<$Res> get params;
}

/// @nodoc
class __$$CoachProgramEventDeleteImplCopyWithImpl<$Res>
    extends _$CoachProgramEventCopyWithImpl<$Res, _$CoachProgramEventDeleteImpl>
    implements _$$CoachProgramEventDeleteImplCopyWith<$Res> {
  __$$CoachProgramEventDeleteImplCopyWithImpl(
      _$CoachProgramEventDeleteImpl _value,
      $Res Function(_$CoachProgramEventDeleteImpl) _then)
      : super(_value, _then);

  /// Create a copy of CoachProgramEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? params = null,
  }) {
    return _then(_$CoachProgramEventDeleteImpl(
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

class _$CoachProgramEventDeleteImpl implements CoachProgramEventDelete {
  const _$CoachProgramEventDeleteImpl(this.params);

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
            other is _$CoachProgramEventDeleteImpl &&
            (identical(other.params, params) || other.params == params));
  }

  @override
  int get hashCode => Object.hash(runtimeType, params);

  /// Create a copy of CoachProgramEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CoachProgramEventDeleteImplCopyWith<_$CoachProgramEventDeleteImpl>
      get copyWith => __$$CoachProgramEventDeleteImplCopyWithImpl<
          _$CoachProgramEventDeleteImpl>(this, _$identity);

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
    required TResult Function(CoachProgramEventGetPrograms value) getPrograms,
    required TResult Function(CoachProgramEventFilterPrograms value)
        filterPrograms,
    required TResult Function(CoachProgramEventClear value) clear,
    required TResult Function(CoachProgramEventCreate value) create,
    required TResult Function(CoachProgramEventUpdate value) update,
    required TResult Function(CoachProgramEventDelete value) delete,
  }) {
    return delete(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CoachProgramEventGetPrograms value)? getPrograms,
    TResult? Function(CoachProgramEventFilterPrograms value)? filterPrograms,
    TResult? Function(CoachProgramEventClear value)? clear,
    TResult? Function(CoachProgramEventCreate value)? create,
    TResult? Function(CoachProgramEventUpdate value)? update,
    TResult? Function(CoachProgramEventDelete value)? delete,
  }) {
    return delete?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CoachProgramEventGetPrograms value)? getPrograms,
    TResult Function(CoachProgramEventFilterPrograms value)? filterPrograms,
    TResult Function(CoachProgramEventClear value)? clear,
    TResult Function(CoachProgramEventCreate value)? create,
    TResult Function(CoachProgramEventUpdate value)? update,
    TResult Function(CoachProgramEventDelete value)? delete,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete(this);
    }
    return orElse();
  }
}

abstract class CoachProgramEventDelete implements CoachProgramEvent {
  const factory CoachProgramEventDelete(final DeleteProgramParams params) =
      _$CoachProgramEventDeleteImpl;

  DeleteProgramParams get params;

  /// Create a copy of CoachProgramEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CoachProgramEventDeleteImplCopyWith<_$CoachProgramEventDeleteImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CoachProgramState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            List<ProgramModel> programs, List<ProgramModel> filteredPrograms)
        loaded,
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
    TResult? Function(
            List<ProgramModel> programs, List<ProgramModel> filteredPrograms)?
        loaded,
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
    TResult Function(
            List<ProgramModel> programs, List<ProgramModel> filteredPrograms)?
        loaded,
    TResult Function(String message)? failure,
    TResult Function(ProgramModel program)? created,
    TResult Function(ProgramModel program)? updated,
    TResult Function(ProgramModel program)? deleted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CoachProgramStateInitial value) initial,
    required TResult Function(CoachProgramStateLoading value) loading,
    required TResult Function(CoachProgramStateLoaded value) loaded,
    required TResult Function(CoachProgramStateFailure value) failure,
    required TResult Function(CoachProgramStateCreated value) created,
    required TResult Function(CoachProgramStateUpdated value) updated,
    required TResult Function(CoachProgramStateDeleted value) deleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CoachProgramStateInitial value)? initial,
    TResult? Function(CoachProgramStateLoading value)? loading,
    TResult? Function(CoachProgramStateLoaded value)? loaded,
    TResult? Function(CoachProgramStateFailure value)? failure,
    TResult? Function(CoachProgramStateCreated value)? created,
    TResult? Function(CoachProgramStateUpdated value)? updated,
    TResult? Function(CoachProgramStateDeleted value)? deleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CoachProgramStateInitial value)? initial,
    TResult Function(CoachProgramStateLoading value)? loading,
    TResult Function(CoachProgramStateLoaded value)? loaded,
    TResult Function(CoachProgramStateFailure value)? failure,
    TResult Function(CoachProgramStateCreated value)? created,
    TResult Function(CoachProgramStateUpdated value)? updated,
    TResult Function(CoachProgramStateDeleted value)? deleted,
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
abstract class _$$CoachProgramStateInitialImplCopyWith<$Res> {
  factory _$$CoachProgramStateInitialImplCopyWith(
          _$CoachProgramStateInitialImpl value,
          $Res Function(_$CoachProgramStateInitialImpl) then) =
      __$$CoachProgramStateInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CoachProgramStateInitialImplCopyWithImpl<$Res>
    extends _$CoachProgramStateCopyWithImpl<$Res,
        _$CoachProgramStateInitialImpl>
    implements _$$CoachProgramStateInitialImplCopyWith<$Res> {
  __$$CoachProgramStateInitialImplCopyWithImpl(
      _$CoachProgramStateInitialImpl _value,
      $Res Function(_$CoachProgramStateInitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of CoachProgramState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$CoachProgramStateInitialImpl implements CoachProgramStateInitial {
  const _$CoachProgramStateInitialImpl();

  @override
  String toString() {
    return 'CoachProgramState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CoachProgramStateInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            List<ProgramModel> programs, List<ProgramModel> filteredPrograms)
        loaded,
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
    TResult? Function(
            List<ProgramModel> programs, List<ProgramModel> filteredPrograms)?
        loaded,
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
    TResult Function(
            List<ProgramModel> programs, List<ProgramModel> filteredPrograms)?
        loaded,
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
    required TResult Function(CoachProgramStateInitial value) initial,
    required TResult Function(CoachProgramStateLoading value) loading,
    required TResult Function(CoachProgramStateLoaded value) loaded,
    required TResult Function(CoachProgramStateFailure value) failure,
    required TResult Function(CoachProgramStateCreated value) created,
    required TResult Function(CoachProgramStateUpdated value) updated,
    required TResult Function(CoachProgramStateDeleted value) deleted,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CoachProgramStateInitial value)? initial,
    TResult? Function(CoachProgramStateLoading value)? loading,
    TResult? Function(CoachProgramStateLoaded value)? loaded,
    TResult? Function(CoachProgramStateFailure value)? failure,
    TResult? Function(CoachProgramStateCreated value)? created,
    TResult? Function(CoachProgramStateUpdated value)? updated,
    TResult? Function(CoachProgramStateDeleted value)? deleted,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CoachProgramStateInitial value)? initial,
    TResult Function(CoachProgramStateLoading value)? loading,
    TResult Function(CoachProgramStateLoaded value)? loaded,
    TResult Function(CoachProgramStateFailure value)? failure,
    TResult Function(CoachProgramStateCreated value)? created,
    TResult Function(CoachProgramStateUpdated value)? updated,
    TResult Function(CoachProgramStateDeleted value)? deleted,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class CoachProgramStateInitial implements CoachProgramState {
  const factory CoachProgramStateInitial() = _$CoachProgramStateInitialImpl;
}

/// @nodoc
abstract class _$$CoachProgramStateLoadingImplCopyWith<$Res> {
  factory _$$CoachProgramStateLoadingImplCopyWith(
          _$CoachProgramStateLoadingImpl value,
          $Res Function(_$CoachProgramStateLoadingImpl) then) =
      __$$CoachProgramStateLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CoachProgramStateLoadingImplCopyWithImpl<$Res>
    extends _$CoachProgramStateCopyWithImpl<$Res,
        _$CoachProgramStateLoadingImpl>
    implements _$$CoachProgramStateLoadingImplCopyWith<$Res> {
  __$$CoachProgramStateLoadingImplCopyWithImpl(
      _$CoachProgramStateLoadingImpl _value,
      $Res Function(_$CoachProgramStateLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of CoachProgramState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$CoachProgramStateLoadingImpl implements CoachProgramStateLoading {
  const _$CoachProgramStateLoadingImpl();

  @override
  String toString() {
    return 'CoachProgramState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CoachProgramStateLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            List<ProgramModel> programs, List<ProgramModel> filteredPrograms)
        loaded,
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
    TResult? Function(
            List<ProgramModel> programs, List<ProgramModel> filteredPrograms)?
        loaded,
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
    TResult Function(
            List<ProgramModel> programs, List<ProgramModel> filteredPrograms)?
        loaded,
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
    required TResult Function(CoachProgramStateInitial value) initial,
    required TResult Function(CoachProgramStateLoading value) loading,
    required TResult Function(CoachProgramStateLoaded value) loaded,
    required TResult Function(CoachProgramStateFailure value) failure,
    required TResult Function(CoachProgramStateCreated value) created,
    required TResult Function(CoachProgramStateUpdated value) updated,
    required TResult Function(CoachProgramStateDeleted value) deleted,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CoachProgramStateInitial value)? initial,
    TResult? Function(CoachProgramStateLoading value)? loading,
    TResult? Function(CoachProgramStateLoaded value)? loaded,
    TResult? Function(CoachProgramStateFailure value)? failure,
    TResult? Function(CoachProgramStateCreated value)? created,
    TResult? Function(CoachProgramStateUpdated value)? updated,
    TResult? Function(CoachProgramStateDeleted value)? deleted,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CoachProgramStateInitial value)? initial,
    TResult Function(CoachProgramStateLoading value)? loading,
    TResult Function(CoachProgramStateLoaded value)? loaded,
    TResult Function(CoachProgramStateFailure value)? failure,
    TResult Function(CoachProgramStateCreated value)? created,
    TResult Function(CoachProgramStateUpdated value)? updated,
    TResult Function(CoachProgramStateDeleted value)? deleted,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class CoachProgramStateLoading implements CoachProgramState {
  const factory CoachProgramStateLoading() = _$CoachProgramStateLoadingImpl;
}

/// @nodoc
abstract class _$$CoachProgramStateLoadedImplCopyWith<$Res> {
  factory _$$CoachProgramStateLoadedImplCopyWith(
          _$CoachProgramStateLoadedImpl value,
          $Res Function(_$CoachProgramStateLoadedImpl) then) =
      __$$CoachProgramStateLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<ProgramModel> programs, List<ProgramModel> filteredPrograms});
}

/// @nodoc
class __$$CoachProgramStateLoadedImplCopyWithImpl<$Res>
    extends _$CoachProgramStateCopyWithImpl<$Res, _$CoachProgramStateLoadedImpl>
    implements _$$CoachProgramStateLoadedImplCopyWith<$Res> {
  __$$CoachProgramStateLoadedImplCopyWithImpl(
      _$CoachProgramStateLoadedImpl _value,
      $Res Function(_$CoachProgramStateLoadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of CoachProgramState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? programs = null,
    Object? filteredPrograms = null,
  }) {
    return _then(_$CoachProgramStateLoadedImpl(
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

class _$CoachProgramStateLoadedImpl implements CoachProgramStateLoaded {
  const _$CoachProgramStateLoadedImpl(
      {required final List<ProgramModel> programs,
      required final List<ProgramModel> filteredPrograms})
      : _programs = programs,
        _filteredPrograms = filteredPrograms;

  final List<ProgramModel> _programs;
  @override
  List<ProgramModel> get programs {
    if (_programs is EqualUnmodifiableListView) return _programs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_programs);
  }

  final List<ProgramModel> _filteredPrograms;
  @override
  List<ProgramModel> get filteredPrograms {
    if (_filteredPrograms is EqualUnmodifiableListView)
      return _filteredPrograms;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_filteredPrograms);
  }

  @override
  String toString() {
    return 'CoachProgramState.loaded(programs: $programs, filteredPrograms: $filteredPrograms)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CoachProgramStateLoadedImpl &&
            const DeepCollectionEquality().equals(other._programs, _programs) &&
            const DeepCollectionEquality()
                .equals(other._filteredPrograms, _filteredPrograms));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_programs),
      const DeepCollectionEquality().hash(_filteredPrograms));

  /// Create a copy of CoachProgramState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CoachProgramStateLoadedImplCopyWith<_$CoachProgramStateLoadedImpl>
      get copyWith => __$$CoachProgramStateLoadedImplCopyWithImpl<
          _$CoachProgramStateLoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            List<ProgramModel> programs, List<ProgramModel> filteredPrograms)
        loaded,
    required TResult Function(String message) failure,
    required TResult Function(ProgramModel program) created,
    required TResult Function(ProgramModel program) updated,
    required TResult Function(ProgramModel program) deleted,
  }) {
    return loaded(programs, filteredPrograms);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
            List<ProgramModel> programs, List<ProgramModel> filteredPrograms)?
        loaded,
    TResult? Function(String message)? failure,
    TResult? Function(ProgramModel program)? created,
    TResult? Function(ProgramModel program)? updated,
    TResult? Function(ProgramModel program)? deleted,
  }) {
    return loaded?.call(programs, filteredPrograms);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            List<ProgramModel> programs, List<ProgramModel> filteredPrograms)?
        loaded,
    TResult Function(String message)? failure,
    TResult Function(ProgramModel program)? created,
    TResult Function(ProgramModel program)? updated,
    TResult Function(ProgramModel program)? deleted,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(programs, filteredPrograms);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CoachProgramStateInitial value) initial,
    required TResult Function(CoachProgramStateLoading value) loading,
    required TResult Function(CoachProgramStateLoaded value) loaded,
    required TResult Function(CoachProgramStateFailure value) failure,
    required TResult Function(CoachProgramStateCreated value) created,
    required TResult Function(CoachProgramStateUpdated value) updated,
    required TResult Function(CoachProgramStateDeleted value) deleted,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CoachProgramStateInitial value)? initial,
    TResult? Function(CoachProgramStateLoading value)? loading,
    TResult? Function(CoachProgramStateLoaded value)? loaded,
    TResult? Function(CoachProgramStateFailure value)? failure,
    TResult? Function(CoachProgramStateCreated value)? created,
    TResult? Function(CoachProgramStateUpdated value)? updated,
    TResult? Function(CoachProgramStateDeleted value)? deleted,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CoachProgramStateInitial value)? initial,
    TResult Function(CoachProgramStateLoading value)? loading,
    TResult Function(CoachProgramStateLoaded value)? loaded,
    TResult Function(CoachProgramStateFailure value)? failure,
    TResult Function(CoachProgramStateCreated value)? created,
    TResult Function(CoachProgramStateUpdated value)? updated,
    TResult Function(CoachProgramStateDeleted value)? deleted,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class CoachProgramStateLoaded implements CoachProgramState {
  const factory CoachProgramStateLoaded(
          {required final List<ProgramModel> programs,
          required final List<ProgramModel> filteredPrograms}) =
      _$CoachProgramStateLoadedImpl;

  List<ProgramModel> get programs;
  List<ProgramModel> get filteredPrograms;

  /// Create a copy of CoachProgramState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CoachProgramStateLoadedImplCopyWith<_$CoachProgramStateLoadedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CoachProgramStateFailureImplCopyWith<$Res> {
  factory _$$CoachProgramStateFailureImplCopyWith(
          _$CoachProgramStateFailureImpl value,
          $Res Function(_$CoachProgramStateFailureImpl) then) =
      __$$CoachProgramStateFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$CoachProgramStateFailureImplCopyWithImpl<$Res>
    extends _$CoachProgramStateCopyWithImpl<$Res,
        _$CoachProgramStateFailureImpl>
    implements _$$CoachProgramStateFailureImplCopyWith<$Res> {
  __$$CoachProgramStateFailureImplCopyWithImpl(
      _$CoachProgramStateFailureImpl _value,
      $Res Function(_$CoachProgramStateFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of CoachProgramState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$CoachProgramStateFailureImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CoachProgramStateFailureImpl implements CoachProgramStateFailure {
  const _$CoachProgramStateFailureImpl(this.message);

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
            other is _$CoachProgramStateFailureImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of CoachProgramState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CoachProgramStateFailureImplCopyWith<_$CoachProgramStateFailureImpl>
      get copyWith => __$$CoachProgramStateFailureImplCopyWithImpl<
          _$CoachProgramStateFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            List<ProgramModel> programs, List<ProgramModel> filteredPrograms)
        loaded,
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
    TResult? Function(
            List<ProgramModel> programs, List<ProgramModel> filteredPrograms)?
        loaded,
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
    TResult Function(
            List<ProgramModel> programs, List<ProgramModel> filteredPrograms)?
        loaded,
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
    required TResult Function(CoachProgramStateInitial value) initial,
    required TResult Function(CoachProgramStateLoading value) loading,
    required TResult Function(CoachProgramStateLoaded value) loaded,
    required TResult Function(CoachProgramStateFailure value) failure,
    required TResult Function(CoachProgramStateCreated value) created,
    required TResult Function(CoachProgramStateUpdated value) updated,
    required TResult Function(CoachProgramStateDeleted value) deleted,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CoachProgramStateInitial value)? initial,
    TResult? Function(CoachProgramStateLoading value)? loading,
    TResult? Function(CoachProgramStateLoaded value)? loaded,
    TResult? Function(CoachProgramStateFailure value)? failure,
    TResult? Function(CoachProgramStateCreated value)? created,
    TResult? Function(CoachProgramStateUpdated value)? updated,
    TResult? Function(CoachProgramStateDeleted value)? deleted,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CoachProgramStateInitial value)? initial,
    TResult Function(CoachProgramStateLoading value)? loading,
    TResult Function(CoachProgramStateLoaded value)? loaded,
    TResult Function(CoachProgramStateFailure value)? failure,
    TResult Function(CoachProgramStateCreated value)? created,
    TResult Function(CoachProgramStateUpdated value)? updated,
    TResult Function(CoachProgramStateDeleted value)? deleted,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class CoachProgramStateFailure implements CoachProgramState {
  const factory CoachProgramStateFailure(final String message) =
      _$CoachProgramStateFailureImpl;

  String get message;

  /// Create a copy of CoachProgramState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CoachProgramStateFailureImplCopyWith<_$CoachProgramStateFailureImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CoachProgramStateCreatedImplCopyWith<$Res> {
  factory _$$CoachProgramStateCreatedImplCopyWith(
          _$CoachProgramStateCreatedImpl value,
          $Res Function(_$CoachProgramStateCreatedImpl) then) =
      __$$CoachProgramStateCreatedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ProgramModel program});

  $ProgramModelCopyWith<$Res> get program;
}

/// @nodoc
class __$$CoachProgramStateCreatedImplCopyWithImpl<$Res>
    extends _$CoachProgramStateCopyWithImpl<$Res,
        _$CoachProgramStateCreatedImpl>
    implements _$$CoachProgramStateCreatedImplCopyWith<$Res> {
  __$$CoachProgramStateCreatedImplCopyWithImpl(
      _$CoachProgramStateCreatedImpl _value,
      $Res Function(_$CoachProgramStateCreatedImpl) _then)
      : super(_value, _then);

  /// Create a copy of CoachProgramState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? program = null,
  }) {
    return _then(_$CoachProgramStateCreatedImpl(
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

class _$CoachProgramStateCreatedImpl implements CoachProgramStateCreated {
  const _$CoachProgramStateCreatedImpl(this.program);

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
            other is _$CoachProgramStateCreatedImpl &&
            (identical(other.program, program) || other.program == program));
  }

  @override
  int get hashCode => Object.hash(runtimeType, program);

  /// Create a copy of CoachProgramState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CoachProgramStateCreatedImplCopyWith<_$CoachProgramStateCreatedImpl>
      get copyWith => __$$CoachProgramStateCreatedImplCopyWithImpl<
          _$CoachProgramStateCreatedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            List<ProgramModel> programs, List<ProgramModel> filteredPrograms)
        loaded,
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
    TResult? Function(
            List<ProgramModel> programs, List<ProgramModel> filteredPrograms)?
        loaded,
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
    TResult Function(
            List<ProgramModel> programs, List<ProgramModel> filteredPrograms)?
        loaded,
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
    required TResult Function(CoachProgramStateInitial value) initial,
    required TResult Function(CoachProgramStateLoading value) loading,
    required TResult Function(CoachProgramStateLoaded value) loaded,
    required TResult Function(CoachProgramStateFailure value) failure,
    required TResult Function(CoachProgramStateCreated value) created,
    required TResult Function(CoachProgramStateUpdated value) updated,
    required TResult Function(CoachProgramStateDeleted value) deleted,
  }) {
    return created(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CoachProgramStateInitial value)? initial,
    TResult? Function(CoachProgramStateLoading value)? loading,
    TResult? Function(CoachProgramStateLoaded value)? loaded,
    TResult? Function(CoachProgramStateFailure value)? failure,
    TResult? Function(CoachProgramStateCreated value)? created,
    TResult? Function(CoachProgramStateUpdated value)? updated,
    TResult? Function(CoachProgramStateDeleted value)? deleted,
  }) {
    return created?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CoachProgramStateInitial value)? initial,
    TResult Function(CoachProgramStateLoading value)? loading,
    TResult Function(CoachProgramStateLoaded value)? loaded,
    TResult Function(CoachProgramStateFailure value)? failure,
    TResult Function(CoachProgramStateCreated value)? created,
    TResult Function(CoachProgramStateUpdated value)? updated,
    TResult Function(CoachProgramStateDeleted value)? deleted,
    required TResult orElse(),
  }) {
    if (created != null) {
      return created(this);
    }
    return orElse();
  }
}

abstract class CoachProgramStateCreated implements CoachProgramState {
  const factory CoachProgramStateCreated(final ProgramModel program) =
      _$CoachProgramStateCreatedImpl;

  ProgramModel get program;

  /// Create a copy of CoachProgramState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CoachProgramStateCreatedImplCopyWith<_$CoachProgramStateCreatedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CoachProgramStateUpdatedImplCopyWith<$Res> {
  factory _$$CoachProgramStateUpdatedImplCopyWith(
          _$CoachProgramStateUpdatedImpl value,
          $Res Function(_$CoachProgramStateUpdatedImpl) then) =
      __$$CoachProgramStateUpdatedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ProgramModel program});

  $ProgramModelCopyWith<$Res> get program;
}

/// @nodoc
class __$$CoachProgramStateUpdatedImplCopyWithImpl<$Res>
    extends _$CoachProgramStateCopyWithImpl<$Res,
        _$CoachProgramStateUpdatedImpl>
    implements _$$CoachProgramStateUpdatedImplCopyWith<$Res> {
  __$$CoachProgramStateUpdatedImplCopyWithImpl(
      _$CoachProgramStateUpdatedImpl _value,
      $Res Function(_$CoachProgramStateUpdatedImpl) _then)
      : super(_value, _then);

  /// Create a copy of CoachProgramState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? program = null,
  }) {
    return _then(_$CoachProgramStateUpdatedImpl(
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

class _$CoachProgramStateUpdatedImpl implements CoachProgramStateUpdated {
  const _$CoachProgramStateUpdatedImpl(this.program);

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
            other is _$CoachProgramStateUpdatedImpl &&
            (identical(other.program, program) || other.program == program));
  }

  @override
  int get hashCode => Object.hash(runtimeType, program);

  /// Create a copy of CoachProgramState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CoachProgramStateUpdatedImplCopyWith<_$CoachProgramStateUpdatedImpl>
      get copyWith => __$$CoachProgramStateUpdatedImplCopyWithImpl<
          _$CoachProgramStateUpdatedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            List<ProgramModel> programs, List<ProgramModel> filteredPrograms)
        loaded,
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
    TResult? Function(
            List<ProgramModel> programs, List<ProgramModel> filteredPrograms)?
        loaded,
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
    TResult Function(
            List<ProgramModel> programs, List<ProgramModel> filteredPrograms)?
        loaded,
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
    required TResult Function(CoachProgramStateInitial value) initial,
    required TResult Function(CoachProgramStateLoading value) loading,
    required TResult Function(CoachProgramStateLoaded value) loaded,
    required TResult Function(CoachProgramStateFailure value) failure,
    required TResult Function(CoachProgramStateCreated value) created,
    required TResult Function(CoachProgramStateUpdated value) updated,
    required TResult Function(CoachProgramStateDeleted value) deleted,
  }) {
    return updated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CoachProgramStateInitial value)? initial,
    TResult? Function(CoachProgramStateLoading value)? loading,
    TResult? Function(CoachProgramStateLoaded value)? loaded,
    TResult? Function(CoachProgramStateFailure value)? failure,
    TResult? Function(CoachProgramStateCreated value)? created,
    TResult? Function(CoachProgramStateUpdated value)? updated,
    TResult? Function(CoachProgramStateDeleted value)? deleted,
  }) {
    return updated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CoachProgramStateInitial value)? initial,
    TResult Function(CoachProgramStateLoading value)? loading,
    TResult Function(CoachProgramStateLoaded value)? loaded,
    TResult Function(CoachProgramStateFailure value)? failure,
    TResult Function(CoachProgramStateCreated value)? created,
    TResult Function(CoachProgramStateUpdated value)? updated,
    TResult Function(CoachProgramStateDeleted value)? deleted,
    required TResult orElse(),
  }) {
    if (updated != null) {
      return updated(this);
    }
    return orElse();
  }
}

abstract class CoachProgramStateUpdated implements CoachProgramState {
  const factory CoachProgramStateUpdated(final ProgramModel program) =
      _$CoachProgramStateUpdatedImpl;

  ProgramModel get program;

  /// Create a copy of CoachProgramState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CoachProgramStateUpdatedImplCopyWith<_$CoachProgramStateUpdatedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CoachProgramStateDeletedImplCopyWith<$Res> {
  factory _$$CoachProgramStateDeletedImplCopyWith(
          _$CoachProgramStateDeletedImpl value,
          $Res Function(_$CoachProgramStateDeletedImpl) then) =
      __$$CoachProgramStateDeletedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ProgramModel program});

  $ProgramModelCopyWith<$Res> get program;
}

/// @nodoc
class __$$CoachProgramStateDeletedImplCopyWithImpl<$Res>
    extends _$CoachProgramStateCopyWithImpl<$Res,
        _$CoachProgramStateDeletedImpl>
    implements _$$CoachProgramStateDeletedImplCopyWith<$Res> {
  __$$CoachProgramStateDeletedImplCopyWithImpl(
      _$CoachProgramStateDeletedImpl _value,
      $Res Function(_$CoachProgramStateDeletedImpl) _then)
      : super(_value, _then);

  /// Create a copy of CoachProgramState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? program = null,
  }) {
    return _then(_$CoachProgramStateDeletedImpl(
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

class _$CoachProgramStateDeletedImpl implements CoachProgramStateDeleted {
  const _$CoachProgramStateDeletedImpl(this.program);

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
            other is _$CoachProgramStateDeletedImpl &&
            (identical(other.program, program) || other.program == program));
  }

  @override
  int get hashCode => Object.hash(runtimeType, program);

  /// Create a copy of CoachProgramState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CoachProgramStateDeletedImplCopyWith<_$CoachProgramStateDeletedImpl>
      get copyWith => __$$CoachProgramStateDeletedImplCopyWithImpl<
          _$CoachProgramStateDeletedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            List<ProgramModel> programs, List<ProgramModel> filteredPrograms)
        loaded,
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
    TResult? Function(
            List<ProgramModel> programs, List<ProgramModel> filteredPrograms)?
        loaded,
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
    TResult Function(
            List<ProgramModel> programs, List<ProgramModel> filteredPrograms)?
        loaded,
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
    required TResult Function(CoachProgramStateInitial value) initial,
    required TResult Function(CoachProgramStateLoading value) loading,
    required TResult Function(CoachProgramStateLoaded value) loaded,
    required TResult Function(CoachProgramStateFailure value) failure,
    required TResult Function(CoachProgramStateCreated value) created,
    required TResult Function(CoachProgramStateUpdated value) updated,
    required TResult Function(CoachProgramStateDeleted value) deleted,
  }) {
    return deleted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CoachProgramStateInitial value)? initial,
    TResult? Function(CoachProgramStateLoading value)? loading,
    TResult? Function(CoachProgramStateLoaded value)? loaded,
    TResult? Function(CoachProgramStateFailure value)? failure,
    TResult? Function(CoachProgramStateCreated value)? created,
    TResult? Function(CoachProgramStateUpdated value)? updated,
    TResult? Function(CoachProgramStateDeleted value)? deleted,
  }) {
    return deleted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CoachProgramStateInitial value)? initial,
    TResult Function(CoachProgramStateLoading value)? loading,
    TResult Function(CoachProgramStateLoaded value)? loaded,
    TResult Function(CoachProgramStateFailure value)? failure,
    TResult Function(CoachProgramStateCreated value)? created,
    TResult Function(CoachProgramStateUpdated value)? updated,
    TResult Function(CoachProgramStateDeleted value)? deleted,
    required TResult orElse(),
  }) {
    if (deleted != null) {
      return deleted(this);
    }
    return orElse();
  }
}

abstract class CoachProgramStateDeleted implements CoachProgramState {
  const factory CoachProgramStateDeleted(final ProgramModel program) =
      _$CoachProgramStateDeletedImpl;

  ProgramModel get program;

  /// Create a copy of CoachProgramState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CoachProgramStateDeletedImplCopyWith<_$CoachProgramStateDeletedImpl>
      get copyWith => throw _privateConstructorUsedError;
}
