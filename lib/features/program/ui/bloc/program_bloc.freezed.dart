// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'program_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ProgramEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() clear,
    required TResult Function(GetAllProgramParams params) getPrograms,
    required TResult Function(ProgramModel program) selectProgram,
    required TResult Function(String query) filterPrograms,
    required TResult Function(CreateProgramParams params) create,
    required TResult Function(UpdateProgramParams params) update,
    required TResult Function(DeleteProgramParams params) delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? clear,
    TResult? Function(GetAllProgramParams params)? getPrograms,
    TResult? Function(ProgramModel program)? selectProgram,
    TResult? Function(String query)? filterPrograms,
    TResult? Function(CreateProgramParams params)? create,
    TResult? Function(UpdateProgramParams params)? update,
    TResult? Function(DeleteProgramParams params)? delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? clear,
    TResult Function(GetAllProgramParams params)? getPrograms,
    TResult Function(ProgramModel program)? selectProgram,
    TResult Function(String query)? filterPrograms,
    TResult Function(CreateProgramParams params)? create,
    TResult Function(UpdateProgramParams params)? update,
    TResult Function(DeleteProgramParams params)? delete,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProgramEventClear value) clear,
    required TResult Function(ProgramEventGetPrograms value) getPrograms,
    required TResult Function(ProgramEventSelectProgram value) selectProgram,
    required TResult Function(ProgramEventFilterPrograms value) filterPrograms,
    required TResult Function(ProgramEventCreate value) create,
    required TResult Function(ProgramEventUpdate value) update,
    required TResult Function(ProgramEventDelete value) delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProgramEventClear value)? clear,
    TResult? Function(ProgramEventGetPrograms value)? getPrograms,
    TResult? Function(ProgramEventSelectProgram value)? selectProgram,
    TResult? Function(ProgramEventFilterPrograms value)? filterPrograms,
    TResult? Function(ProgramEventCreate value)? create,
    TResult? Function(ProgramEventUpdate value)? update,
    TResult? Function(ProgramEventDelete value)? delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProgramEventClear value)? clear,
    TResult Function(ProgramEventGetPrograms value)? getPrograms,
    TResult Function(ProgramEventSelectProgram value)? selectProgram,
    TResult Function(ProgramEventFilterPrograms value)? filterPrograms,
    TResult Function(ProgramEventCreate value)? create,
    TResult Function(ProgramEventUpdate value)? update,
    TResult Function(ProgramEventDelete value)? delete,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProgramEventCopyWith<$Res> {
  factory $ProgramEventCopyWith(
          ProgramEvent value, $Res Function(ProgramEvent) then) =
      _$ProgramEventCopyWithImpl<$Res, ProgramEvent>;
}

/// @nodoc
class _$ProgramEventCopyWithImpl<$Res, $Val extends ProgramEvent>
    implements $ProgramEventCopyWith<$Res> {
  _$ProgramEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProgramEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$ProgramEventClearImplCopyWith<$Res> {
  factory _$$ProgramEventClearImplCopyWith(_$ProgramEventClearImpl value,
          $Res Function(_$ProgramEventClearImpl) then) =
      __$$ProgramEventClearImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ProgramEventClearImplCopyWithImpl<$Res>
    extends _$ProgramEventCopyWithImpl<$Res, _$ProgramEventClearImpl>
    implements _$$ProgramEventClearImplCopyWith<$Res> {
  __$$ProgramEventClearImplCopyWithImpl(_$ProgramEventClearImpl _value,
      $Res Function(_$ProgramEventClearImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProgramEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ProgramEventClearImpl implements ProgramEventClear {
  const _$ProgramEventClearImpl();

  @override
  String toString() {
    return 'ProgramEvent.clear()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ProgramEventClearImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() clear,
    required TResult Function(GetAllProgramParams params) getPrograms,
    required TResult Function(ProgramModel program) selectProgram,
    required TResult Function(String query) filterPrograms,
    required TResult Function(CreateProgramParams params) create,
    required TResult Function(UpdateProgramParams params) update,
    required TResult Function(DeleteProgramParams params) delete,
  }) {
    return clear();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? clear,
    TResult? Function(GetAllProgramParams params)? getPrograms,
    TResult? Function(ProgramModel program)? selectProgram,
    TResult? Function(String query)? filterPrograms,
    TResult? Function(CreateProgramParams params)? create,
    TResult? Function(UpdateProgramParams params)? update,
    TResult? Function(DeleteProgramParams params)? delete,
  }) {
    return clear?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? clear,
    TResult Function(GetAllProgramParams params)? getPrograms,
    TResult Function(ProgramModel program)? selectProgram,
    TResult Function(String query)? filterPrograms,
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
    required TResult Function(ProgramEventClear value) clear,
    required TResult Function(ProgramEventGetPrograms value) getPrograms,
    required TResult Function(ProgramEventSelectProgram value) selectProgram,
    required TResult Function(ProgramEventFilterPrograms value) filterPrograms,
    required TResult Function(ProgramEventCreate value) create,
    required TResult Function(ProgramEventUpdate value) update,
    required TResult Function(ProgramEventDelete value) delete,
  }) {
    return clear(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProgramEventClear value)? clear,
    TResult? Function(ProgramEventGetPrograms value)? getPrograms,
    TResult? Function(ProgramEventSelectProgram value)? selectProgram,
    TResult? Function(ProgramEventFilterPrograms value)? filterPrograms,
    TResult? Function(ProgramEventCreate value)? create,
    TResult? Function(ProgramEventUpdate value)? update,
    TResult? Function(ProgramEventDelete value)? delete,
  }) {
    return clear?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProgramEventClear value)? clear,
    TResult Function(ProgramEventGetPrograms value)? getPrograms,
    TResult Function(ProgramEventSelectProgram value)? selectProgram,
    TResult Function(ProgramEventFilterPrograms value)? filterPrograms,
    TResult Function(ProgramEventCreate value)? create,
    TResult Function(ProgramEventUpdate value)? update,
    TResult Function(ProgramEventDelete value)? delete,
    required TResult orElse(),
  }) {
    if (clear != null) {
      return clear(this);
    }
    return orElse();
  }
}

abstract class ProgramEventClear implements ProgramEvent {
  const factory ProgramEventClear() = _$ProgramEventClearImpl;
}

/// @nodoc
abstract class _$$ProgramEventGetProgramsImplCopyWith<$Res> {
  factory _$$ProgramEventGetProgramsImplCopyWith(
          _$ProgramEventGetProgramsImpl value,
          $Res Function(_$ProgramEventGetProgramsImpl) then) =
      __$$ProgramEventGetProgramsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({GetAllProgramParams params});

  $GetAllProgramParamsCopyWith<$Res> get params;
}

