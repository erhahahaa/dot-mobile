// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bloc_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$BlocReadEvent<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int? id, String? query) get,
    required TResult Function(T? item) select,
    required TResult Function(String query) filter,
    required TResult Function(T item) append,
    required TResult Function(int id) remove,
    required TResult Function(dynamic params) getOne,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int? id, String? query)? get,
    TResult? Function(T? item)? select,
    TResult? Function(String query)? filter,
    TResult? Function(T item)? append,
    TResult? Function(int id)? remove,
    TResult? Function(dynamic params)? getOne,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int? id, String? query)? get,
    TResult Function(T? item)? select,
    TResult Function(String query)? filter,
    TResult Function(T item)? append,
    TResult Function(int id)? remove,
    TResult Function(dynamic params)? getOne,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BlocReadEventGet<T> value) get,
    required TResult Function(BlocReadEventSelect<T> value) select,
    required TResult Function(BlocReadEventFilter<T> value) filter,
    required TResult Function(BlocReadEventAppend<T> value) append,
    required TResult Function(BlocReadEventRemove<T> value) remove,
    required TResult Function(BlocReadEventGetOne<T> value) getOne,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BlocReadEventGet<T> value)? get,
    TResult? Function(BlocReadEventSelect<T> value)? select,
    TResult? Function(BlocReadEventFilter<T> value)? filter,
    TResult? Function(BlocReadEventAppend<T> value)? append,
    TResult? Function(BlocReadEventRemove<T> value)? remove,
    TResult? Function(BlocReadEventGetOne<T> value)? getOne,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BlocReadEventGet<T> value)? get,
    TResult Function(BlocReadEventSelect<T> value)? select,
    TResult Function(BlocReadEventFilter<T> value)? filter,
    TResult Function(BlocReadEventAppend<T> value)? append,
    TResult Function(BlocReadEventRemove<T> value)? remove,
    TResult Function(BlocReadEventGetOne<T> value)? getOne,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BlocReadEventCopyWith<T, $Res> {
  factory $BlocReadEventCopyWith(
          BlocReadEvent<T> value, $Res Function(BlocReadEvent<T>) then) =
      _$BlocReadEventCopyWithImpl<T, $Res, BlocReadEvent<T>>;
}

/// @nodoc
class _$BlocReadEventCopyWithImpl<T, $Res, $Val extends BlocReadEvent<T>>
    implements $BlocReadEventCopyWith<T, $Res> {
  _$BlocReadEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BlocReadEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$BlocReadEventGetImplCopyWith<T, $Res> {
  factory _$$BlocReadEventGetImplCopyWith(_$BlocReadEventGetImpl<T> value,
          $Res Function(_$BlocReadEventGetImpl<T>) then) =
      __$$BlocReadEventGetImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({int? id, String? query});
}

/// @nodoc
class __$$BlocReadEventGetImplCopyWithImpl<T, $Res>
    extends _$BlocReadEventCopyWithImpl<T, $Res, _$BlocReadEventGetImpl<T>>
    implements _$$BlocReadEventGetImplCopyWith<T, $Res> {
  __$$BlocReadEventGetImplCopyWithImpl(_$BlocReadEventGetImpl<T> _value,
      $Res Function(_$BlocReadEventGetImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of BlocReadEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? query = freezed,
  }) {
    return _then(_$BlocReadEventGetImpl<T>(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      query: freezed == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$BlocReadEventGetImpl<T> implements BlocReadEventGet<T> {
  const _$BlocReadEventGetImpl({this.id, this.query});

  @override
  final int? id;
  @override
  final String? query;

  @override
  String toString() {
    return 'BlocReadEvent<$T>.get(id: $id, query: $query)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BlocReadEventGetImpl<T> &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.query, query) || other.query == query));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, query);

  /// Create a copy of BlocReadEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BlocReadEventGetImplCopyWith<T, _$BlocReadEventGetImpl<T>> get copyWith =>
      __$$BlocReadEventGetImplCopyWithImpl<T, _$BlocReadEventGetImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int? id, String? query) get,
    required TResult Function(T? item) select,
    required TResult Function(String query) filter,
    required TResult Function(T item) append,
    required TResult Function(int id) remove,
    required TResult Function(dynamic params) getOne,
  }) {
    return get(id, query);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int? id, String? query)? get,
    TResult? Function(T? item)? select,
    TResult? Function(String query)? filter,
    TResult? Function(T item)? append,
    TResult? Function(int id)? remove,
    TResult? Function(dynamic params)? getOne,
  }) {
    return get?.call(id, query);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int? id, String? query)? get,
    TResult Function(T? item)? select,
    TResult Function(String query)? filter,
    TResult Function(T item)? append,
    TResult Function(int id)? remove,
    TResult Function(dynamic params)? getOne,
    required TResult orElse(),
  }) {
    if (get != null) {
      return get(id, query);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BlocReadEventGet<T> value) get,
    required TResult Function(BlocReadEventSelect<T> value) select,
    required TResult Function(BlocReadEventFilter<T> value) filter,
    required TResult Function(BlocReadEventAppend<T> value) append,
    required TResult Function(BlocReadEventRemove<T> value) remove,
    required TResult Function(BlocReadEventGetOne<T> value) getOne,
  }) {
    return get(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BlocReadEventGet<T> value)? get,
    TResult? Function(BlocReadEventSelect<T> value)? select,
    TResult? Function(BlocReadEventFilter<T> value)? filter,
    TResult? Function(BlocReadEventAppend<T> value)? append,
    TResult? Function(BlocReadEventRemove<T> value)? remove,
    TResult? Function(BlocReadEventGetOne<T> value)? getOne,
  }) {
    return get?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BlocReadEventGet<T> value)? get,
    TResult Function(BlocReadEventSelect<T> value)? select,
    TResult Function(BlocReadEventFilter<T> value)? filter,
    TResult Function(BlocReadEventAppend<T> value)? append,
    TResult Function(BlocReadEventRemove<T> value)? remove,
    TResult Function(BlocReadEventGetOne<T> value)? getOne,
    required TResult orElse(),
  }) {
    if (get != null) {
      return get(this);
    }
    return orElse();
  }
}

