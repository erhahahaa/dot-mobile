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
mixin _$BlocStateRead<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(int? count, int? total) loading,
    required TResult Function(
            List<T> items, List<T> filteredItems, T? selectedItem)
        success,
    required TResult Function(String message) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(int? count, int? total)? loading,
    TResult? Function(List<T> items, List<T> filteredItems, T? selectedItem)?
        success,
    TResult? Function(String message)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int? count, int? total)? loading,
    TResult Function(List<T> items, List<T> filteredItems, T? selectedItem)?
        success,
    TResult Function(String message)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BlocStateReadInitial<T> value) initial,
    required TResult Function(BlocStateReadLoading<T> value) loading,
    required TResult Function(BlocStateReadSuccess<T> value) success,
    required TResult Function(BlocStateReadFailure<T> value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BlocStateReadInitial<T> value)? initial,
    TResult? Function(BlocStateReadLoading<T> value)? loading,
    TResult? Function(BlocStateReadSuccess<T> value)? success,
    TResult? Function(BlocStateReadFailure<T> value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BlocStateReadInitial<T> value)? initial,
    TResult Function(BlocStateReadLoading<T> value)? loading,
    TResult Function(BlocStateReadSuccess<T> value)? success,
    TResult Function(BlocStateReadFailure<T> value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BlocStateReadCopyWith<T, $Res> {
  factory $BlocStateReadCopyWith(
          BlocStateRead<T> value, $Res Function(BlocStateRead<T>) then) =
      _$BlocStateReadCopyWithImpl<T, $Res, BlocStateRead<T>>;
}

/// @nodoc
class _$BlocStateReadCopyWithImpl<T, $Res, $Val extends BlocStateRead<T>>
    implements $BlocStateReadCopyWith<T, $Res> {
  _$BlocStateReadCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BlocStateRead
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$BlocStateReadInitialImplCopyWith<T, $Res> {
  factory _$$BlocStateReadInitialImplCopyWith(
          _$BlocStateReadInitialImpl<T> value,
          $Res Function(_$BlocStateReadInitialImpl<T>) then) =
      __$$BlocStateReadInitialImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$BlocStateReadInitialImplCopyWithImpl<T, $Res>
    extends _$BlocStateReadCopyWithImpl<T, $Res, _$BlocStateReadInitialImpl<T>>
    implements _$$BlocStateReadInitialImplCopyWith<T, $Res> {
  __$$BlocStateReadInitialImplCopyWithImpl(_$BlocStateReadInitialImpl<T> _value,
      $Res Function(_$BlocStateReadInitialImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of BlocStateRead
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$BlocStateReadInitialImpl<T> implements BlocStateReadInitial<T> {
  const _$BlocStateReadInitialImpl();

  @override
  String toString() {
    return 'BlocStateRead<$T>.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BlocStateReadInitialImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(int? count, int? total) loading,
    required TResult Function(
            List<T> items, List<T> filteredItems, T? selectedItem)
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
    TResult? Function(List<T> items, List<T> filteredItems, T? selectedItem)?
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
    TResult Function(List<T> items, List<T> filteredItems, T? selectedItem)?
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
    required TResult Function(BlocStateReadInitial<T> value) initial,
    required TResult Function(BlocStateReadLoading<T> value) loading,
    required TResult Function(BlocStateReadSuccess<T> value) success,
    required TResult Function(BlocStateReadFailure<T> value) failure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BlocStateReadInitial<T> value)? initial,
    TResult? Function(BlocStateReadLoading<T> value)? loading,
    TResult? Function(BlocStateReadSuccess<T> value)? success,
    TResult? Function(BlocStateReadFailure<T> value)? failure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BlocStateReadInitial<T> value)? initial,
    TResult Function(BlocStateReadLoading<T> value)? loading,
    TResult Function(BlocStateReadSuccess<T> value)? success,
    TResult Function(BlocStateReadFailure<T> value)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class BlocStateReadInitial<T> implements BlocStateRead<T> {
  const factory BlocStateReadInitial() = _$BlocStateReadInitialImpl<T>;
}

/// @nodoc
abstract class _$$BlocStateReadLoadingImplCopyWith<T, $Res> {
  factory _$$BlocStateReadLoadingImplCopyWith(
          _$BlocStateReadLoadingImpl<T> value,
          $Res Function(_$BlocStateReadLoadingImpl<T>) then) =
      __$$BlocStateReadLoadingImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({int? count, int? total});
}

/// @nodoc
class __$$BlocStateReadLoadingImplCopyWithImpl<T, $Res>
    extends _$BlocStateReadCopyWithImpl<T, $Res, _$BlocStateReadLoadingImpl<T>>
    implements _$$BlocStateReadLoadingImplCopyWith<T, $Res> {
  __$$BlocStateReadLoadingImplCopyWithImpl(_$BlocStateReadLoadingImpl<T> _value,
      $Res Function(_$BlocStateReadLoadingImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of BlocStateRead
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = freezed,
    Object? total = freezed,
  }) {
    return _then(_$BlocStateReadLoadingImpl<T>(
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

class _$BlocStateReadLoadingImpl<T> implements BlocStateReadLoading<T> {
  const _$BlocStateReadLoadingImpl({this.count, this.total});

  @override
  final int? count;
  @override
  final int? total;

  @override
  String toString() {
    return 'BlocStateRead<$T>.loading(count: $count, total: $total)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BlocStateReadLoadingImpl<T> &&
            (identical(other.count, count) || other.count == count) &&
            (identical(other.total, total) || other.total == total));
  }

  @override
  int get hashCode => Object.hash(runtimeType, count, total);

  /// Create a copy of BlocStateRead
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BlocStateReadLoadingImplCopyWith<T, _$BlocStateReadLoadingImpl<T>>
      get copyWith => __$$BlocStateReadLoadingImplCopyWithImpl<T,
          _$BlocStateReadLoadingImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(int? count, int? total) loading,
    required TResult Function(
            List<T> items, List<T> filteredItems, T? selectedItem)
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
    TResult? Function(List<T> items, List<T> filteredItems, T? selectedItem)?
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
    TResult Function(List<T> items, List<T> filteredItems, T? selectedItem)?
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
    required TResult Function(BlocStateReadInitial<T> value) initial,
    required TResult Function(BlocStateReadLoading<T> value) loading,
    required TResult Function(BlocStateReadSuccess<T> value) success,
    required TResult Function(BlocStateReadFailure<T> value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BlocStateReadInitial<T> value)? initial,
    TResult? Function(BlocStateReadLoading<T> value)? loading,
    TResult? Function(BlocStateReadSuccess<T> value)? success,
    TResult? Function(BlocStateReadFailure<T> value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BlocStateReadInitial<T> value)? initial,
    TResult Function(BlocStateReadLoading<T> value)? loading,
    TResult Function(BlocStateReadSuccess<T> value)? success,
    TResult Function(BlocStateReadFailure<T> value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class BlocStateReadLoading<T> implements BlocStateRead<T> {
  const factory BlocStateReadLoading({final int? count, final int? total}) =
      _$BlocStateReadLoadingImpl<T>;

  int? get count;
  int? get total;

  /// Create a copy of BlocStateRead
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BlocStateReadLoadingImplCopyWith<T, _$BlocStateReadLoadingImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BlocStateReadSuccessImplCopyWith<T, $Res> {
  factory _$$BlocStateReadSuccessImplCopyWith(
          _$BlocStateReadSuccessImpl<T> value,
          $Res Function(_$BlocStateReadSuccessImpl<T>) then) =
      __$$BlocStateReadSuccessImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({List<T> items, List<T> filteredItems, T? selectedItem});
}

/// @nodoc
class __$$BlocStateReadSuccessImplCopyWithImpl<T, $Res>
    extends _$BlocStateReadCopyWithImpl<T, $Res, _$BlocStateReadSuccessImpl<T>>
    implements _$$BlocStateReadSuccessImplCopyWith<T, $Res> {
  __$$BlocStateReadSuccessImplCopyWithImpl(_$BlocStateReadSuccessImpl<T> _value,
      $Res Function(_$BlocStateReadSuccessImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of BlocStateRead
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
    Object? filteredItems = null,
    Object? selectedItem = freezed,
  }) {
    return _then(_$BlocStateReadSuccessImpl<T>(
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<T>,
      filteredItems: null == filteredItems
          ? _value._filteredItems
          : filteredItems // ignore: cast_nullable_to_non_nullable
              as List<T>,
      selectedItem: freezed == selectedItem
          ? _value.selectedItem
          : selectedItem // ignore: cast_nullable_to_non_nullable
              as T?,
    ));
  }
}

/// @nodoc

class _$BlocStateReadSuccessImpl<T> implements BlocStateReadSuccess<T> {
  const _$BlocStateReadSuccessImpl(
      {final List<T> items = const [],
      final List<T> filteredItems = const [],
      this.selectedItem})
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
  final T? selectedItem;

  @override
  String toString() {
    return 'BlocStateRead<$T>.success(items: $items, filteredItems: $filteredItems, selectedItem: $selectedItem)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BlocStateReadSuccessImpl<T> &&
            const DeepCollectionEquality().equals(other._items, _items) &&
            const DeepCollectionEquality()
                .equals(other._filteredItems, _filteredItems) &&
            const DeepCollectionEquality()
                .equals(other.selectedItem, selectedItem));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_items),
      const DeepCollectionEquality().hash(_filteredItems),
      const DeepCollectionEquality().hash(selectedItem));

  /// Create a copy of BlocStateRead
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BlocStateReadSuccessImplCopyWith<T, _$BlocStateReadSuccessImpl<T>>
      get copyWith => __$$BlocStateReadSuccessImplCopyWithImpl<T,
          _$BlocStateReadSuccessImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(int? count, int? total) loading,
    required TResult Function(
            List<T> items, List<T> filteredItems, T? selectedItem)
        success,
    required TResult Function(String message) failure,
  }) {
    return success(items, filteredItems, selectedItem);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(int? count, int? total)? loading,
    TResult? Function(List<T> items, List<T> filteredItems, T? selectedItem)?
        success,
    TResult? Function(String message)? failure,
  }) {
    return success?.call(items, filteredItems, selectedItem);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int? count, int? total)? loading,
    TResult Function(List<T> items, List<T> filteredItems, T? selectedItem)?
        success,
    TResult Function(String message)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(items, filteredItems, selectedItem);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BlocStateReadInitial<T> value) initial,
    required TResult Function(BlocStateReadLoading<T> value) loading,
    required TResult Function(BlocStateReadSuccess<T> value) success,
    required TResult Function(BlocStateReadFailure<T> value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BlocStateReadInitial<T> value)? initial,
    TResult? Function(BlocStateReadLoading<T> value)? loading,
    TResult? Function(BlocStateReadSuccess<T> value)? success,
    TResult? Function(BlocStateReadFailure<T> value)? failure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BlocStateReadInitial<T> value)? initial,
    TResult Function(BlocStateReadLoading<T> value)? loading,
    TResult Function(BlocStateReadSuccess<T> value)? success,
    TResult Function(BlocStateReadFailure<T> value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class BlocStateReadSuccess<T> implements BlocStateRead<T> {
  const factory BlocStateReadSuccess(
      {final List<T> items,
      final List<T> filteredItems,
      final T? selectedItem}) = _$BlocStateReadSuccessImpl<T>;

  List<T> get items;
  List<T> get filteredItems;
  T? get selectedItem;

  /// Create a copy of BlocStateRead
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BlocStateReadSuccessImplCopyWith<T, _$BlocStateReadSuccessImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BlocStateReadFailureImplCopyWith<T, $Res> {
  factory _$$BlocStateReadFailureImplCopyWith(
          _$BlocStateReadFailureImpl<T> value,
          $Res Function(_$BlocStateReadFailureImpl<T>) then) =
      __$$BlocStateReadFailureImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$BlocStateReadFailureImplCopyWithImpl<T, $Res>
    extends _$BlocStateReadCopyWithImpl<T, $Res, _$BlocStateReadFailureImpl<T>>
    implements _$$BlocStateReadFailureImplCopyWith<T, $Res> {
  __$$BlocStateReadFailureImplCopyWithImpl(_$BlocStateReadFailureImpl<T> _value,
      $Res Function(_$BlocStateReadFailureImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of BlocStateRead
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$BlocStateReadFailureImpl<T>(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$BlocStateReadFailureImpl<T> implements BlocStateReadFailure<T> {
  const _$BlocStateReadFailureImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'BlocStateRead<$T>.failure(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BlocStateReadFailureImpl<T> &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of BlocStateRead
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BlocStateReadFailureImplCopyWith<T, _$BlocStateReadFailureImpl<T>>
      get copyWith => __$$BlocStateReadFailureImplCopyWithImpl<T,
          _$BlocStateReadFailureImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(int? count, int? total) loading,
    required TResult Function(
            List<T> items, List<T> filteredItems, T? selectedItem)
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
    TResult? Function(List<T> items, List<T> filteredItems, T? selectedItem)?
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
    TResult Function(List<T> items, List<T> filteredItems, T? selectedItem)?
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
    required TResult Function(BlocStateReadInitial<T> value) initial,
    required TResult Function(BlocStateReadLoading<T> value) loading,
    required TResult Function(BlocStateReadSuccess<T> value) success,
    required TResult Function(BlocStateReadFailure<T> value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BlocStateReadInitial<T> value)? initial,
    TResult? Function(BlocStateReadLoading<T> value)? loading,
    TResult? Function(BlocStateReadSuccess<T> value)? success,
    TResult? Function(BlocStateReadFailure<T> value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BlocStateReadInitial<T> value)? initial,
    TResult Function(BlocStateReadLoading<T> value)? loading,
    TResult Function(BlocStateReadSuccess<T> value)? success,
    TResult Function(BlocStateReadFailure<T> value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class BlocStateReadFailure<T> implements BlocStateRead<T> {
  const factory BlocStateReadFailure(final String message) =
      _$BlocStateReadFailureImpl<T>;

  String get message;

  /// Create a copy of BlocStateRead
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BlocStateReadFailureImplCopyWith<T, _$BlocStateReadFailureImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$BlocStateWrite<T> {
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
    required TResult Function(BlocStateWriteInitial<T> value) initial,
    required TResult Function(BlocStateWriteLoading<T> value) loading,
    required TResult Function(BlocStateWriteSuccess<T> value) success,
    required TResult Function(BlocStateWriteFailure<T> value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BlocStateWriteInitial<T> value)? initial,
    TResult? Function(BlocStateWriteLoading<T> value)? loading,
    TResult? Function(BlocStateWriteSuccess<T> value)? success,
    TResult? Function(BlocStateWriteFailure<T> value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BlocStateWriteInitial<T> value)? initial,
    TResult Function(BlocStateWriteLoading<T> value)? loading,
    TResult Function(BlocStateWriteSuccess<T> value)? success,
    TResult Function(BlocStateWriteFailure<T> value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BlocStateWriteCopyWith<T, $Res> {
  factory $BlocStateWriteCopyWith(
          BlocStateWrite<T> value, $Res Function(BlocStateWrite<T>) then) =
      _$BlocStateWriteCopyWithImpl<T, $Res, BlocStateWrite<T>>;
}

/// @nodoc
class _$BlocStateWriteCopyWithImpl<T, $Res, $Val extends BlocStateWrite<T>>
    implements $BlocStateWriteCopyWith<T, $Res> {
  _$BlocStateWriteCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BlocStateWrite
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$BlocStateWriteInitialImplCopyWith<T, $Res> {
  factory _$$BlocStateWriteInitialImplCopyWith(
          _$BlocStateWriteInitialImpl<T> value,
          $Res Function(_$BlocStateWriteInitialImpl<T>) then) =
      __$$BlocStateWriteInitialImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$BlocStateWriteInitialImplCopyWithImpl<T, $Res>
    extends _$BlocStateWriteCopyWithImpl<T, $Res,
        _$BlocStateWriteInitialImpl<T>>
    implements _$$BlocStateWriteInitialImplCopyWith<T, $Res> {
  __$$BlocStateWriteInitialImplCopyWithImpl(
      _$BlocStateWriteInitialImpl<T> _value,
      $Res Function(_$BlocStateWriteInitialImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of BlocStateWrite
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$BlocStateWriteInitialImpl<T> implements BlocStateWriteInitial<T> {
  const _$BlocStateWriteInitialImpl();

  @override
  String toString() {
    return 'BlocStateWrite<$T>.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BlocStateWriteInitialImpl<T>);
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
    required TResult Function(BlocStateWriteInitial<T> value) initial,
    required TResult Function(BlocStateWriteLoading<T> value) loading,
    required TResult Function(BlocStateWriteSuccess<T> value) success,
    required TResult Function(BlocStateWriteFailure<T> value) failure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BlocStateWriteInitial<T> value)? initial,
    TResult? Function(BlocStateWriteLoading<T> value)? loading,
    TResult? Function(BlocStateWriteSuccess<T> value)? success,
    TResult? Function(BlocStateWriteFailure<T> value)? failure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BlocStateWriteInitial<T> value)? initial,
    TResult Function(BlocStateWriteLoading<T> value)? loading,
    TResult Function(BlocStateWriteSuccess<T> value)? success,
    TResult Function(BlocStateWriteFailure<T> value)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class BlocStateWriteInitial<T> implements BlocStateWrite<T> {
  const factory BlocStateWriteInitial() = _$BlocStateWriteInitialImpl<T>;
}

/// @nodoc
abstract class _$$BlocStateWriteLoadingImplCopyWith<T, $Res> {
  factory _$$BlocStateWriteLoadingImplCopyWith(
          _$BlocStateWriteLoadingImpl<T> value,
          $Res Function(_$BlocStateWriteLoadingImpl<T>) then) =
      __$$BlocStateWriteLoadingImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({int? count, int? total});
}

/// @nodoc
class __$$BlocStateWriteLoadingImplCopyWithImpl<T, $Res>
    extends _$BlocStateWriteCopyWithImpl<T, $Res,
        _$BlocStateWriteLoadingImpl<T>>
    implements _$$BlocStateWriteLoadingImplCopyWith<T, $Res> {
  __$$BlocStateWriteLoadingImplCopyWithImpl(
      _$BlocStateWriteLoadingImpl<T> _value,
      $Res Function(_$BlocStateWriteLoadingImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of BlocStateWrite
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = freezed,
    Object? total = freezed,
  }) {
    return _then(_$BlocStateWriteLoadingImpl<T>(
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

class _$BlocStateWriteLoadingImpl<T> implements BlocStateWriteLoading<T> {
  const _$BlocStateWriteLoadingImpl({this.count, this.total});

  @override
  final int? count;
  @override
  final int? total;

  @override
  String toString() {
    return 'BlocStateWrite<$T>.loading(count: $count, total: $total)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BlocStateWriteLoadingImpl<T> &&
            (identical(other.count, count) || other.count == count) &&
            (identical(other.total, total) || other.total == total));
  }

  @override
  int get hashCode => Object.hash(runtimeType, count, total);

  /// Create a copy of BlocStateWrite
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BlocStateWriteLoadingImplCopyWith<T, _$BlocStateWriteLoadingImpl<T>>
      get copyWith => __$$BlocStateWriteLoadingImplCopyWithImpl<T,
          _$BlocStateWriteLoadingImpl<T>>(this, _$identity);

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
    required TResult Function(BlocStateWriteInitial<T> value) initial,
    required TResult Function(BlocStateWriteLoading<T> value) loading,
    required TResult Function(BlocStateWriteSuccess<T> value) success,
    required TResult Function(BlocStateWriteFailure<T> value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BlocStateWriteInitial<T> value)? initial,
    TResult? Function(BlocStateWriteLoading<T> value)? loading,
    TResult? Function(BlocStateWriteSuccess<T> value)? success,
    TResult? Function(BlocStateWriteFailure<T> value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BlocStateWriteInitial<T> value)? initial,
    TResult Function(BlocStateWriteLoading<T> value)? loading,
    TResult Function(BlocStateWriteSuccess<T> value)? success,
    TResult Function(BlocStateWriteFailure<T> value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class BlocStateWriteLoading<T> implements BlocStateWrite<T> {
  const factory BlocStateWriteLoading({final int? count, final int? total}) =
      _$BlocStateWriteLoadingImpl<T>;

  int? get count;
  int? get total;

  /// Create a copy of BlocStateWrite
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BlocStateWriteLoadingImplCopyWith<T, _$BlocStateWriteLoadingImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BlocStateWriteSuccessImplCopyWith<T, $Res> {
  factory _$$BlocStateWriteSuccessImplCopyWith(
          _$BlocStateWriteSuccessImpl<T> value,
          $Res Function(_$BlocStateWriteSuccessImpl<T>) then) =
      __$$BlocStateWriteSuccessImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({T item});
}

/// @nodoc
class __$$BlocStateWriteSuccessImplCopyWithImpl<T, $Res>
    extends _$BlocStateWriteCopyWithImpl<T, $Res,
        _$BlocStateWriteSuccessImpl<T>>
    implements _$$BlocStateWriteSuccessImplCopyWith<T, $Res> {
  __$$BlocStateWriteSuccessImplCopyWithImpl(
      _$BlocStateWriteSuccessImpl<T> _value,
      $Res Function(_$BlocStateWriteSuccessImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of BlocStateWrite
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? item = freezed,
  }) {
    return _then(_$BlocStateWriteSuccessImpl<T>(
      freezed == item
          ? _value.item
          : item // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$BlocStateWriteSuccessImpl<T> implements BlocStateWriteSuccess<T> {
  const _$BlocStateWriteSuccessImpl(this.item);

  @override
  final T item;

  @override
  String toString() {
    return 'BlocStateWrite<$T>.success(item: $item)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BlocStateWriteSuccessImpl<T> &&
            const DeepCollectionEquality().equals(other.item, item));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(item));

  /// Create a copy of BlocStateWrite
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BlocStateWriteSuccessImplCopyWith<T, _$BlocStateWriteSuccessImpl<T>>
      get copyWith => __$$BlocStateWriteSuccessImplCopyWithImpl<T,
          _$BlocStateWriteSuccessImpl<T>>(this, _$identity);

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
    required TResult Function(BlocStateWriteInitial<T> value) initial,
    required TResult Function(BlocStateWriteLoading<T> value) loading,
    required TResult Function(BlocStateWriteSuccess<T> value) success,
    required TResult Function(BlocStateWriteFailure<T> value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BlocStateWriteInitial<T> value)? initial,
    TResult? Function(BlocStateWriteLoading<T> value)? loading,
    TResult? Function(BlocStateWriteSuccess<T> value)? success,
    TResult? Function(BlocStateWriteFailure<T> value)? failure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BlocStateWriteInitial<T> value)? initial,
    TResult Function(BlocStateWriteLoading<T> value)? loading,
    TResult Function(BlocStateWriteSuccess<T> value)? success,
    TResult Function(BlocStateWriteFailure<T> value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class BlocStateWriteSuccess<T> implements BlocStateWrite<T> {
  const factory BlocStateWriteSuccess(final T item) =
      _$BlocStateWriteSuccessImpl<T>;

  T get item;

  /// Create a copy of BlocStateWrite
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BlocStateWriteSuccessImplCopyWith<T, _$BlocStateWriteSuccessImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BlocStateWriteFailureImplCopyWith<T, $Res> {
  factory _$$BlocStateWriteFailureImplCopyWith(
          _$BlocStateWriteFailureImpl<T> value,
          $Res Function(_$BlocStateWriteFailureImpl<T>) then) =
      __$$BlocStateWriteFailureImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$BlocStateWriteFailureImplCopyWithImpl<T, $Res>
    extends _$BlocStateWriteCopyWithImpl<T, $Res,
        _$BlocStateWriteFailureImpl<T>>
    implements _$$BlocStateWriteFailureImplCopyWith<T, $Res> {
  __$$BlocStateWriteFailureImplCopyWithImpl(
      _$BlocStateWriteFailureImpl<T> _value,
      $Res Function(_$BlocStateWriteFailureImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of BlocStateWrite
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$BlocStateWriteFailureImpl<T>(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$BlocStateWriteFailureImpl<T> implements BlocStateWriteFailure<T> {
  const _$BlocStateWriteFailureImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'BlocStateWrite<$T>.failure(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BlocStateWriteFailureImpl<T> &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of BlocStateWrite
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BlocStateWriteFailureImplCopyWith<T, _$BlocStateWriteFailureImpl<T>>
      get copyWith => __$$BlocStateWriteFailureImplCopyWithImpl<T,
          _$BlocStateWriteFailureImpl<T>>(this, _$identity);

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
    required TResult Function(BlocStateWriteInitial<T> value) initial,
    required TResult Function(BlocStateWriteLoading<T> value) loading,
    required TResult Function(BlocStateWriteSuccess<T> value) success,
    required TResult Function(BlocStateWriteFailure<T> value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BlocStateWriteInitial<T> value)? initial,
    TResult? Function(BlocStateWriteLoading<T> value)? loading,
    TResult? Function(BlocStateWriteSuccess<T> value)? success,
    TResult? Function(BlocStateWriteFailure<T> value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BlocStateWriteInitial<T> value)? initial,
    TResult Function(BlocStateWriteLoading<T> value)? loading,
    TResult Function(BlocStateWriteSuccess<T> value)? success,
    TResult Function(BlocStateWriteFailure<T> value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class BlocStateWriteFailure<T> implements BlocStateWrite<T> {
  const factory BlocStateWriteFailure(final String message) =
      _$BlocStateWriteFailureImpl<T>;

  String get message;

  /// Create a copy of BlocStateWrite
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BlocStateWriteFailureImplCopyWith<T, _$BlocStateWriteFailureImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}