/// @nodoc
class __$$ProgramEventGetProgramsImplCopyWithImpl<$Res>
    extends _$ProgramEventCopyWithImpl<$Res, _$ProgramEventGetProgramsImpl>
    implements _$$ProgramEventGetProgramsImplCopyWith<$Res> {
  __$$ProgramEventGetProgramsImplCopyWithImpl(
      _$ProgramEventGetProgramsImpl _value,
      $Res Function(_$ProgramEventGetProgramsImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProgramEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? params = null,
  }) {
    return _then(_$ProgramEventGetProgramsImpl(
      null == params
          ? _value.params
          : params // ignore: cast_nullable_to_non_nullable
              as GetAllProgramParams,
    ));
  }

  /// Create a copy of ProgramEvent
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

class _$ProgramEventGetProgramsImpl implements ProgramEventGetPrograms {
  const _$ProgramEventGetProgramsImpl(this.params);

  @override
  final GetAllProgramParams params;

  @override
  String toString() {
    return 'ProgramEvent.getPrograms(params: $params)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProgramEventGetProgramsImpl &&
            (identical(other.params, params) || other.params == params));
  }

  @override
  int get hashCode => Object.hash(runtimeType, params);

  /// Create a copy of ProgramEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProgramEventGetProgramsImplCopyWith<_$ProgramEventGetProgramsImpl>
      get copyWith => __$$ProgramEventGetProgramsImplCopyWithImpl<
          _$ProgramEventGetProgramsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() clear,
    required TResult Function(GetAllProgramParams params) getPrograms,
    required TResult Function(ProgramModel program) selectProgram,
    required TResult Function(String query) filterPrograms,
    required TResult Function(CreateProgramParams params) create,
    required TResult Function(UpdateProgramParams params) update,
    required TResult Function(DeleteProgramParams params) delete,
  }) {
    return getPrograms(params);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? clear,
    TResult? Function(GetAllProgramParams params)? getPrograms,
    TResult? Function(ProgramModel program)? selectProgram,
    TResult? Function(String query)? filterPrograms,
    TResult? Function(CreateProgramParams params)? create,
    TResult? Function(UpdateProgramParams params)? update,
    TResult? Function(DeleteProgramParams params)? delete,
  }) {
    return getPrograms?.call(params);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? clear,
    TResult Function(GetAllProgramParams params)? getPrograms,
    TResult Function(ProgramModel program)? selectProgram,
    TResult Function(String query)? filterPrograms,
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
    required TResult Function(ProgramEventClear value) clear,
    required TResult Function(ProgramEventGetPrograms value) getPrograms,
    required TResult Function(ProgramEventSelectProgram value) selectProgram,
    required TResult Function(ProgramEventFilterPrograms value) filterPrograms,
    required TResult Function(ProgramEventCreate value) create,
    required TResult Function(ProgramEventUpdate value) update,
    required TResult Function(ProgramEventDelete value) delete,
  }) {
    return getPrograms(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProgramEventClear value)? clear,
    TResult? Function(ProgramEventGetPrograms value)? getPrograms,
    TResult? Function(ProgramEventSelectProgram value)? selectProgram,
    TResult? Function(ProgramEventFilterPrograms value)? filterPrograms,
    TResult? Function(ProgramEventCreate value)? create,
    TResult? Function(ProgramEventUpdate value)? update,
    TResult? Function(ProgramEventDelete value)? delete,
  }) {
    return getPrograms?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProgramEventClear value)? clear,
    TResult Function(ProgramEventGetPrograms value)? getPrograms,
    TResult Function(ProgramEventSelectProgram value)? selectProgram,
    TResult Function(ProgramEventFilterPrograms value)? filterPrograms,
    TResult Function(ProgramEventCreate value)? create,
    TResult Function(ProgramEventUpdate value)? update,
    TResult Function(ProgramEventDelete value)? delete,
    required TResult orElse(),
  }) {
    if (getPrograms != null) {
      return getPrograms(this);
    }
    return orElse();
  }
}

abstract class ProgramEventGetPrograms implements ProgramEvent {
  const factory ProgramEventGetPrograms(final GetAllProgramParams params) =
      _$ProgramEventGetProgramsImpl;

  GetAllProgramParams get params;

  /// Create a copy of ProgramEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProgramEventGetProgramsImplCopyWith<_$ProgramEventGetProgramsImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ProgramEventSelectProgramImplCopyWith<$Res> {
  factory _$$ProgramEventSelectProgramImplCopyWith(
          _$ProgramEventSelectProgramImpl value,
          $Res Function(_$ProgramEventSelectProgramImpl) then) =
      __$$ProgramEventSelectProgramImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ProgramModel program});

  $ProgramModelCopyWith<$Res> get program;
}

/// @nodoc
class __$$ProgramEventSelectProgramImplCopyWithImpl<$Res>
    extends _$ProgramEventCopyWithImpl<$Res, _$ProgramEventSelectProgramImpl>
    implements _$$ProgramEventSelectProgramImplCopyWith<$Res> {
  __$$ProgramEventSelectProgramImplCopyWithImpl(
      _$ProgramEventSelectProgramImpl _value,
      $Res Function(_$ProgramEventSelectProgramImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProgramEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? program = null,
  }) {
    return _then(_$ProgramEventSelectProgramImpl(
      null == program
          ? _value.program
          : program // ignore: cast_nullable_to_non_nullable
              as ProgramModel,
    ));
  }

  /// Create a copy of ProgramEvent
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

class _$ProgramEventSelectProgramImpl implements ProgramEventSelectProgram {
  const _$ProgramEventSelectProgramImpl(this.program);

  @override
  final ProgramModel program;

  @override
  String toString() {
    return 'ProgramEvent.selectProgram(program: $program)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProgramEventSelectProgramImpl &&
            (identical(other.program, program) || other.program == program));
  }

  @override
  int get hashCode => Object.hash(runtimeType, program);

  /// Create a copy of ProgramEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProgramEventSelectProgramImplCopyWith<_$ProgramEventSelectProgramImpl>
      get copyWith => __$$ProgramEventSelectProgramImplCopyWithImpl<
          _$ProgramEventSelectProgramImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() clear,
    required TResult Function(GetAllProgramParams params) getPrograms,
    required TResult Function(ProgramModel program) selectProgram,
    required TResult Function(String query) filterPrograms,
    required TResult Function(CreateProgramParams params) create,
    required TResult Function(UpdateProgramParams params) update,
    required TResult Function(DeleteProgramParams params) delete,
  }) {
    return selectProgram(program);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? clear,
    TResult? Function(GetAllProgramParams params)? getPrograms,
    TResult? Function(ProgramModel program)? selectProgram,
    TResult? Function(String query)? filterPrograms,
    TResult? Function(CreateProgramParams params)? create,
    TResult? Function(UpdateProgramParams params)? update,
    TResult? Function(DeleteProgramParams params)? delete,
  }) {
    return selectProgram?.call(program);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? clear,
    TResult Function(GetAllProgramParams params)? getPrograms,
    TResult Function(ProgramModel program)? selectProgram,
    TResult Function(String query)? filterPrograms,
    TResult Function(CreateProgramParams params)? create,
    TResult Function(UpdateProgramParams params)? update,
    TResult Function(DeleteProgramParams params)? delete,
    required TResult orElse(),
  }) {
    if (selectProgram != null) {
      return selectProgram(program);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProgramEventClear value) clear,
    required TResult Function(ProgramEventGetPrograms value) getPrograms,
    required TResult Function(ProgramEventSelectProgram value) selectProgram,
    required TResult Function(ProgramEventFilterPrograms value) filterPrograms,
    required TResult Function(ProgramEventCreate value) create,
    required TResult Function(ProgramEventUpdate value) update,
    required TResult Function(ProgramEventDelete value) delete,
  }) {
    return selectProgram(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProgramEventClear value)? clear,
    TResult? Function(ProgramEventGetPrograms value)? getPrograms,
    TResult? Function(ProgramEventSelectProgram value)? selectProgram,
    TResult? Function(ProgramEventFilterPrograms value)? filterPrograms,
    TResult? Function(ProgramEventCreate value)? create,
    TResult? Function(ProgramEventUpdate value)? update,
    TResult? Function(ProgramEventDelete value)? delete,
  }) {
    return selectProgram?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProgramEventClear value)? clear,
    TResult Function(ProgramEventGetPrograms value)? getPrograms,
    TResult Function(ProgramEventSelectProgram value)? selectProgram,
    TResult Function(ProgramEventFilterPrograms value)? filterPrograms,
    TResult Function(ProgramEventCreate value)? create,
    TResult Function(ProgramEventUpdate value)? update,
    TResult Function(ProgramEventDelete value)? delete,
    required TResult orElse(),
  }) {
    if (selectProgram != null) {
      return selectProgram(this);
    }
    return orElse();
  }
}