abstract class BlocReadEventGet<T> implements BlocReadEvent<T> {
  const factory BlocReadEventGet({final int? id, final String? query}) =
      _$BlocReadEventGetImpl<T>;

  int? get id;
  String? get query;

  /// Create a copy of BlocReadEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BlocReadEventGetImplCopyWith<T, _$BlocReadEventGetImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BlocReadEventSelectImplCopyWith<T, $Res> {
  factory _$$BlocReadEventSelectImplCopyWith(_$BlocReadEventSelectImpl<T> value,
          $Res Function(_$BlocReadEventSelectImpl<T>) then) =
      __$$BlocReadEventSelectImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({T? item});
}

/// @nodoc
class __$$BlocReadEventSelectImplCopyWithImpl<T, $Res>
    extends _$BlocReadEventCopyWithImpl<T, $Res, _$BlocReadEventSelectImpl<T>>
    implements _$$BlocReadEventSelectImplCopyWith<T, $Res> {
  __$$BlocReadEventSelectImplCopyWithImpl(_$BlocReadEventSelectImpl<T> _value,
      $Res Function(_$BlocReadEventSelectImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of BlocReadEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? item = freezed,
  }) {
    return _then(_$BlocReadEventSelectImpl<T>(
      freezed == item
          ? _value.item
          : item // ignore: cast_nullable_to_non_nullable
              as T?,
    ));
  }
}

/// @nodoc

class _$BlocReadEventSelectImpl<T> implements BlocReadEventSelect<T> {
  const _$BlocReadEventSelectImpl(this.item);

  @override
  final T? item;

  @override
  String toString() {
    return 'BlocReadEvent<$T>.select(item: $item)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BlocReadEventSelectImpl<T> &&
            const DeepCollectionEquality().equals(other.item, item));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(item));

  /// Create a copy of BlocReadEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BlocReadEventSelectImplCopyWith<T, _$BlocReadEventSelectImpl<T>>
      get copyWith => __$$BlocReadEventSelectImplCopyWithImpl<T,
          _$BlocReadEventSelectImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int? id, String? query) get,
    required TResult Function(T? item) select,
    required TResult Function(String query) filter,
    required TResult Function(T item) append,
    required TResult Function(int id) remove,
    required TResult Function(dynamic params) getOne,
  }) {
    return select(item);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int? id, String? query)? get,
    TResult? Function(T? item)? select,
    TResult? Function(String query)? filter,
    TResult? Function(T item)? append,
    TResult? Function(int id)? remove,
    TResult? Function(dynamic params)? getOne,
  }) {
    return select?.call(item);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int? id, String? query)? get,
    TResult Function(T? item)? select,
    TResult Function(String query)? filter,
    TResult Function(T item)? append,
    TResult Function(int id)? remove,
    TResult Function(dynamic params)? getOne,
    required TResult orElse(),
  }) {
    if (select != null) {
      return select(item);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BlocReadEventGet<T> value) get,
    required TResult Function(BlocReadEventSelect<T> value) select,
    required TResult Function(BlocReadEventFilter<T> value) filter,
    required TResult Function(BlocReadEventAppend<T> value) append,
    required TResult Function(BlocReadEventRemove<T> value) remove,
    required TResult Function(BlocReadEventGetOne<T> value) getOne,
  }) {
    return select(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BlocReadEventGet<T> value)? get,
    TResult? Function(BlocReadEventSelect<T> value)? select,
    TResult? Function(BlocReadEventFilter<T> value)? filter,
    TResult? Function(BlocReadEventAppend<T> value)? append,
    TResult? Function(BlocReadEventRemove<T> value)? remove,
    TResult? Function(BlocReadEventGetOne<T> value)? getOne,
  }) {
    return select?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BlocReadEventGet<T> value)? get,
    TResult Function(BlocReadEventSelect<T> value)? select,
    TResult Function(BlocReadEventFilter<T> value)? filter,
    TResult Function(BlocReadEventAppend<T> value)? append,
    TResult Function(BlocReadEventRemove<T> value)? remove,
    TResult Function(BlocReadEventGetOne<T> value)? getOne,
    required TResult orElse(),
  }) {
    if (select != null) {
      return select(this);
    }
    return orElse();
  }
}

