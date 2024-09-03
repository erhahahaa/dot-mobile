// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bloc_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$BlocReadState<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(int? count, int? total) loading,
    required TResult Function(List<T> items, List<T> filteredItems, T? selected)
        success,
    required TResult Function(String message) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(int? count, int? total)? loading,
    TResult? Function(List<T> items, List<T> filteredItems, T? selected)?
        success,
    TResult? Function(String message)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int? count, int? total)? loading,
    TResult Function(List<T> items, List<T> filteredItems, T? selected)?
        success,
    TResult Function(String message)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BlocReadStateInitial<T> value) initial,
    required TResult Function(BlocReadStateLoading<T> value) loading,
    required TResult Function(BlocReadStateSuccess<T> value) success,
    required TResult Function(BlocReadStateFailure<T> value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BlocReadStateInitial<T> value)? initial,
    TResult? Function(BlocReadStateLoading<T> value)? loading,
    TResult? Function(BlocReadStateSuccess<T> value)? success,
    TResult? Function(BlocReadStateFailure<T> value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BlocReadStateInitial<T> value)? initial,
    TResult Function(BlocReadStateLoading<T> value)? loading,
    TResult Function(BlocReadStateSuccess<T> value)? success,
    TResult Function(BlocReadStateFailure<T> value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BlocReadStateCopyWith<T, $Res> {
  factory $BlocReadStateCopyWith(
          BlocReadState<T> value, $Res Function(BlocReadState<T>) then) =
      _$BlocReadStateCopyWithImpl<T, $Res, BlocReadState<T>>;
}

/// @nodoc
class _$BlocReadStateCopyWithImpl<T, $Res, $Val extends BlocReadState<T>>
    implements $BlocReadStateCopyWith<T, $Res> {
  _$BlocReadStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BlocReadState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$BlocReadStateInitialImplCopyWith<T, $Res> {
  factory _$$BlocReadStateInitialImplCopyWith(
          _$BlocReadStateInitialImpl<T> value,
          $Res Function(_$BlocReadStateInitialImpl<T>) then) =
      __$$BlocReadStateInitialImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$BlocReadStateInitialImplCopyWithImpl<T, $Res>
    extends _$BlocReadStateCopyWithImpl<T, $Res, _$BlocReadStateInitialImpl<T>>
    implements _$$BlocReadStateInitialImplCopyWith<T, $Res> {
  __$$BlocReadStateInitialImplCopyWithImpl(_$BlocReadStateInitialImpl<T> _value,
      $Res Function(_$BlocReadStateInitialImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of BlocReadState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$BlocReadStateInitialImpl<T> implements BlocReadStateInitial<T> {
  const _$BlocReadStateInitialImpl();

  @override
  String toString() {
    return 'BlocReadState<$T>.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BlocReadStateInitialImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(int? count, int? total) loading,
    required TResult Function(List<T> items, List<T> filteredItems, T? selected)
        success,
    required TResult Function(String message) failure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(int? count, int? total)? loading,
    TResult? Function(List<T> items, List<T> filteredItems, T? selected)?
        success,
    TResult? Function(String message)? failure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int? count, int? total)? loading,
    TResult Function(List<T> items, List<T> filteredItems, T? selected)?
        success,
    TResult Function(String message)? failure,
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
    required TResult Function(BlocReadStateInitial<T> value) initial,
    required TResult Function(BlocReadStateLoading<T> value) loading,
    required TResult Function(BlocReadStateSuccess<T> value) success,
    required TResult Function(BlocReadStateFailure<T> value) failure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BlocReadStateInitial<T> value)? initial,
    TResult? Function(BlocReadStateLoading<T> value)? loading,
    TResult? Function(BlocReadStateSuccess<T> value)? success,
    TResult? Function(BlocReadStateFailure<T> value)? failure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BlocReadStateInitial<T> value)? initial,
    TResult Function(BlocReadStateLoading<T> value)? loading,
    TResult Function(BlocReadStateSuccess<T> value)? success,
    TResult Function(BlocReadStateFailure<T> value)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class BlocReadStateInitial<T> implements BlocReadState<T> {
  const factory BlocReadStateInitial() = _$BlocReadStateInitialImpl<T>;
}

/// @nodoc
abstract class _$$BlocReadStateLoadingImplCopyWith<T, $Res> {
  factory _$$BlocReadStateLoadingImplCopyWith(
          _$BlocReadStateLoadingImpl<T> value,
          $Res Function(_$BlocReadStateLoadingImpl<T>) then) =
      __$$BlocReadStateLoadingImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({int? count, int? total});
}

/// @nodoc
class __$$BlocReadStateLoadingImplCopyWithImpl<T, $Res>
    extends _$BlocReadStateCopyWithImpl<T, $Res, _$BlocReadStateLoadingImpl<T>>
    implements _$$BlocReadStateLoadingImplCopyWith<T, $Res> {
  __$$BlocReadStateLoadingImplCopyWithImpl(_$BlocReadStateLoadingImpl<T> _value,
      $Res Function(_$BlocReadStateLoadingImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of BlocReadState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = freezed,
    Object? total = freezed,
  }) {
    return _then(_$BlocReadStateLoadingImpl<T>(
      count: freezed == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int?,
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$BlocReadStateLoadingImpl<T> implements BlocReadStateLoading<T> {
  const _$BlocReadStateLoadingImpl({this.count, this.total});

  @override
  final int? count;
  @override
  final int? total;

  @override
  String toString() {
    return 'BlocReadState<$T>.loading(count: $count, total: $total)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BlocReadStateLoadingImpl<T> &&
            (identical(other.count, count) || other.count == count) &&
            (identical(other.total, total) || other.total == total));
  }

  @override
  int get hashCode => Object.hash(runtimeType, count, total);

  /// Create a copy of BlocReadState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BlocReadStateLoadingImplCopyWith<T, _$BlocReadStateLoadingImpl<T>>
      get copyWith => __$$BlocReadStateLoadingImplCopyWithImpl<T,
          _$BlocReadStateLoadingImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(int? count, int? total) loading,
    required TResult Function(List<T> items, List<T> filteredItems, T? selected)
        success,
    required TResult Function(String message) failure,
  }) {
    return loading(count, total);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(int? count, int? total)? loading,
    TResult? Function(List<T> items, List<T> filteredItems, T? selected)?
        success,
    TResult? Function(String message)? failure,
  }) {
    return loading?.call(count, total);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int? count, int? total)? loading,
    TResult Function(List<T> items, List<T> filteredItems, T? selected)?
        success,
    TResult Function(String message)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(count, total);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BlocReadStateInitial<T> value) initial,
    required TResult Function(BlocReadStateLoading<T> value) loading,
    required TResult Function(BlocReadStateSuccess<T> value) success,
    required TResult Function(BlocReadStateFailure<T> value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BlocReadStateInitial<T> value)? initial,
    TResult? Function(BlocReadStateLoading<T> value)? loading,
    TResult? Function(BlocReadStateSuccess<T> value)? success,
    TResult? Function(BlocReadStateFailure<T> value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BlocReadStateInitial<T> value)? initial,
    TResult Function(BlocReadStateLoading<T> value)? loading,
    TResult Function(BlocReadStateSuccess<T> value)? success,
    TResult Function(BlocReadStateFailure<T> value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class BlocReadStateLoading<T> implements BlocReadState<T> {
  const factory BlocReadStateLoading({final int? count, final int? total}) =
      _$BlocReadStateLoadingImpl<T>;

  int? get count;
  int? get total;

  /// Create a copy of BlocReadState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BlocReadStateLoadingImplCopyWith<T, _$BlocReadStateLoadingImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BlocReadStateSuccessImplCopyWith<T, $Res> {
  factory _$$BlocReadStateSuccessImplCopyWith(
          _$BlocReadStateSuccessImpl<T> value,
          $Res Function(_$BlocReadStateSuccessImpl<T>) then) =
      __$$BlocReadStateSuccessImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({List<T> items, List<T> filteredItems, T? selected});
}

/// @nodoc
class __$$BlocReadStateSuccessImplCopyWithImpl<T, $Res>
    extends _$BlocReadStateCopyWithImpl<T, $Res, _$BlocReadStateSuccessImpl<T>>
    implements _$$BlocReadStateSuccessImplCopyWith<T, $Res> {
  __$$BlocReadStateSuccessImplCopyWithImpl(_$BlocReadStateSuccessImpl<T> _value,
      $Res Function(_$BlocReadStateSuccessImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of BlocReadState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
    Object? filteredItems = null,
    Object? selected = freezed,
  }) {
    return _then(_$BlocReadStateSuccessImpl<T>(
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<T>,
      filteredItems: null == filteredItems
          ? _value._filteredItems
          : filteredItems // ignore: cast_nullable_to_non_nullable
              as List<T>,
      selected: freezed == selected
          ? _value.selected
          : selected // ignore: cast_nullable_to_non_nullable
              as T?,
    ));
  }
}

/// @nodoc

class _$BlocReadStateSuccessImpl<T> implements BlocReadStateSuccess<T> {
  const _$BlocReadStateSuccessImpl(
      {final List<T> items = const [],
      final List<T> filteredItems = const [],
      this.selected})
      : _items = items,
        _filteredItems = filteredItems;

  final List<T> _items;
  @override
  @JsonKey()
  List<T> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  final List<T> _filteredItems;
  @override
  @JsonKey()
  List<T> get filteredItems {
    if (_filteredItems is EqualUnmodifiableListView) return _filteredItems;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_filteredItems);
  }

  @override
  final T? selected;

  @override
  String toString() {
    return 'BlocReadState<$T>.success(items: $items, filteredItems: $filteredItems, selected: $selected)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BlocReadStateSuccessImpl<T> &&
            const DeepCollectionEquality().equals(other._items, _items) &&
            const DeepCollectionEquality()
                .equals(other._filteredItems, _filteredItems) &&
            const DeepCollectionEquality().equals(other.selected, selected));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_items),
      const DeepCollectionEquality().hash(_filteredItems),
      const DeepCollectionEquality().hash(selected));

  /// Create a copy of BlocReadState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BlocReadStateSuccessImplCopyWith<T, _$BlocReadStateSuccessImpl<T>>
      get copyWith => __$$BlocReadStateSuccessImplCopyWithImpl<T,
          _$BlocReadStateSuccessImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(int? count, int? total) loading,
    required TResult Function(List<T> items, List<T> filteredItems, T? selected)
        success,
    required TResult Function(String message) failure,
  }) {
    return success(items, filteredItems, selected);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(int? count, int? total)? loading,
    TResult? Function(List<T> items, List<T> filteredItems, T? selected)?
        success,
    TResult? Function(String message)? failure,
  }) {
    return success?.call(items, filteredItems, selected);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int? count, int? total)? loading,
    TResult Function(List<T> items, List<T> filteredItems, T? selected)?
        success,
    TResult Function(String message)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(items, filteredItems, selected);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BlocReadStateInitial<T> value) initial,
    required TResult Function(BlocReadStateLoading<T> value) loading,
    required TResult Function(BlocReadStateSuccess<T> value) success,
    required TResult Function(BlocReadStateFailure<T> value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BlocReadStateInitial<T> value)? initial,
    TResult? Function(BlocReadStateLoading<T> value)? loading,
    TResult? Function(BlocReadStateSuccess<T> value)? success,
    TResult? Function(BlocReadStateFailure<T> value)? failure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BlocReadStateInitial<T> value)? initial,
    TResult Function(BlocReadStateLoading<T> value)? loading,
    TResult Function(BlocReadStateSuccess<T> value)? success,
    TResult Function(BlocReadStateFailure<T> value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class BlocReadStateSuccess<T> implements BlocReadState<T> {
  const factory BlocReadStateSuccess(
      {final List<T> items,
      final List<T> filteredItems,
      final T? selected}) = _$BlocReadStateSuccessImpl<T>;

  List<T> get items;
  List<T> get filteredItems;
  T? get selected;

  /// Create a copy of BlocReadState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BlocReadStateSuccessImplCopyWith<T, _$BlocReadStateSuccessImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BlocReadStateFailureImplCopyWith<T, $Res> {
  factory _$$BlocReadStateFailureImplCopyWith(
          _$BlocReadStateFailureImpl<T> value,
          $Res Function(_$BlocReadStateFailureImpl<T>) then) =
      __$$BlocReadStateFailureImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$BlocReadStateFailureImplCopyWithImpl<T, $Res>
    extends _$BlocReadStateCopyWithImpl<T, $Res, _$BlocReadStateFailureImpl<T>>
    implements _$$BlocReadStateFailureImplCopyWith<T, $Res> {
  __$$BlocReadStateFailureImplCopyWithImpl(_$BlocReadStateFailureImpl<T> _value,
      $Res Function(_$BlocReadStateFailureImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of BlocReadState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$BlocReadStateFailureImpl<T>(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$BlocReadStateFailureImpl<T> implements BlocReadStateFailure<T> {
  const _$BlocReadStateFailureImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'BlocReadState<$T>.failure(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BlocReadStateFailureImpl<T> &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of BlocReadState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BlocReadStateFailureImplCopyWith<T, _$BlocReadStateFailureImpl<T>>
      get copyWith => __$$BlocReadStateFailureImplCopyWithImpl<T,
          _$BlocReadStateFailureImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(int? count, int? total) loading,
    required TResult Function(List<T> items, List<T> filteredItems, T? selected)
        success,
    required TResult Function(String message) failure,
  }) {
    return failure(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(int? count, int? total)? loading,
    TResult? Function(List<T> items, List<T> filteredItems, T? selected)?
        success,
    TResult? Function(String message)? failure,
  }) {
    return failure?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int? count, int? total)? loading,
    TResult Function(List<T> items, List<T> filteredItems, T? selected)?
        success,
    TResult Function(String message)? failure,
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
    required TResult Function(BlocReadStateInitial<T> value) initial,
    required TResult Function(BlocReadStateLoading<T> value) loading,
    required TResult Function(BlocReadStateSuccess<T> value) success,
    required TResult Function(BlocReadStateFailure<T> value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BlocReadStateInitial<T> value)? initial,
    TResult? Function(BlocReadStateLoading<T> value)? loading,
    TResult? Function(BlocReadStateSuccess<T> value)? success,
    TResult? Function(BlocReadStateFailure<T> value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BlocReadStateInitial<T> value)? initial,
    TResult Function(BlocReadStateLoading<T> value)? loading,
    TResult Function(BlocReadStateSuccess<T> value)? success,
    TResult Function(BlocReadStateFailure<T> value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class BlocReadStateFailure<T> implements BlocReadState<T> {
  const factory BlocReadStateFailure(final String message) =
      _$BlocReadStateFailureImpl<T>;

  String get message;

  /// Create a copy of BlocReadState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BlocReadStateFailureImplCopyWith<T, _$BlocReadStateFailureImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$BlocWriteState<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(int? count, int? total) loading,
    required TResult Function(T item) success,
    required TResult Function(String message) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(int? count, int? total)? loading,
    TResult? Function(T item)? success,
    TResult? Function(String message)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int? count, int? total)? loading,
    TResult Function(T item)? success,
    TResult Function(String message)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BlocWriteStateInitial<T> value) initial,
    required TResult Function(BlocWriteStateLoading<T> value) loading,
    required TResult Function(BlocWriteStateSuccess<T> value) success,
    required TResult Function(BlocWriteStateFailure<T> value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BlocWriteStateInitial<T> value)? initial,
    TResult? Function(BlocWriteStateLoading<T> value)? loading,
    TResult? Function(BlocWriteStateSuccess<T> value)? success,
    TResult? Function(BlocWriteStateFailure<T> value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BlocWriteStateInitial<T> value)? initial,
    TResult Function(BlocWriteStateLoading<T> value)? loading,
    TResult Function(BlocWriteStateSuccess<T> value)? success,
    TResult Function(BlocWriteStateFailure<T> value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BlocWriteStateCopyWith<T, $Res> {
  factory $BlocWriteStateCopyWith(
          BlocWriteState<T> value, $Res Function(BlocWriteState<T>) then) =
      _$BlocWriteStateCopyWithImpl<T, $Res, BlocWriteState<T>>;
}

/// @nodoc
class _$BlocWriteStateCopyWithImpl<T, $Res, $Val extends BlocWriteState<T>>
    implements $BlocWriteStateCopyWith<T, $Res> {
  _$BlocWriteStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BlocWriteState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$BlocWriteStateInitialImplCopyWith<T, $Res> {
  factory _$$BlocWriteStateInitialImplCopyWith(
          _$BlocWriteStateInitialImpl<T> value,
          $Res Function(_$BlocWriteStateInitialImpl<T>) then) =
      __$$BlocWriteStateInitialImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$BlocWriteStateInitialImplCopyWithImpl<T, $Res>
    extends _$BlocWriteStateCopyWithImpl<T, $Res,
        _$BlocWriteStateInitialImpl<T>>
    implements _$$BlocWriteStateInitialImplCopyWith<T, $Res> {
  __$$BlocWriteStateInitialImplCopyWithImpl(
      _$BlocWriteStateInitialImpl<T> _value,
      $Res Function(_$BlocWriteStateInitialImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of BlocWriteState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$BlocWriteStateInitialImpl<T> implements BlocWriteStateInitial<T> {
  const _$BlocWriteStateInitialImpl();

  @override
  String toString() {
    return 'BlocWriteState<$T>.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BlocWriteStateInitialImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(int? count, int? total) loading,
    required TResult Function(T item) success,
    required TResult Function(String message) failure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(int? count, int? total)? loading,
    TResult? Function(T item)? success,
    TResult? Function(String message)? failure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int? count, int? total)? loading,
    TResult Function(T item)? success,
    TResult Function(String message)? failure,
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
    required TResult Function(BlocWriteStateInitial<T> value) initial,
    required TResult Function(BlocWriteStateLoading<T> value) loading,
    required TResult Function(BlocWriteStateSuccess<T> value) success,
    required TResult Function(BlocWriteStateFailure<T> value) failure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BlocWriteStateInitial<T> value)? initial,
    TResult? Function(BlocWriteStateLoading<T> value)? loading,
    TResult? Function(BlocWriteStateSuccess<T> value)? success,
    TResult? Function(BlocWriteStateFailure<T> value)? failure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BlocWriteStateInitial<T> value)? initial,
    TResult Function(BlocWriteStateLoading<T> value)? loading,
    TResult Function(BlocWriteStateSuccess<T> value)? success,
    TResult Function(BlocWriteStateFailure<T> value)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class BlocWriteStateInitial<T> implements BlocWriteState<T> {
  const factory BlocWriteStateInitial() = _$BlocWriteStateInitialImpl<T>;
}

/// @nodoc
abstract class _$$BlocWriteStateLoadingImplCopyWith<T, $Res> {
  factory _$$BlocWriteStateLoadingImplCopyWith(
          _$BlocWriteStateLoadingImpl<T> value,
          $Res Function(_$BlocWriteStateLoadingImpl<T>) then) =
      __$$BlocWriteStateLoadingImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({int? count, int? total});
}

/// @nodoc
class __$$BlocWriteStateLoadingImplCopyWithImpl<T, $Res>
    extends _$BlocWriteStateCopyWithImpl<T, $Res,
        _$BlocWriteStateLoadingImpl<T>>
    implements _$$BlocWriteStateLoadingImplCopyWith<T, $Res> {
  __$$BlocWriteStateLoadingImplCopyWithImpl(
      _$BlocWriteStateLoadingImpl<T> _value,
      $Res Function(_$BlocWriteStateLoadingImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of BlocWriteState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = freezed,
    Object? total = freezed,
  }) {
    return _then(_$BlocWriteStateLoadingImpl<T>(
      count: freezed == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int?,
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$BlocWriteStateLoadingImpl<T> implements BlocWriteStateLoading<T> {
  const _$BlocWriteStateLoadingImpl({this.count, this.total});

  @override
  final int? count;
  @override
  final int? total;

  @override
  String toString() {
    return 'BlocWriteState<$T>.loading(count: $count, total: $total)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BlocWriteStateLoadingImpl<T> &&
            (identical(other.count, count) || other.count == count) &&
            (identical(other.total, total) || other.total == total));
  }

  @override
  int get hashCode => Object.hash(runtimeType, count, total);

  /// Create a copy of BlocWriteState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BlocWriteStateLoadingImplCopyWith<T, _$BlocWriteStateLoadingImpl<T>>
      get copyWith => __$$BlocWriteStateLoadingImplCopyWithImpl<T,
          _$BlocWriteStateLoadingImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(int? count, int? total) loading,
    required TResult Function(T item) success,
    required TResult Function(String message) failure,
  }) {
    return loading(count, total);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(int? count, int? total)? loading,
    TResult? Function(T item)? success,
    TResult? Function(String message)? failure,
  }) {
    return loading?.call(count, total);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int? count, int? total)? loading,
    TResult Function(T item)? success,
    TResult Function(String message)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(count, total);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BlocWriteStateInitial<T> value) initial,
    required TResult Function(BlocWriteStateLoading<T> value) loading,
    required TResult Function(BlocWriteStateSuccess<T> value) success,
    required TResult Function(BlocWriteStateFailure<T> value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BlocWriteStateInitial<T> value)? initial,
    TResult? Function(BlocWriteStateLoading<T> value)? loading,
    TResult? Function(BlocWriteStateSuccess<T> value)? success,
    TResult? Function(BlocWriteStateFailure<T> value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BlocWriteStateInitial<T> value)? initial,
    TResult Function(BlocWriteStateLoading<T> value)? loading,
    TResult Function(BlocWriteStateSuccess<T> value)? success,
    TResult Function(BlocWriteStateFailure<T> value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class BlocWriteStateLoading<T> implements BlocWriteState<T> {
  const factory BlocWriteStateLoading({final int? count, final int? total}) =
      _$BlocWriteStateLoadingImpl<T>;

  int? get count;
  int? get total;

  /// Create a copy of BlocWriteState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BlocWriteStateLoadingImplCopyWith<T, _$BlocWriteStateLoadingImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BlocWriteStateSuccessImplCopyWith<T, $Res> {
  factory _$$BlocWriteStateSuccessImplCopyWith(
          _$BlocWriteStateSuccessImpl<T> value,
          $Res Function(_$BlocWriteStateSuccessImpl<T>) then) =
      __$$BlocWriteStateSuccessImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({T item});
}

/// @nodoc
class __$$BlocWriteStateSuccessImplCopyWithImpl<T, $Res>
    extends _$BlocWriteStateCopyWithImpl<T, $Res,
        _$BlocWriteStateSuccessImpl<T>>
    implements _$$BlocWriteStateSuccessImplCopyWith<T, $Res> {
  __$$BlocWriteStateSuccessImplCopyWithImpl(
      _$BlocWriteStateSuccessImpl<T> _value,
      $Res Function(_$BlocWriteStateSuccessImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of BlocWriteState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? item = freezed,
  }) {
    return _then(_$BlocWriteStateSuccessImpl<T>(
      freezed == item
          ? _value.item
          : item // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$BlocWriteStateSuccessImpl<T> implements BlocWriteStateSuccess<T> {
  const _$BlocWriteStateSuccessImpl(this.item);

  @override
  final T item;

  @override
  String toString() {
    return 'BlocWriteState<$T>.success(item: $item)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BlocWriteStateSuccessImpl<T> &&
            const DeepCollectionEquality().equals(other.item, item));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(item));

  /// Create a copy of BlocWriteState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BlocWriteStateSuccessImplCopyWith<T, _$BlocWriteStateSuccessImpl<T>>
      get copyWith => __$$BlocWriteStateSuccessImplCopyWithImpl<T,
          _$BlocWriteStateSuccessImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(int? count, int? total) loading,
    required TResult Function(T item) success,
    required TResult Function(String message) failure,
  }) {
    return success(item);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(int? count, int? total)? loading,
    TResult? Function(T item)? success,
    TResult? Function(String message)? failure,
  }) {
    return success?.call(item);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int? count, int? total)? loading,
    TResult Function(T item)? success,
    TResult Function(String message)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(item);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BlocWriteStateInitial<T> value) initial,
    required TResult Function(BlocWriteStateLoading<T> value) loading,
    required TResult Function(BlocWriteStateSuccess<T> value) success,
    required TResult Function(BlocWriteStateFailure<T> value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BlocWriteStateInitial<T> value)? initial,
    TResult? Function(BlocWriteStateLoading<T> value)? loading,
    TResult? Function(BlocWriteStateSuccess<T> value)? success,
    TResult? Function(BlocWriteStateFailure<T> value)? failure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BlocWriteStateInitial<T> value)? initial,
    TResult Function(BlocWriteStateLoading<T> value)? loading,
    TResult Function(BlocWriteStateSuccess<T> value)? success,
    TResult Function(BlocWriteStateFailure<T> value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class BlocWriteStateSuccess<T> implements BlocWriteState<T> {
  const factory BlocWriteStateSuccess(final T item) =
      _$BlocWriteStateSuccessImpl<T>;

  T get item;

  /// Create a copy of BlocWriteState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BlocWriteStateSuccessImplCopyWith<T, _$BlocWriteStateSuccessImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BlocWriteStateFailureImplCopyWith<T, $Res> {
  factory _$$BlocWriteStateFailureImplCopyWith(
          _$BlocWriteStateFailureImpl<T> value,
          $Res Function(_$BlocWriteStateFailureImpl<T>) then) =
      __$$BlocWriteStateFailureImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$BlocWriteStateFailureImplCopyWithImpl<T, $Res>
    extends _$BlocWriteStateCopyWithImpl<T, $Res,
        _$BlocWriteStateFailureImpl<T>>
    implements _$$BlocWriteStateFailureImplCopyWith<T, $Res> {
  __$$BlocWriteStateFailureImplCopyWithImpl(
      _$BlocWriteStateFailureImpl<T> _value,
      $Res Function(_$BlocWriteStateFailureImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of BlocWriteState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$BlocWriteStateFailureImpl<T>(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$BlocWriteStateFailureImpl<T> implements BlocWriteStateFailure<T> {
  const _$BlocWriteStateFailureImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'BlocWriteState<$T>.failure(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BlocWriteStateFailureImpl<T> &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of BlocWriteState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BlocWriteStateFailureImplCopyWith<T, _$BlocWriteStateFailureImpl<T>>
      get copyWith => __$$BlocWriteStateFailureImplCopyWithImpl<T,
          _$BlocWriteStateFailureImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(int? count, int? total) loading,
    required TResult Function(T item) success,
    required TResult Function(String message) failure,
  }) {
    return failure(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(int? count, int? total)? loading,
    TResult? Function(T item)? success,
    TResult? Function(String message)? failure,
  }) {
    return failure?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int? count, int? total)? loading,
    TResult Function(T item)? success,
    TResult Function(String message)? failure,
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
    required TResult Function(BlocWriteStateInitial<T> value) initial,
    required TResult Function(BlocWriteStateLoading<T> value) loading,
    required TResult Function(BlocWriteStateSuccess<T> value) success,
    required TResult Function(BlocWriteStateFailure<T> value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BlocWriteStateInitial<T> value)? initial,
    TResult? Function(BlocWriteStateLoading<T> value)? loading,
    TResult? Function(BlocWriteStateSuccess<T> value)? success,
    TResult? Function(BlocWriteStateFailure<T> value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BlocWriteStateInitial<T> value)? initial,
    TResult Function(BlocWriteStateLoading<T> value)? loading,
    TResult Function(BlocWriteStateSuccess<T> value)? success,
    TResult Function(BlocWriteStateFailure<T> value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class BlocWriteStateFailure<T> implements BlocWriteState<T> {
  const factory BlocWriteStateFailure(final String message) =
      _$BlocWriteStateFailureImpl<T>;

  String get message;

  /// Create a copy of BlocWriteState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BlocWriteStateFailureImplCopyWith<T, _$BlocWriteStateFailureImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}