abstract class ProgramEventSelectProgram implements ProgramEvent {
  const factory ProgramEventSelectProgram(final ProgramModel program) =
      _$ProgramEventSelectProgramImpl;

  ProgramModel get program;

  /// Create a copy of ProgramEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProgramEventSelectProgramImplCopyWith<_$ProgramEventSelectProgramImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ProgramEventFilterProgramsImplCopyWith<$Res> {
  factory _$$ProgramEventFilterProgramsImplCopyWith(
          _$ProgramEventFilterProgramsImpl value,
          $Res Function(_$ProgramEventFilterProgramsImpl) then) =
      __$$ProgramEventFilterProgramsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String query});
}

/// @nodoc
class __$$ProgramEventFilterProgramsImplCopyWithImpl<$Res>
    extends _$ProgramEventCopyWithImpl<$Res, _$ProgramEventFilterProgramsImpl>
    implements _$$ProgramEventFilterProgramsImplCopyWith<$Res> {
  __$$ProgramEventFilterProgramsImplCopyWithImpl(
      _$ProgramEventFilterProgramsImpl _value,
      $Res Function(_$ProgramEventFilterProgramsImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProgramEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
  }) {
    return _then(_$ProgramEventFilterProgramsImpl(
      null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ProgramEventFilterProgramsImpl implements ProgramEventFilterPrograms {
  const _$ProgramEventFilterProgramsImpl(this.query);

  @override
  final String query;

  @override
  String toString() {
    return 'ProgramEvent.filterPrograms(query: $query)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProgramEventFilterProgramsImpl &&
            (identical(other.query, query) || other.query == query));
  }

  @override
  int get hashCode => Object.hash(runtimeType, query);

  /// Create a copy of ProgramEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProgramEventFilterProgramsImplCopyWith<_$ProgramEventFilterProgramsImpl>
      get copyWith => __$$ProgramEventFilterProgramsImplCopyWithImpl<
          _$ProgramEventFilterProgramsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() clear,
    required TResult Function(GetAllProgramParams params) getPrograms,
    required TResult Function(ProgramModel program) selectProgram,
    required TResult Function(String query) filterPrograms,
    required TResult Function(CreateProgramParams params) create,
    required TResult Function(UpdateProgramParams params) update,
    required TResult Function(DeleteProgramParams params) delete,
  }) {
    return filterPrograms(query);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? clear,
    TResult? Function(GetAllProgramParams params)? getPrograms,
    TResult? Function(ProgramModel program)? selectProgram,
    TResult? Function(String query)? filterPrograms,
    TResult? Function(CreateProgramParams params)? create,
    TResult? Function(UpdateProgramParams params)? update,
    TResult? Function(DeleteProgramParams params)? delete,
  }) {
    return filterPrograms?.call(query);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? clear,
    TResult Function(GetAllProgramParams params)? getPrograms,
    TResult Function(ProgramModel program)? selectProgram,
    TResult Function(String query)? filterPrograms,
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
    required TResult Function(ProgramEventClear value) clear,
    required TResult Function(ProgramEventGetPrograms value) getPrograms,
    required TResult Function(ProgramEventSelectProgram value) selectProgram,
    required TResult Function(ProgramEventFilterPrograms value) filterPrograms,
    required TResult Function(ProgramEventCreate value) create,
    required TResult Function(ProgramEventUpdate value) update,
    required TResult Function(ProgramEventDelete value) delete,
  }) {
    return filterPrograms(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProgramEventClear value)? clear,
    TResult? Function(ProgramEventGetPrograms value)? getPrograms,
    TResult? Function(ProgramEventSelectProgram value)? selectProgram,
    TResult? Function(ProgramEventFilterPrograms value)? filterPrograms,
    TResult? Function(ProgramEventCreate value)? create,
    TResult? Function(ProgramEventUpdate value)? update,
    TResult? Function(ProgramEventDelete value)? delete,
  }) {
    return filterPrograms?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProgramEventClear value)? clear,
    TResult Function(ProgramEventGetPrograms value)? getPrograms,
    TResult Function(ProgramEventSelectProgram value)? selectProgram,
    TResult Function(ProgramEventFilterPrograms value)? filterPrograms,
    TResult Function(ProgramEventCreate value)? create,
    TResult Function(ProgramEventUpdate value)? update,
    TResult Function(ProgramEventDelete value)? delete,
    required TResult orElse(),
  }) {
    if (filterPrograms != null) {
      return filterPrograms(this);
    }
    return orElse();
  }
}

abstract class ProgramEventFilterPrograms implements ProgramEvent {
  const factory ProgramEventFilterPrograms(final String query) =
      _$ProgramEventFilterProgramsImpl;

  String get query;

  /// Create a copy of ProgramEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProgramEventFilterProgramsImplCopyWith<_$ProgramEventFilterProgramsImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ProgramEventCreateImplCopyWith<$Res> {
  factory _$$ProgramEventCreateImplCopyWith(_$ProgramEventCreateImpl value,
          $Res Function(_$ProgramEventCreateImpl) then) =
      __$$ProgramEventCreateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({CreateProgramParams params});

  $CreateProgramParamsCopyWith<$Res> get params;
}

/// @nodoc
class __$$ProgramEventCreateImplCopyWithImpl<$Res>
    extends _$ProgramEventCopyWithImpl<$Res, _$ProgramEventCreateImpl>
    implements _$$ProgramEventCreateImplCopyWith<$Res> {
  __$$ProgramEventCreateImplCopyWithImpl(_$ProgramEventCreateImpl _value,
      $Res Function(_$ProgramEventCreateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProgramEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? params = null,
  }) {
    return _then(_$ProgramEventCreateImpl(
      null == params
          ? _value.params
          : params // ignore: cast_nullable_to_non_nullable
              as CreateProgramParams,
    ));
  }

  /// Create a copy of ProgramEvent
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

class _$ProgramEventCreateImpl implements ProgramEventCreate {
  const _$ProgramEventCreateImpl(this.params);

  @override
  final CreateProgramParams params;

  @override
  String toString() {
    return 'ProgramEvent.create(params: $params)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProgramEventCreateImpl &&
            (identical(other.params, params) || other.params == params));
  }

  @override
  int get hashCode => Object.hash(runtimeType, params);

  /// Create a copy of ProgramEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProgramEventCreateImplCopyWith<_$ProgramEventCreateImpl> get copyWith =>
      __$$ProgramEventCreateImplCopyWithImpl<_$ProgramEventCreateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() clear,
    required TResult Function(GetAllProgramParams params) getPrograms,
    required TResult Function(ProgramModel program) selectProgram,
    required TResult Function(String query) filterPrograms,
    required TResult Function(CreateProgramParams params) create,
    required TResult Function(UpdateProgramParams params) update,
    required TResult Function(DeleteProgramParams params) delete,
  }) {
    return create(params);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? clear,
    TResult? Function(GetAllProgramParams params)? getPrograms,
    TResult? Function(ProgramModel program)? selectProgram,
    TResult? Function(String query)? filterPrograms,
    TResult? Function(CreateProgramParams params)? create,
    TResult? Function(UpdateProgramParams params)? update,
    TResult? Function(DeleteProgramParams params)? delete,
  }) {
    return create?.call(params);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? clear,
    TResult Function(GetAllProgramParams params)? getPrograms,
    TResult Function(ProgramModel program)? selectProgram,
    TResult Function(String query)? filterPrograms,
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
    required TResult Function(ProgramEventClear value) clear,
    required TResult Function(ProgramEventGetPrograms value) getPrograms,
    required TResult Function(ProgramEventSelectProgram value) selectProgram,
    required TResult Function(ProgramEventFilterPrograms value) filterPrograms,
    required TResult Function(ProgramEventCreate value) create,
    required TResult Function(ProgramEventUpdate value) update,
    required TResult Function(ProgramEventDelete value) delete,
  }) {
    return create(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProgramEventClear value)? clear,
    TResult? Function(ProgramEventGetPrograms value)? getPrograms,
    TResult? Function(ProgramEventSelectProgram value)? selectProgram,
    TResult? Function(ProgramEventFilterPrograms value)? filterPrograms,
    TResult? Function(ProgramEventCreate value)? create,
    TResult? Function(ProgramEventUpdate value)? update,
    TResult? Function(ProgramEventDelete value)? delete,
  }) {
    return create?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProgramEventClear value)? clear,
    TResult Function(ProgramEventGetPrograms value)? getPrograms,
    TResult Function(ProgramEventSelectProgram value)? selectProgram,
    TResult Function(ProgramEventFilterPrograms value)? filterPrograms,
    TResult Function(ProgramEventCreate value)? create,
    TResult Function(ProgramEventUpdate value)? update,
    TResult Function(ProgramEventDelete value)? delete,
    required TResult orElse(),
  }) {
    if (create != null) {
      return create(this);
    }
    return orElse();
  }
}