abstract class BlocReadEventSelect<T> implements BlocReadEvent<T> {
  const factory BlocReadEventSelect(final T? item) =
      _$BlocReadEventSelectImpl<T>;

  T? get item;

  /// Create a copy of BlocReadEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BlocReadEventSelectImplCopyWith<T, _$BlocReadEventSelectImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BlocReadEventFilterImplCopyWith<T, $Res> {
  factory _$$BlocReadEventFilterImplCopyWith(_$BlocReadEventFilterImpl<T> value,
          $Res Function(_$BlocReadEventFilterImpl<T>) then) =
      __$$BlocReadEventFilterImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({String query});
}

/// @nodoc
class __$$BlocReadEventFilterImplCopyWithImpl<T, $Res>
    extends _$BlocReadEventCopyWithImpl<T, $Res, _$BlocReadEventFilterImpl<T>>
    implements _$$BlocReadEventFilterImplCopyWith<T, $Res> {
  __$$BlocReadEventFilterImplCopyWithImpl(_$BlocReadEventFilterImpl<T> _value,
      $Res Function(_$BlocReadEventFilterImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of BlocReadEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
  }) {
    return _then(_$BlocReadEventFilterImpl<T>(
      null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$BlocReadEventFilterImpl<T> implements BlocReadEventFilter<T> {
  const _$BlocReadEventFilterImpl(this.query);

  @override
  final String query;

  @override
  String toString() {
    return 'BlocReadEvent<$T>.filter(query: $query)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BlocReadEventFilterImpl<T> &&
            (identical(other.query, query) || other.query == query));
  }

  @override
  int get hashCode => Object.hash(runtimeType, query);

  /// Create a copy of BlocReadEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BlocReadEventFilterImplCopyWith<T, _$BlocReadEventFilterImpl<T>>
      get copyWith => __$$BlocReadEventFilterImplCopyWithImpl<T,
          _$BlocReadEventFilterImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int? id, String? query) get,
    required TResult Function(T? item) select,
    required TResult Function(String query) filter,
    required TResult Function(T item) append,
    required TResult Function(int id) remove,
    required TResult Function(dynamic params) getOne,
  }) {
    return filter(query);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int? id, String? query)? get,
    TResult? Function(T? item)? select,
    TResult? Function(String query)? filter,
    TResult? Function(T item)? append,
    TResult? Function(int id)? remove,
    TResult? Function(dynamic params)? getOne,
  }) {
    return filter?.call(query);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int? id, String? query)? get,
    TResult Function(T? item)? select,
    TResult Function(String query)? filter,
    TResult Function(T item)? append,
    TResult Function(int id)? remove,
    TResult Function(dynamic params)? getOne,
    required TResult orElse(),
  }) {
    if (filter != null) {
      return filter(query);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BlocReadEventGet<T> value) get,
    required TResult Function(BlocReadEventSelect<T> value) select,
    required TResult Function(BlocReadEventFilter<T> value) filter,
    required TResult Function(BlocReadEventAppend<T> value) append,
    required TResult Function(BlocReadEventRemove<T> value) remove,
    required TResult Function(BlocReadEventGetOne<T> value) getOne,
  }) {
    return filter(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BlocReadEventGet<T> value)? get,
    TResult? Function(BlocReadEventSelect<T> value)? select,
    TResult? Function(BlocReadEventFilter<T> value)? filter,
    TResult? Function(BlocReadEventAppend<T> value)? append,
    TResult? Function(BlocReadEventRemove<T> value)? remove,
    TResult? Function(BlocReadEventGetOne<T> value)? getOne,
  }) {
    return filter?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BlocReadEventGet<T> value)? get,
    TResult Function(BlocReadEventSelect<T> value)? select,
    TResult Function(BlocReadEventFilter<T> value)? filter,
    TResult Function(BlocReadEventAppend<T> value)? append,
    TResult Function(BlocReadEventRemove<T> value)? remove,
    TResult Function(BlocReadEventGetOne<T> value)? getOne,
    required TResult orElse(),
  }) {
    if (filter != null) {
      return filter(this);
    }
    return orElse();
  }
}

abstract class BlocReadEventFilter<T> implements BlocReadEvent<T> {
  const factory BlocReadEventFilter(final String query) =
      _$BlocReadEventFilterImpl<T>;

  String get query;

  /// Create a copy of BlocReadEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BlocReadEventFilterImplCopyWith<T, _$BlocReadEventFilterImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BlocReadEventAppendImplCopyWith<T, $Res> {
  factory _$$BlocReadEventAppendImplCopyWith(_$BlocReadEventAppendImpl<T> value,
          $Res Function(_$BlocReadEventAppendImpl<T>) then) =
      __$$BlocReadEventAppendImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({T item});
}

/// @nodoc
class __$$BlocReadEventAppendImplCopyWithImpl<T, $Res>
    extends _$BlocReadEventCopyWithImpl<T, $Res, _$BlocReadEventAppendImpl<T>>
    implements _$$BlocReadEventAppendImplCopyWith<T, $Res> {
  __$$BlocReadEventAppendImplCopyWithImpl(_$BlocReadEventAppendImpl<T> _value,
      $Res Function(_$BlocReadEventAppendImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of BlocReadEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? item = freezed,
  }) {
    return _then(_$BlocReadEventAppendImpl<T>(
      freezed == item
          ? _value.item
          : item // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$BlocReadEventAppendImpl<T> implements BlocReadEventAppend<T> {
  const _$BlocReadEventAppendImpl(this.item);

  @override
  final T item;

  @override
  String toString() {
    return 'BlocReadEvent<$T>.append(item: $item)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BlocReadEventAppendImpl<T> &&
            const DeepCollectionEquality().equals(other.item, item));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(item));

  /// Create a copy of BlocReadEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BlocReadEventAppendImplCopyWith<T, _$BlocReadEventAppendImpl<T>>
      get copyWith => __$$BlocReadEventAppendImplCopyWithImpl<T,
          _$BlocReadEventAppendImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int? id, String? query) get,
    required TResult Function(T? item) select,
    required TResult Function(String query) filter,
    required TResult Function(T item) append,
    required TResult Function(int id) remove,
    required TResult Function(dynamic params) getOne,
  }) {
    return append(item);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int? id, String? query)? get,
    TResult? Function(T? item)? select,
    TResult? Function(String query)? filter,
    TResult? Function(T item)? append,
    TResult? Function(int id)? remove,
    TResult? Function(dynamic params)? getOne,
  }) {
    return append?.call(item);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int? id, String? query)? get,
    TResult Function(T? item)? select,
    TResult Function(String query)? filter,
    TResult Function(T item)? append,
    TResult Function(int id)? remove,
    TResult Function(dynamic params)? getOne,
    required TResult orElse(),
  }) {
    if (append != null) {
      return append(item);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BlocReadEventGet<T> value) get,
    required TResult Function(BlocReadEventSelect<T> value) select,
    required TResult Function(BlocReadEventFilter<T> value) filter,
    required TResult Function(BlocReadEventAppend<T> value) append,
    required TResult Function(BlocReadEventRemove<T> value) remove,
    required TResult Function(BlocReadEventGetOne<T> value) getOne,
  }) {
    return append(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BlocReadEventGet<T> value)? get,
    TResult? Function(BlocReadEventSelect<T> value)? select,
    TResult? Function(BlocReadEventFilter<T> value)? filter,
    TResult? Function(BlocReadEventAppend<T> value)? append,
    TResult? Function(BlocReadEventRemove<T> value)? remove,
    TResult? Function(BlocReadEventGetOne<T> value)? getOne,
  }) {
    return append?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BlocReadEventGet<T> value)? get,
    TResult Function(BlocReadEventSelect<T> value)? select,
    TResult Function(BlocReadEventFilter<T> value)? filter,
    TResult Function(BlocReadEventAppend<T> value)? append,
    TResult Function(BlocReadEventRemove<T> value)? remove,
    TResult Function(BlocReadEventGetOne<T> value)? getOne,
    required TResult orElse(),
  }) {
    if (append != null) {
      return append(this);
    }
    return orElse();
  }
}

abstract class BlocReadEventAppend<T> implements BlocReadEvent<T> {
  const factory BlocReadEventAppend(final T item) =
      _$BlocReadEventAppendImpl<T>;

  T get item;

  /// Create a copy of BlocReadEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BlocReadEventAppendImplCopyWith<T, _$BlocReadEventAppendImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BlocReadEventRemoveImplCopyWith<T, $Res> {
  factory _$$BlocReadEventRemoveImplCopyWith(_$BlocReadEventRemoveImpl<T> value,
          $Res Function(_$BlocReadEventRemoveImpl<T>) then) =
      __$$BlocReadEventRemoveImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({int id});
}