abstract class ProgramEventCreate implements ProgramEvent {
  const factory ProgramEventCreate(final CreateProgramParams params) =
      _$ProgramEventCreateImpl;

  CreateProgramParams get params;

  /// Create a copy of ProgramEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProgramEventCreateImplCopyWith<_$ProgramEventCreateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ProgramEventUpdateImplCopyWith<$Res> {
  factory _$$ProgramEventUpdateImplCopyWith(_$ProgramEventUpdateImpl value,
          $Res Function(_$ProgramEventUpdateImpl) then) =
      __$$ProgramEventUpdateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({UpdateProgramParams params});

  $UpdateProgramParamsCopyWith<$Res> get params;
}

/// @nodoc
class __$$ProgramEventUpdateImplCopyWithImpl<$Res>
    extends _$ProgramEventCopyWithImpl<$Res, _$ProgramEventUpdateImpl>
    implements _$$ProgramEventUpdateImplCopyWith<$Res> {
  __$$ProgramEventUpdateImplCopyWithImpl(_$ProgramEventUpdateImpl _value,
      $Res Function(_$ProgramEventUpdateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProgramEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? params = null,
  }) {
    return _then(_$ProgramEventUpdateImpl(
      null == params
          ? _value.params
          : params // ignore: cast_nullable_to_non_nullable
              as UpdateProgramParams,
    ));
  }

  /// Create a copy of ProgramEvent
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

class _$ProgramEventUpdateImpl implements ProgramEventUpdate {
  const _$ProgramEventUpdateImpl(this.params);

  @override
  final UpdateProgramParams params;

  @override
  String toString() {
    return 'ProgramEvent.update(params: $params)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProgramEventUpdateImpl &&
            (identical(other.params, params) || other.params == params));
  }

  @override
  int get hashCode => Object.hash(runtimeType, params);

  /// Create a copy of ProgramEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProgramEventUpdateImplCopyWith<_$ProgramEventUpdateImpl> get copyWith =>
      __$$ProgramEventUpdateImplCopyWithImpl<_$ProgramEventUpdateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() clear,
    required TResult Function(GetAllProgramParams params) getPrograms,
    required TResult Function(ProgramModel program) selectProgram,
    required TResult Function(String query) filterPrograms,
    required TResult Function(CreateProgramParams params) create,
    required TResult Function(UpdateProgramParams params) update,
    required TResult Function(DeleteProgramParams params) delete,
  }) {
    return update(params);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? clear,
    TResult? Function(GetAllProgramParams params)? getPrograms,
    TResult? Function(ProgramModel program)? selectProgram,
    TResult? Function(String query)? filterPrograms,
    TResult? Function(CreateProgramParams params)? create,
    TResult? Function(UpdateProgramParams params)? update,
    TResult? Function(DeleteProgramParams params)? delete,
  }) {
    return update?.call(params);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? clear,
    TResult Function(GetAllProgramParams params)? getPrograms,
    TResult Function(ProgramModel program)? selectProgram,
    TResult Function(String query)? filterPrograms,
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
    required TResult Function(ProgramEventClear value) clear,
    required TResult Function(ProgramEventGetPrograms value) getPrograms,
    required TResult Function(ProgramEventSelectProgram value) selectProgram,
    required TResult Function(ProgramEventFilterPrograms value) filterPrograms,
    required TResult Function(ProgramEventCreate value) create,
    required TResult Function(ProgramEventUpdate value) update,
    required TResult Function(ProgramEventDelete value) delete,
  }) {
    return update(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProgramEventClear value)? clear,
    TResult? Function(ProgramEventGetPrograms value)? getPrograms,
    TResult? Function(ProgramEventSelectProgram value)? selectProgram,
    TResult? Function(ProgramEventFilterPrograms value)? filterPrograms,
    TResult? Function(ProgramEventCreate value)? create,
    TResult? Function(ProgramEventUpdate value)? update,
    TResult? Function(ProgramEventDelete value)? delete,
  }) {
    return update?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProgramEventClear value)? clear,
    TResult Function(ProgramEventGetPrograms value)? getPrograms,
    TResult Function(ProgramEventSelectProgram value)? selectProgram,
    TResult Function(ProgramEventFilterPrograms value)? filterPrograms,
    TResult Function(ProgramEventCreate value)? create,
    TResult Function(ProgramEventUpdate value)? update,
    TResult Function(ProgramEventDelete value)? delete,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(this);
    }
    return orElse();
  }
}

abstract class ProgramEventUpdate implements ProgramEvent {
  const factory ProgramEventUpdate(final UpdateProgramParams params) =
      _$ProgramEventUpdateImpl;

  UpdateProgramParams get params;

  /// Create a copy of ProgramEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProgramEventUpdateImplCopyWith<_$ProgramEventUpdateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ProgramEventDeleteImplCopyWith<$Res> {
  factory _$$ProgramEventDeleteImplCopyWith(_$ProgramEventDeleteImpl value,
          $Res Function(_$ProgramEventDeleteImpl) then) =
      __$$ProgramEventDeleteImplCopyWithImpl<$Res>;
  @useResult
  $Res call({DeleteProgramParams params});

  $DeleteProgramParamsCopyWith<$Res> get params;
}