/// @nodoc
class __$$BlocReadEventRemoveImplCopyWithImpl<T, $Res>
    extends _$BlocReadEventCopyWithImpl<T, $Res, _$BlocReadEventRemoveImpl<T>>
    implements _$$BlocReadEventRemoveImplCopyWith<T, $Res> {
  __$$BlocReadEventRemoveImplCopyWithImpl(_$BlocReadEventRemoveImpl<T> _value,
      $Res Function(_$BlocReadEventRemoveImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of BlocReadEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$BlocReadEventRemoveImpl<T>(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$BlocReadEventRemoveImpl<T> implements BlocReadEventRemove<T> {
  const _$BlocReadEventRemoveImpl(this.id);

  @override
  final int id;

  @override
  String toString() {
    return 'BlocReadEvent<$T>.remove(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BlocReadEventRemoveImpl<T> &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  /// Create a copy of BlocReadEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BlocReadEventRemoveImplCopyWith<T, _$BlocReadEventRemoveImpl<T>>
      get copyWith => __$$BlocReadEventRemoveImplCopyWithImpl<T,
          _$BlocReadEventRemoveImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int? id, String? query) get,
    required TResult Function(T? item) select,
    required TResult Function(String query) filter,
    required TResult Function(T item) append,
    required TResult Function(int id) remove,
    required TResult Function(dynamic params) getOne,
  }) {
    return remove(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int? id, String? query)? get,
    TResult? Function(T? item)? select,
    TResult? Function(String query)? filter,
    TResult? Function(T item)? append,
    TResult? Function(int id)? remove,
    TResult? Function(dynamic params)? getOne,
  }) {
    return remove?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int? id, String? query)? get,
    TResult Function(T? item)? select,
    TResult Function(String query)? filter,
    TResult Function(T item)? append,
    TResult Function(int id)? remove,
    TResult Function(dynamic params)? getOne,
    required TResult orElse(),
  }) {
    if (remove != null) {
      return remove(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BlocReadEventGet<T> value) get,
    required TResult Function(BlocReadEventSelect<T> value) select,
    required TResult Function(BlocReadEventFilter<T> value) filter,
    required TResult Function(BlocReadEventAppend<T> value) append,
    required TResult Function(BlocReadEventRemove<T> value) remove,
    required TResult Function(BlocReadEventGetOne<T> value) getOne,
  }) {
    return remove(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BlocReadEventGet<T> value)? get,
    TResult? Function(BlocReadEventSelect<T> value)? select,
    TResult? Function(BlocReadEventFilter<T> value)? filter,
    TResult? Function(BlocReadEventAppend<T> value)? append,
    TResult? Function(BlocReadEventRemove<T> value)? remove,
    TResult? Function(BlocReadEventGetOne<T> value)? getOne,
  }) {
    return remove?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BlocReadEventGet<T> value)? get,
    TResult Function(BlocReadEventSelect<T> value)? select,
    TResult Function(BlocReadEventFilter<T> value)? filter,
    TResult Function(BlocReadEventAppend<T> value)? append,
    TResult Function(BlocReadEventRemove<T> value)? remove,
    TResult Function(BlocReadEventGetOne<T> value)? getOne,
    required TResult orElse(),
  }) {
    if (remove != null) {
      return remove(this);
    }
    return orElse();
  }
}

abstract class BlocReadEventRemove<T> implements BlocReadEvent<T> {
  const factory BlocReadEventRemove(final int id) =
      _$BlocReadEventRemoveImpl<T>;

  int get id;

  /// Create a copy of BlocReadEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BlocReadEventRemoveImplCopyWith<T, _$BlocReadEventRemoveImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BlocReadEventGetOneImplCopyWith<T, $Res> {
  factory _$$BlocReadEventGetOneImplCopyWith(_$BlocReadEventGetOneImpl<T> value,
          $Res Function(_$BlocReadEventGetOneImpl<T>) then) =
      __$$BlocReadEventGetOneImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({dynamic params});
}

/// @nodoc
class __$$BlocReadEventGetOneImplCopyWithImpl<T, $Res>
    extends _$BlocReadEventCopyWithImpl<T, $Res, _$BlocReadEventGetOneImpl<T>>
    implements _$$BlocReadEventGetOneImplCopyWith<T, $Res> {
  __$$BlocReadEventGetOneImplCopyWithImpl(_$BlocReadEventGetOneImpl<T> _value,
      $Res Function(_$BlocReadEventGetOneImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of BlocReadEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? params = freezed,
  }) {
    return _then(_$BlocReadEventGetOneImpl<T>(
      freezed == params
          ? _value.params
          : params // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

class _$BlocReadEventGetOneImpl<T> implements BlocReadEventGetOne<T> {
  const _$BlocReadEventGetOneImpl(this.params);

  @override
  final dynamic params;

  @override
  String toString() {
    return 'BlocReadEvent<$T>.getOne(params: $params)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BlocReadEventGetOneImpl<T> &&
            const DeepCollectionEquality().equals(other.params, params));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(params));

  /// Create a copy of BlocReadEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BlocReadEventGetOneImplCopyWith<T, _$BlocReadEventGetOneImpl<T>>
      get copyWith => __$$BlocReadEventGetOneImplCopyWithImpl<T,
          _$BlocReadEventGetOneImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int? id, String? query) get,
    required TResult Function(T? item) select,
    required TResult Function(String query) filter,
    required TResult Function(T item) append,
    required TResult Function(int id) remove,
    required TResult Function(dynamic params) getOne,
  }) {
    return getOne(params);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int? id, String? query)? get,
    TResult? Function(T? item)? select,
    TResult? Function(String query)? filter,
    TResult? Function(T item)? append,
    TResult? Function(int id)? remove,
    TResult? Function(dynamic params)? getOne,
  }) {
    return getOne?.call(params);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int? id, String? query)? get,
    TResult Function(T? item)? select,
    TResult Function(String query)? filter,
    TResult Function(T item)? append,
    TResult Function(int id)? remove,
    TResult Function(dynamic params)? getOne,
    required TResult orElse(),
  }) {
    if (getOne != null) {
      return getOne(params);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BlocReadEventGet<T> value) get,
    required TResult Function(BlocReadEventSelect<T> value) select,
    required TResult Function(BlocReadEventFilter<T> value) filter,
    required TResult Function(BlocReadEventAppend<T> value) append,
    required TResult Function(BlocReadEventRemove<T> value) remove,
    required TResult Function(BlocReadEventGetOne<T> value) getOne,
  }) {
    return getOne(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BlocReadEventGet<T> value)? get,
    TResult? Function(BlocReadEventSelect<T> value)? select,
    TResult? Function(BlocReadEventFilter<T> value)? filter,
    TResult? Function(BlocReadEventAppend<T> value)? append,
    TResult? Function(BlocReadEventRemove<T> value)? remove,
    TResult? Function(BlocReadEventGetOne<T> value)? getOne,
  }) {
    return getOne?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BlocReadEventGet<T> value)? get,
    TResult Function(BlocReadEventSelect<T> value)? select,
    TResult Function(BlocReadEventFilter<T> value)? filter,
    TResult Function(BlocReadEventAppend<T> value)? append,
    TResult Function(BlocReadEventRemove<T> value)? remove,
    TResult Function(BlocReadEventGetOne<T> value)? getOne,
    required TResult orElse(),
  }) {
    if (getOne != null) {
      return getOne(this);
    }
    return orElse();
  }
}

abstract class BlocReadEventGetOne<T> implements BlocReadEvent<T> {
  const factory BlocReadEventGetOne(final dynamic params) =
      _$BlocReadEventGetOneImpl<T>;

  dynamic get params;

  /// Create a copy of BlocReadEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BlocReadEventGetOneImplCopyWith<T, _$BlocReadEventGetOneImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$BlocWriteEvent {
  dynamic get params => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(dynamic params) create,
    required TResult Function(dynamic params) update,
    required TResult Function(dynamic params) delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(dynamic params)? create,
    TResult? Function(dynamic params)? update,
    TResult? Function(dynamic params)? delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(dynamic params)? create,
    TResult Function(dynamic params)? update,
    TResult Function(dynamic params)? delete,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BlocWriteEventCreate value) create,
    required TResult Function(BlocWriteEventUpdate value) update,
    required TResult Function(BlocWriteEventDelete value) delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BlocWriteEventCreate value)? create,
    TResult? Function(BlocWriteEventUpdate value)? update,
    TResult? Function(BlocWriteEventDelete value)? delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BlocWriteEventCreate value)? create,
    TResult Function(BlocWriteEventUpdate value)? update,
    TResult Function(BlocWriteEventDelete value)? delete,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of BlocWriteEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BlocWriteEventCopyWith<BlocWriteEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BlocWriteEventCopyWith<$Res> {
  factory $BlocWriteEventCopyWith(
          BlocWriteEvent value, $Res Function(BlocWriteEvent) then) =
      _$BlocWriteEventCopyWithImpl<$Res, BlocWriteEvent>;
  @useResult
  $Res call({dynamic params});
}