/// @nodoc
class __$$ProgramEventDeleteImplCopyWithImpl<$Res>
    extends _$ProgramEventCopyWithImpl<$Res, _$ProgramEventDeleteImpl>
    implements _$$ProgramEventDeleteImplCopyWith<$Res> {
  __$$ProgramEventDeleteImplCopyWithImpl(_$ProgramEventDeleteImpl _value,
      $Res Function(_$ProgramEventDeleteImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProgramEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? params = null,
  }) {
    return _then(_$ProgramEventDeleteImpl(
      null == params
          ? _value.params
          : params // ignore: cast_nullable_to_non_nullable
              as DeleteProgramParams,
    ));
  }

  /// Create a copy of ProgramEvent
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

class _$ProgramEventDeleteImpl implements ProgramEventDelete {
  const _$ProgramEventDeleteImpl(this.params);

  @override
  final DeleteProgramParams params;

  @override
  String toString() {
    return 'ProgramEvent.delete(params: $params)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProgramEventDeleteImpl &&
            (identical(other.params, params) || other.params == params));
  }

  @override
  int get hashCode => Object.hash(runtimeType, params);

  /// Create a copy of ProgramEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProgramEventDeleteImplCopyWith<_$ProgramEventDeleteImpl> get copyWith =>
      __$$ProgramEventDeleteImplCopyWithImpl<_$ProgramEventDeleteImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() clear,
    required TResult Function(GetAllProgramParams params) getPrograms,
    required TResult Function(ProgramModel program) selectProgram,
    required TResult Function(String query) filterPrograms,
    required TResult Function(CreateProgramParams params) create,
    required TResult Function(UpdateProgramParams params) update,
    required TResult Function(DeleteProgramParams params) delete,
  }) {
    return delete(params);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? clear,
    TResult? Function(GetAllProgramParams params)? getPrograms,
    TResult? Function(ProgramModel program)? selectProgram,
    TResult? Function(String query)? filterPrograms,
    TResult? Function(CreateProgramParams params)? create,
    TResult? Function(UpdateProgramParams params)? update,
    TResult? Function(DeleteProgramParams params)? delete,
  }) {
    return delete?.call(params);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? clear,
    TResult Function(GetAllProgramParams params)? getPrograms,
    TResult Function(ProgramModel program)? selectProgram,
    TResult Function(String query)? filterPrograms,
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
    required TResult Function(ProgramEventClear value) clear,
    required TResult Function(ProgramEventGetPrograms value) getPrograms,
    required TResult Function(ProgramEventSelectProgram value) selectProgram,
    required TResult Function(ProgramEventFilterPrograms value) filterPrograms,
    required TResult Function(ProgramEventCreate value) create,
    required TResult Function(ProgramEventUpdate value) update,
    required TResult Function(ProgramEventDelete value) delete,
  }) {
    return delete(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProgramEventClear value)? clear,
    TResult? Function(ProgramEventGetPrograms value)? getPrograms,
    TResult? Function(ProgramEventSelectProgram value)? selectProgram,
    TResult? Function(ProgramEventFilterPrograms value)? filterPrograms,
    TResult? Function(ProgramEventCreate value)? create,
    TResult? Function(ProgramEventUpdate value)? update,
    TResult? Function(ProgramEventDelete value)? delete,
  }) {
    return delete?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProgramEventClear value)? clear,
    TResult Function(ProgramEventGetPrograms value)? getPrograms,
    TResult Function(ProgramEventSelectProgram value)? selectProgram,
    TResult Function(ProgramEventFilterPrograms value)? filterPrograms,
    TResult Function(ProgramEventCreate value)? create,
    TResult Function(ProgramEventUpdate value)? update,
    TResult Function(ProgramEventDelete value)? delete,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete(this);
    }
    return orElse();
  }
}

abstract class ProgramEventDelete implements ProgramEvent {
  const factory ProgramEventDelete(final DeleteProgramParams params) =
      _$ProgramEventDeleteImpl;

  DeleteProgramParams get params;

  /// Create a copy of ProgramEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProgramEventDeleteImplCopyWith<_$ProgramEventDeleteImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ProgramState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<ProgramModel> programs,
            List<ProgramModel> filteredPrograms, ProgramModel? selectedProgram)
        success,
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
    TResult? Function(List<ProgramModel> programs,
            List<ProgramModel> filteredPrograms, ProgramModel? selectedProgram)?
        success,
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
    TResult Function(List<ProgramModel> programs,
            List<ProgramModel> filteredPrograms, ProgramModel? selectedProgram)?
        success,
    TResult Function(String message)? failure,
    TResult Function(ProgramModel program)? created,
    TResult Function(ProgramModel program)? updated,
    TResult Function(ProgramModel program)? deleted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProgramStateInitial value) initial,
    required TResult Function(ProgramStateLoading value) loading,
    required TResult Function(ProgramStateSuccess value) success,
    required TResult Function(ProgramStateFailure value) failure,
    required TResult Function(ProgramStateCreated value) created,
    required TResult Function(ProgramStateUpdated value) updated,
    required TResult Function(ProgramStateDeleted value) deleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProgramStateInitial value)? initial,
    TResult? Function(ProgramStateLoading value)? loading,
    TResult? Function(ProgramStateSuccess value)? success,
    TResult? Function(ProgramStateFailure value)? failure,
    TResult? Function(ProgramStateCreated value)? created,
    TResult? Function(ProgramStateUpdated value)? updated,
    TResult? Function(ProgramStateDeleted value)? deleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProgramStateInitial value)? initial,
    TResult Function(ProgramStateLoading value)? loading,
    TResult Function(ProgramStateSuccess value)? success,
    TResult Function(ProgramStateFailure value)? failure,
    TResult Function(ProgramStateCreated value)? created,
    TResult Function(ProgramStateUpdated value)? updated,
    TResult Function(ProgramStateDeleted value)? deleted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProgramStateCopyWith<$Res> {
  factory $ProgramStateCopyWith(
          ProgramState value, $Res Function(ProgramState) then) =
      _$ProgramStateCopyWithImpl<$Res, ProgramState>;
}