/// @nodoc
class _$BlocWriteEventCopyWithImpl<$Res, $Val extends BlocWriteEvent>
    implements $BlocWriteEventCopyWith<$Res> {
  _$BlocWriteEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BlocWriteEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? params = freezed,
  }) {
    return _then(_value.copyWith(
      params: freezed == params
          ? _value.params
          : params // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BlocWriteEventCreateImplCopyWith<$Res>
    implements $BlocWriteEventCopyWith<$Res> {
  factory _$$BlocWriteEventCreateImplCopyWith(_$BlocWriteEventCreateImpl value,
          $Res Function(_$BlocWriteEventCreateImpl) then) =
      __$$BlocWriteEventCreateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({dynamic params});
}

/// @nodoc
class __$$BlocWriteEventCreateImplCopyWithImpl<$Res>
    extends _$BlocWriteEventCopyWithImpl<$Res, _$BlocWriteEventCreateImpl>
    implements _$$BlocWriteEventCreateImplCopyWith<$Res> {
  __$$BlocWriteEventCreateImplCopyWithImpl(_$BlocWriteEventCreateImpl _value,
      $Res Function(_$BlocWriteEventCreateImpl) _then)
      : super(_value, _then);

  /// Create a copy of BlocWriteEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? params = freezed,
  }) {
    return _then(_$BlocWriteEventCreateImpl(
      freezed == params
          ? _value.params
          : params // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

class _$BlocWriteEventCreateImpl implements BlocWriteEventCreate {
  const _$BlocWriteEventCreateImpl(this.params);

  @override
  final dynamic params;

  @override
  String toString() {
    return 'BlocWriteEvent.create(params: $params)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BlocWriteEventCreateImpl &&
            const DeepCollectionEquality().equals(other.params, params));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(params));

  /// Create a copy of BlocWriteEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BlocWriteEventCreateImplCopyWith<_$BlocWriteEventCreateImpl>
      get copyWith =>
          __$$BlocWriteEventCreateImplCopyWithImpl<_$BlocWriteEventCreateImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(dynamic params) create,
    required TResult Function(dynamic params) update,
    required TResult Function(dynamic params) delete,
  }) {
    return create(params);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(dynamic params)? create,
    TResult? Function(dynamic params)? update,
    TResult? Function(dynamic params)? delete,
  }) {
    return create?.call(params);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(dynamic params)? create,
    TResult Function(dynamic params)? update,
    TResult Function(dynamic params)? delete,
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
    required TResult Function(BlocWriteEventCreate value) create,
    required TResult Function(BlocWriteEventUpdate value) update,
    required TResult Function(BlocWriteEventDelete value) delete,
  }) {
    return create(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BlocWriteEventCreate value)? create,
    TResult? Function(BlocWriteEventUpdate value)? update,
    TResult? Function(BlocWriteEventDelete value)? delete,
  }) {
    return create?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BlocWriteEventCreate value)? create,
    TResult Function(BlocWriteEventUpdate value)? update,
    TResult Function(BlocWriteEventDelete value)? delete,
    required TResult orElse(),
  }) {
    if (create != null) {
      return create(this);
    }
    return orElse();
  }
}

abstract class BlocWriteEventCreate implements BlocWriteEvent {
  const factory BlocWriteEventCreate(final dynamic params) =
      _$BlocWriteEventCreateImpl;

  @override
  dynamic get params;

  /// Create a copy of BlocWriteEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BlocWriteEventCreateImplCopyWith<_$BlocWriteEventCreateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BlocWriteEventUpdateImplCopyWith<$Res>
    implements $BlocWriteEventCopyWith<$Res> {
  factory _$$BlocWriteEventUpdateImplCopyWith(_$BlocWriteEventUpdateImpl value,
          $Res Function(_$BlocWriteEventUpdateImpl) then) =
      __$$BlocWriteEventUpdateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({dynamic params});
}

/// @nodoc
class __$$BlocWriteEventUpdateImplCopyWithImpl<$Res>
    extends _$BlocWriteEventCopyWithImpl<$Res, _$BlocWriteEventUpdateImpl>
    implements _$$BlocWriteEventUpdateImplCopyWith<$Res> {
  __$$BlocWriteEventUpdateImplCopyWithImpl(_$BlocWriteEventUpdateImpl _value,
      $Res Function(_$BlocWriteEventUpdateImpl) _then)
      : super(_value, _then);

  /// Create a copy of BlocWriteEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? params = freezed,
  }) {
    return _then(_$BlocWriteEventUpdateImpl(
      freezed == params
          ? _value.params
          : params // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

class _$BlocWriteEventUpdateImpl implements BlocWriteEventUpdate {
  const _$BlocWriteEventUpdateImpl(this.params);

  @override
  final dynamic params;

  @override
  String toString() {
    return 'BlocWriteEvent.update(params: $params)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BlocWriteEventUpdateImpl &&
            const DeepCollectionEquality().equals(other.params, params));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(params));

  /// Create a copy of BlocWriteEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BlocWriteEventUpdateImplCopyWith<_$BlocWriteEventUpdateImpl>
      get copyWith =>
          __$$BlocWriteEventUpdateImplCopyWithImpl<_$BlocWriteEventUpdateImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(dynamic params) create,
    required TResult Function(dynamic params) update,
    required TResult Function(dynamic params) delete,
  }) {
    return update(params);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(dynamic params)? create,
    TResult? Function(dynamic params)? update,
    TResult? Function(dynamic params)? delete,
  }) {
    return update?.call(params);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(dynamic params)? create,
    TResult Function(dynamic params)? update,
    TResult Function(dynamic params)? delete,
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
    required TResult Function(BlocWriteEventCreate value) create,
    required TResult Function(BlocWriteEventUpdate value) update,
    required TResult Function(BlocWriteEventDelete value) delete,
  }) {
    return update(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BlocWriteEventCreate value)? create,
    TResult? Function(BlocWriteEventUpdate value)? update,
    TResult? Function(BlocWriteEventDelete value)? delete,
  }) {
    return update?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BlocWriteEventCreate value)? create,
    TResult Function(BlocWriteEventUpdate value)? update,
    TResult Function(BlocWriteEventDelete value)? delete,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(this);
    }
    return orElse();
  }
}

abstract class BlocWriteEventUpdate implements BlocWriteEvent {
  const factory BlocWriteEventUpdate(final dynamic params) =
      _$BlocWriteEventUpdateImpl;

  @override
  dynamic get params;

  /// Create a copy of BlocWriteEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BlocWriteEventUpdateImplCopyWith<_$BlocWriteEventUpdateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BlocWriteEventDeleteImplCopyWith<$Res>
    implements $BlocWriteEventCopyWith<$Res> {
  factory _$$BlocWriteEventDeleteImplCopyWith(_$BlocWriteEventDeleteImpl value,
          $Res Function(_$BlocWriteEventDeleteImpl) then) =
      __$$BlocWriteEventDeleteImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({dynamic params});
}

/// @nodoc
class __$$BlocWriteEventDeleteImplCopyWithImpl<$Res>
    extends _$BlocWriteEventCopyWithImpl<$Res, _$BlocWriteEventDeleteImpl>
    implements _$$BlocWriteEventDeleteImplCopyWith<$Res> {
  __$$BlocWriteEventDeleteImplCopyWithImpl(_$BlocWriteEventDeleteImpl _value,
      $Res Function(_$BlocWriteEventDeleteImpl) _then)
      : super(_value, _then);

  /// Create a copy of BlocWriteEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? params = freezed,
  }) {
    return _then(_$BlocWriteEventDeleteImpl(
      freezed == params
          ? _value.params
          : params // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

class _$BlocWriteEventDeleteImpl implements BlocWriteEventDelete {
  const _$BlocWriteEventDeleteImpl(this.params);

  @override
  final dynamic params;

  @override
  String toString() {
    return 'BlocWriteEvent.delete(params: $params)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BlocWriteEventDeleteImpl &&
            const DeepCollectionEquality().equals(other.params, params));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(params));

  /// Create a copy of BlocWriteEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BlocWriteEventDeleteImplCopyWith<_$BlocWriteEventDeleteImpl>
      get copyWith =>
          __$$BlocWriteEventDeleteImplCopyWithImpl<_$BlocWriteEventDeleteImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(dynamic params) create,
    required TResult Function(dynamic params) update,
    required TResult Function(dynamic params) delete,
  }) {
    return delete(params);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(dynamic params)? create,
    TResult? Function(dynamic params)? update,
    TResult? Function(dynamic params)? delete,
  }) {
    return delete?.call(params);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(dynamic params)? create,
    TResult Function(dynamic params)? update,
    TResult Function(dynamic params)? delete,
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
    required TResult Function(BlocWriteEventCreate value) create,
    required TResult Function(BlocWriteEventUpdate value) update,
    required TResult Function(BlocWriteEventDelete value) delete,
  }) {
    return delete(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BlocWriteEventCreate value)? create,
    TResult? Function(BlocWriteEventUpdate value)? update,
    TResult? Function(BlocWriteEventDelete value)? delete,
  }) {
    return delete?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BlocWriteEventCreate value)? create,
    TResult Function(BlocWriteEventUpdate value)? update,
    TResult Function(BlocWriteEventDelete value)? delete,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete(this);
    }
    return orElse();
  }
}

abstract class BlocWriteEventDelete implements BlocWriteEvent {
  const factory BlocWriteEventDelete(final dynamic params) =
      _$BlocWriteEventDeleteImpl;

  @override
  dynamic get params;

  /// Create a copy of BlocWriteEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BlocWriteEventDeleteImplCopyWith<_$BlocWriteEventDeleteImpl>
      get copyWith => throw _privateConstructorUsedError;
}