/// @nodoc
class _$ProgramStateCopyWithImpl<$Res, $Val extends ProgramState>
    implements $ProgramStateCopyWith<$Res> {
  _$ProgramStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProgramState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$ProgramStateInitialImplCopyWith<$Res> {
  factory _$$ProgramStateInitialImplCopyWith(_$ProgramStateInitialImpl value,
          $Res Function(_$ProgramStateInitialImpl) then) =
      __$$ProgramStateInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ProgramStateInitialImplCopyWithImpl<$Res>
    extends _$ProgramStateCopyWithImpl<$Res, _$ProgramStateInitialImpl>
    implements _$$ProgramStateInitialImplCopyWith<$Res> {
  __$$ProgramStateInitialImplCopyWithImpl(_$ProgramStateInitialImpl _value,
      $Res Function(_$ProgramStateInitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProgramState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ProgramStateInitialImpl implements ProgramStateInitial {
  const _$ProgramStateInitialImpl();

  @override
  String toString() {
    return 'ProgramState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProgramStateInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<ProgramModel> programs,
            List<ProgramModel> filteredPrograms, ProgramModel? selectedProgram)
        success,
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
    TResult? Function(List<ProgramModel> programs,
            List<ProgramModel> filteredPrograms, ProgramModel? selectedProgram)?
        success,
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
    TResult Function(List<ProgramModel> programs,
            List<ProgramModel> filteredPrograms, ProgramModel? selectedProgram)?
        success,
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
    required TResult Function(ProgramStateInitial value) initial,
    required TResult Function(ProgramStateLoading value) loading,
    required TResult Function(ProgramStateSuccess value) success,
    required TResult Function(ProgramStateFailure value) failure,
    required TResult Function(ProgramStateCreated value) created,
    required TResult Function(ProgramStateUpdated value) updated,
    required TResult Function(ProgramStateDeleted value) deleted,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProgramStateInitial value)? initial,
    TResult? Function(ProgramStateLoading value)? loading,
    TResult? Function(ProgramStateSuccess value)? success,
    TResult? Function(ProgramStateFailure value)? failure,
    TResult? Function(ProgramStateCreated value)? created,
    TResult? Function(ProgramStateUpdated value)? updated,
    TResult? Function(ProgramStateDeleted value)? deleted,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProgramStateInitial value)? initial,
    TResult Function(ProgramStateLoading value)? loading,
    TResult Function(ProgramStateSuccess value)? success,
    TResult Function(ProgramStateFailure value)? failure,
    TResult Function(ProgramStateCreated value)? created,
    TResult Function(ProgramStateUpdated value)? updated,
    TResult Function(ProgramStateDeleted value)? deleted,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class ProgramStateInitial implements ProgramState {
  const factory ProgramStateInitial() = _$ProgramStateInitialImpl;
}

/// @nodoc
abstract class _$$ProgramStateLoadingImplCopyWith<$Res> {
  factory _$$ProgramStateLoadingImplCopyWith(_$ProgramStateLoadingImpl value,
          $Res Function(_$ProgramStateLoadingImpl) then) =
      __$$ProgramStateLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ProgramStateLoadingImplCopyWithImpl<$Res>
    extends _$ProgramStateCopyWithImpl<$Res, _$ProgramStateLoadingImpl>
    implements _$$ProgramStateLoadingImplCopyWith<$Res> {
  __$$ProgramStateLoadingImplCopyWithImpl(_$ProgramStateLoadingImpl _value,
      $Res Function(_$ProgramStateLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProgramState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ProgramStateLoadingImpl implements ProgramStateLoading {
  const _$ProgramStateLoadingImpl();

  @override
  String toString() {
    return 'ProgramState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProgramStateLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<ProgramModel> programs,
            List<ProgramModel> filteredPrograms, ProgramModel? selectedProgram)
        success,
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
    TResult? Function(List<ProgramModel> programs,
            List<ProgramModel> filteredPrograms, ProgramModel? selectedProgram)?
        success,
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
    TResult Function(List<ProgramModel> programs,
            List<ProgramModel> filteredPrograms, ProgramModel? selectedProgram)?
        success,
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
    required TResult Function(ProgramStateInitial value) initial,
    required TResult Function(ProgramStateLoading value) loading,
    required TResult Function(ProgramStateSuccess value) success,
    required TResult Function(ProgramStateFailure value) failure,
    required TResult Function(ProgramStateCreated value) created,
    required TResult Function(ProgramStateUpdated value) updated,
    required TResult Function(ProgramStateDeleted value) deleted,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProgramStateInitial value)? initial,
    TResult? Function(ProgramStateLoading value)? loading,
    TResult? Function(ProgramStateSuccess value)? success,
    TResult? Function(ProgramStateFailure value)? failure,
    TResult? Function(ProgramStateCreated value)? created,
    TResult? Function(ProgramStateUpdated value)? updated,
    TResult? Function(ProgramStateDeleted value)? deleted,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProgramStateInitial value)? initial,
    TResult Function(ProgramStateLoading value)? loading,
    TResult Function(ProgramStateSuccess value)? success,
    TResult Function(ProgramStateFailure value)? failure,
    TResult Function(ProgramStateCreated value)? created,
    TResult Function(ProgramStateUpdated value)? updated,
    TResult Function(ProgramStateDeleted value)? deleted,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class ProgramStateLoading implements ProgramState {
  const factory ProgramStateLoading() = _$ProgramStateLoadingImpl;
}

/// @nodoc
abstract class _$$ProgramStateSuccessImplCopyWith<$Res> {
  factory _$$ProgramStateSuccessImplCopyWith(_$ProgramStateSuccessImpl value,
          $Res Function(_$ProgramStateSuccessImpl) then) =
      __$$ProgramStateSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {List<ProgramModel> programs,
      List<ProgramModel> filteredPrograms,
      ProgramModel? selectedProgram});

  $ProgramModelCopyWith<$Res>? get selectedProgram;
}

/// @nodoc
class __$$ProgramStateSuccessImplCopyWithImpl<$Res>
    extends _$ProgramStateCopyWithImpl<$Res, _$ProgramStateSuccessImpl>
    implements _$$ProgramStateSuccessImplCopyWith<$Res> {
  __$$ProgramStateSuccessImplCopyWithImpl(_$ProgramStateSuccessImpl _value,
      $Res Function(_$ProgramStateSuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProgramState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? programs = null,
    Object? filteredPrograms = null,
    Object? selectedProgram = freezed,
  }) {
    return _then(_$ProgramStateSuccessImpl(
      programs: null == programs
          ? _value._programs
          : programs // ignore: cast_nullable_to_non_nullable
              as List<ProgramModel>,
      filteredPrograms: null == filteredPrograms
          ? _value._filteredPrograms
          : filteredPrograms // ignore: cast_nullable_to_non_nullable
              as List<ProgramModel>,
      selectedProgram: freezed == selectedProgram
          ? _value.selectedProgram
          : selectedProgram // ignore: cast_nullable_to_non_nullable
              as ProgramModel?,
    ));
  }

  /// Create a copy of ProgramState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProgramModelCopyWith<$Res>? get selectedProgram {
    if (_value.selectedProgram == null) {
      return null;
    }

    return $ProgramModelCopyWith<$Res>(_value.selectedProgram!, (value) {
      return _then(_value.copyWith(selectedProgram: value));
    });
  }
}

/// @nodoc

class _$ProgramStateSuccessImpl implements ProgramStateSuccess {
  const _$ProgramStateSuccessImpl(
      {required final List<ProgramModel> programs,
      required final List<ProgramModel> filteredPrograms,
      this.selectedProgram})
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
  final ProgramModel? selectedProgram;

  @override
  String toString() {
    return 'ProgramState.success(programs: $programs, filteredPrograms: $filteredPrograms, selectedProgram: $selectedProgram)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProgramStateSuccessImpl &&
            const DeepCollectionEquality().equals(other._programs, _programs) &&
            const DeepCollectionEquality()
                .equals(other._filteredPrograms, _filteredPrograms) &&
            (identical(other.selectedProgram, selectedProgram) ||
                other.selectedProgram == selectedProgram));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_programs),
      const DeepCollectionEquality().hash(_filteredPrograms),
      selectedProgram);

  /// Create a copy of ProgramState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProgramStateSuccessImplCopyWith<_$ProgramStateSuccessImpl> get copyWith =>
      __$$ProgramStateSuccessImplCopyWithImpl<_$ProgramStateSuccessImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<ProgramModel> programs,
            List<ProgramModel> filteredPrograms, ProgramModel? selectedProgram)
        success,
    required TResult Function(String message) failure,
    required TResult Function(ProgramModel program) created,
    required TResult Function(ProgramModel program) updated,
    required TResult Function(ProgramModel program) deleted,
  }) {
    return success(programs, filteredPrograms, selectedProgram);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<ProgramModel> programs,
            List<ProgramModel> filteredPrograms, ProgramModel? selectedProgram)?
        success,
    TResult? Function(String message)? failure,
    TResult? Function(ProgramModel program)? created,
    TResult? Function(ProgramModel program)? updated,
    TResult? Function(ProgramModel program)? deleted,
  }) {
    return success?.call(programs, filteredPrograms, selectedProgram);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ProgramModel> programs,
            List<ProgramModel> filteredPrograms, ProgramModel? selectedProgram)?
        success,
    TResult Function(String message)? failure,
    TResult Function(ProgramModel program)? created,
    TResult Function(ProgramModel program)? updated,
    TResult Function(ProgramModel program)? deleted,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(programs, filteredPrograms, selectedProgram);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProgramStateInitial value) initial,
    required TResult Function(ProgramStateLoading value) loading,
    required TResult Function(ProgramStateSuccess value) success,
    required TResult Function(ProgramStateFailure value) failure,
    required TResult Function(ProgramStateCreated value) created,
    required TResult Function(ProgramStateUpdated value) updated,
    required TResult Function(ProgramStateDeleted value) deleted,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProgramStateInitial value)? initial,
    TResult? Function(ProgramStateLoading value)? loading,
    TResult? Function(ProgramStateSuccess value)? success,
    TResult? Function(ProgramStateFailure value)? failure,
    TResult? Function(ProgramStateCreated value)? created,
    TResult? Function(ProgramStateUpdated value)? updated,
    TResult? Function(ProgramStateDeleted value)? deleted,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProgramStateInitial value)? initial,
    TResult Function(ProgramStateLoading value)? loading,
    TResult Function(ProgramStateSuccess value)? success,
    TResult Function(ProgramStateFailure value)? failure,
    TResult Function(ProgramStateCreated value)? created,
    TResult Function(ProgramStateUpdated value)? updated,
    TResult Function(ProgramStateDeleted value)? deleted,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class ProgramStateSuccess implements ProgramState {
  const factory ProgramStateSuccess(
      {required final List<ProgramModel> programs,
      required final List<ProgramModel> filteredPrograms,
      final ProgramModel? selectedProgram}) = _$ProgramStateSuccessImpl;

  List<ProgramModel> get programs;
  List<ProgramModel> get filteredPrograms;
  ProgramModel? get selectedProgram;

  /// Create a copy of ProgramState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProgramStateSuccessImplCopyWith<_$ProgramStateSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ProgramStateFailureImplCopyWith<$Res> {
  factory _$$ProgramStateFailureImplCopyWith(_$ProgramStateFailureImpl value,
          $Res Function(_$ProgramStateFailureImpl) then) =
      __$$ProgramStateFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ProgramStateFailureImplCopyWithImpl<$Res>
    extends _$ProgramStateCopyWithImpl<$Res, _$ProgramStateFailureImpl>
    implements _$$ProgramStateFailureImplCopyWith<$Res> {
  __$$ProgramStateFailureImplCopyWithImpl(_$ProgramStateFailureImpl _value,
      $Res Function(_$ProgramStateFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProgramState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ProgramStateFailureImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ProgramStateFailureImpl implements ProgramStateFailure {
  const _$ProgramStateFailureImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'ProgramState.failure(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProgramStateFailureImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of ProgramState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProgramStateFailureImplCopyWith<_$ProgramStateFailureImpl> get copyWith =>
      __$$ProgramStateFailureImplCopyWithImpl<_$ProgramStateFailureImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<ProgramModel> programs,
            List<ProgramModel> filteredPrograms, ProgramModel? selectedProgram)
        success,
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
    TResult? Function(List<ProgramModel> programs,
            List<ProgramModel> filteredPrograms, ProgramModel? selectedProgram)?
        success,
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
    TResult Function(List<ProgramModel> programs,
            List<ProgramModel> filteredPrograms, ProgramModel? selectedProgram)?
        success,
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
    required TResult Function(ProgramStateInitial value) initial,
    required TResult Function(ProgramStateLoading value) loading,
    required TResult Function(ProgramStateSuccess value) success,
    required TResult Function(ProgramStateFailure value) failure,
    required TResult Function(ProgramStateCreated value) created,
    required TResult Function(ProgramStateUpdated value) updated,
    required TResult Function(ProgramStateDeleted value) deleted,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProgramStateInitial value)? initial,
    TResult? Function(ProgramStateLoading value)? loading,
    TResult? Function(ProgramStateSuccess value)? success,
    TResult? Function(ProgramStateFailure value)? failure,
    TResult? Function(ProgramStateCreated value)? created,
    TResult? Function(ProgramStateUpdated value)? updated,
    TResult? Function(ProgramStateDeleted value)? deleted,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProgramStateInitial value)? initial,
    TResult Function(ProgramStateLoading value)? loading,
    TResult Function(ProgramStateSuccess value)? success,
    TResult Function(ProgramStateFailure value)? failure,
    TResult Function(ProgramStateCreated value)? created,
    TResult Function(ProgramStateUpdated value)? updated,
    TResult Function(ProgramStateDeleted value)? deleted,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class ProgramStateFailure implements ProgramState {
  const factory ProgramStateFailure(final String message) =
      _$ProgramStateFailureImpl;

  String get message;

  /// Create a copy of ProgramState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProgramStateFailureImplCopyWith<_$ProgramStateFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ProgramStateCreatedImplCopyWith<$Res> {
  factory _$$ProgramStateCreatedImplCopyWith(_$ProgramStateCreatedImpl value,
          $Res Function(_$ProgramStateCreatedImpl) then) =
      __$$ProgramStateCreatedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ProgramModel program});

  $ProgramModelCopyWith<$Res> get program;
}

/// @nodoc
class __$$ProgramStateCreatedImplCopyWithImpl<$Res>
    extends _$ProgramStateCopyWithImpl<$Res, _$ProgramStateCreatedImpl>
    implements _$$ProgramStateCreatedImplCopyWith<$Res> {
  __$$ProgramStateCreatedImplCopyWithImpl(_$ProgramStateCreatedImpl _value,
      $Res Function(_$ProgramStateCreatedImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProgramState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? program = null,
  }) {
    return _then(_$ProgramStateCreatedImpl(
      null == program
          ? _value.program
          : program // ignore: cast_nullable_to_non_nullable
              as ProgramModel,
    ));
  }

  /// Create a copy of ProgramState
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

class _$ProgramStateCreatedImpl implements ProgramStateCreated {
  const _$ProgramStateCreatedImpl(this.program);

  @override
  final ProgramModel program;

  @override
  String toString() {
    return 'ProgramState.created(program: $program)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProgramStateCreatedImpl &&
            (identical(other.program, program) || other.program == program));
  }

  @override
  int get hashCode => Object.hash(runtimeType, program);

  /// Create a copy of ProgramState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProgramStateCreatedImplCopyWith<_$ProgramStateCreatedImpl> get copyWith =>
      __$$ProgramStateCreatedImplCopyWithImpl<_$ProgramStateCreatedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<ProgramModel> programs,
            List<ProgramModel> filteredPrograms, ProgramModel? selectedProgram)
        success,
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
    TResult? Function(List<ProgramModel> programs,
            List<ProgramModel> filteredPrograms, ProgramModel? selectedProgram)?
        success,
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
    TResult Function(List<ProgramModel> programs,
            List<ProgramModel> filteredPrograms, ProgramModel? selectedProgram)?
        success,
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
    required TResult Function(ProgramStateInitial value) initial,
    required TResult Function(ProgramStateLoading value) loading,
    required TResult Function(ProgramStateSuccess value) success,
    required TResult Function(ProgramStateFailure value) failure,
    required TResult Function(ProgramStateCreated value) created,
    required TResult Function(ProgramStateUpdated value) updated,
    required TResult Function(ProgramStateDeleted value) deleted,
  }) {
    return created(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProgramStateInitial value)? initial,
    TResult? Function(ProgramStateLoading value)? loading,
    TResult? Function(ProgramStateSuccess value)? success,
    TResult? Function(ProgramStateFailure value)? failure,
    TResult? Function(ProgramStateCreated value)? created,
    TResult? Function(ProgramStateUpdated value)? updated,
    TResult? Function(ProgramStateDeleted value)? deleted,
  }) {
    return created?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProgramStateInitial value)? initial,
    TResult Function(ProgramStateLoading value)? loading,
    TResult Function(ProgramStateSuccess value)? success,
    TResult Function(ProgramStateFailure value)? failure,
    TResult Function(ProgramStateCreated value)? created,
    TResult Function(ProgramStateUpdated value)? updated,
    TResult Function(ProgramStateDeleted value)? deleted,
    required TResult orElse(),
  }) {
    if (created != null) {
      return created(this);
    }
    return orElse();
  }
}

abstract class ProgramStateCreated implements ProgramState {
  const factory ProgramStateCreated(final ProgramModel program) =
      _$ProgramStateCreatedImpl;

  ProgramModel get program;

  /// Create a copy of ProgramState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProgramStateCreatedImplCopyWith<_$ProgramStateCreatedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ProgramStateUpdatedImplCopyWith<$Res> {
  factory _$$ProgramStateUpdatedImplCopyWith(_$ProgramStateUpdatedImpl value,
          $Res Function(_$ProgramStateUpdatedImpl) then) =
      __$$ProgramStateUpdatedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ProgramModel program});

  $ProgramModelCopyWith<$Res> get program;
}

/// @nodoc
class __$$ProgramStateUpdatedImplCopyWithImpl<$Res>
    extends _$ProgramStateCopyWithImpl<$Res, _$ProgramStateUpdatedImpl>
    implements _$$ProgramStateUpdatedImplCopyWith<$Res> {
  __$$ProgramStateUpdatedImplCopyWithImpl(_$ProgramStateUpdatedImpl _value,
      $Res Function(_$ProgramStateUpdatedImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProgramState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? program = null,
  }) {
    return _then(_$ProgramStateUpdatedImpl(
      null == program
          ? _value.program
          : program // ignore: cast_nullable_to_non_nullable
              as ProgramModel,
    ));
  }

  /// Create a copy of ProgramState
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

class _$ProgramStateUpdatedImpl implements ProgramStateUpdated {
  const _$ProgramStateUpdatedImpl(this.program);

  @override
  final ProgramModel program;

  @override
  String toString() {
    return 'ProgramState.updated(program: $program)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProgramStateUpdatedImpl &&
            (identical(other.program, program) || other.program == program));
  }

  @override
  int get hashCode => Object.hash(runtimeType, program);

  /// Create a copy of ProgramState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProgramStateUpdatedImplCopyWith<_$ProgramStateUpdatedImpl> get copyWith =>
      __$$ProgramStateUpdatedImplCopyWithImpl<_$ProgramStateUpdatedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<ProgramModel> programs,
            List<ProgramModel> filteredPrograms, ProgramModel? selectedProgram)
        success,
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
    TResult? Function(List<ProgramModel> programs,
            List<ProgramModel> filteredPrograms, ProgramModel? selectedProgram)?
        success,
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
    TResult Function(List<ProgramModel> programs,
            List<ProgramModel> filteredPrograms, ProgramModel? selectedProgram)?
        success,
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
    required TResult Function(ProgramStateInitial value) initial,
    required TResult Function(ProgramStateLoading value) loading,
    required TResult Function(ProgramStateSuccess value) success,
    required TResult Function(ProgramStateFailure value) failure,
    required TResult Function(ProgramStateCreated value) created,
    required TResult Function(ProgramStateUpdated value) updated,
    required TResult Function(ProgramStateDeleted value) deleted,
  }) {
    return updated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProgramStateInitial value)? initial,
    TResult? Function(ProgramStateLoading value)? loading,
    TResult? Function(ProgramStateSuccess value)? success,
    TResult? Function(ProgramStateFailure value)? failure,
    TResult? Function(ProgramStateCreated value)? created,
    TResult? Function(ProgramStateUpdated value)? updated,
    TResult? Function(ProgramStateDeleted value)? deleted,
  }) {
    return updated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProgramStateInitial value)? initial,
    TResult Function(ProgramStateLoading value)? loading,
    TResult Function(ProgramStateSuccess value)? success,
    TResult Function(ProgramStateFailure value)? failure,
    TResult Function(ProgramStateCreated value)? created,
    TResult Function(ProgramStateUpdated value)? updated,
    TResult Function(ProgramStateDeleted value)? deleted,
    required TResult orElse(),
  }) {
    if (updated != null) {
      return updated(this);
    }
    return orElse();
  }
}

abstract class ProgramStateUpdated implements ProgramState {
  const factory ProgramStateUpdated(final ProgramModel program) =
      _$ProgramStateUpdatedImpl;

  ProgramModel get program;

  /// Create a copy of ProgramState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProgramStateUpdatedImplCopyWith<_$ProgramStateUpdatedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ProgramStateDeletedImplCopyWith<$Res> {
  factory _$$ProgramStateDeletedImplCopyWith(_$ProgramStateDeletedImpl value,
          $Res Function(_$ProgramStateDeletedImpl) then) =
      __$$ProgramStateDeletedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ProgramModel program});

  $ProgramModelCopyWith<$Res> get program;
}

/// @nodoc
class __$$ProgramStateDeletedImplCopyWithImpl<$Res>
    extends _$ProgramStateCopyWithImpl<$Res, _$ProgramStateDeletedImpl>
    implements _$$ProgramStateDeletedImplCopyWith<$Res> {
  __$$ProgramStateDeletedImplCopyWithImpl(_$ProgramStateDeletedImpl _value,
      $Res Function(_$ProgramStateDeletedImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProgramState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? program = null,
  }) {
    return _then(_$ProgramStateDeletedImpl(
      null == program
          ? _value.program
          : program // ignore: cast_nullable_to_non_nullable
              as ProgramModel,
    ));
  }

  /// Create a copy of ProgramState
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

class _$ProgramStateDeletedImpl implements ProgramStateDeleted {
  const _$ProgramStateDeletedImpl(this.program);

  @override
  final ProgramModel program;

  @override
  String toString() {
    return 'ProgramState.deleted(program: $program)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProgramStateDeletedImpl &&
            (identical(other.program, program) || other.program == program));
  }

  @override
  int get hashCode => Object.hash(runtimeType, program);

  /// Create a copy of ProgramState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProgramStateDeletedImplCopyWith<_$ProgramStateDeletedImpl> get copyWith =>
      __$$ProgramStateDeletedImplCopyWithImpl<_$ProgramStateDeletedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<ProgramModel> programs,
            List<ProgramModel> filteredPrograms, ProgramModel? selectedProgram)
        success,
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
    TResult? Function(List<ProgramModel> programs,
            List<ProgramModel> filteredPrograms, ProgramModel? selectedProgram)?
        success,
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
    TResult Function(List<ProgramModel> programs,
            List<ProgramModel> filteredPrograms, ProgramModel? selectedProgram)?
        success,
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
    required TResult Function(ProgramStateInitial value) initial,
    required TResult Function(ProgramStateLoading value) loading,
    required TResult Function(ProgramStateSuccess value) success,
    required TResult Function(ProgramStateFailure value) failure,
    required TResult Function(ProgramStateCreated value) created,
    required TResult Function(ProgramStateUpdated value) updated,
    required TResult Function(ProgramStateDeleted value) deleted,
  }) {
    return deleted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProgramStateInitial value)? initial,
    TResult? Function(ProgramStateLoading value)? loading,
    TResult? Function(ProgramStateSuccess value)? success,
    TResult? Function(ProgramStateFailure value)? failure,
    TResult? Function(ProgramStateCreated value)? created,
    TResult? Function(ProgramStateUpdated value)? updated,
    TResult? Function(ProgramStateDeleted value)? deleted,
  }) {
    return deleted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProgramStateInitial value)? initial,
    TResult Function(ProgramStateLoading value)? loading,
    TResult Function(ProgramStateSuccess value)? success,
    TResult Function(ProgramStateFailure value)? failure,
    TResult Function(ProgramStateCreated value)? created,
    TResult Function(ProgramStateUpdated value)? updated,
    TResult Function(ProgramStateDeleted value)? deleted,
    required TResult orElse(),
  }) {
    if (deleted != null) {
      return deleted(this);
    }
    return orElse();
  }
}

abstract class ProgramStateDeleted implements ProgramState {
  const factory ProgramStateDeleted(final ProgramModel program) =
      _$ProgramStateDeletedImpl;

  ProgramModel get program;

  /// Create a copy of ProgramState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProgramStateDeletedImplCopyWith<_$ProgramStateDeletedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
