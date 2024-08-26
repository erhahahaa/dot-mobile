// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'loading_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LoadingState {
  bool? get isLoading => throw _privateConstructorUsedError;
  int? get count => throw _privateConstructorUsedError;
  int? get total => throw _privateConstructorUsedError;

  /// Create a copy of LoadingState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LoadingStateCopyWith<LoadingState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoadingStateCopyWith<$Res> {
  factory $LoadingStateCopyWith(
          LoadingState value, $Res Function(LoadingState) then) =
      _$LoadingStateCopyWithImpl<$Res, LoadingState>;
  @useResult
  $Res call({bool? isLoading, int? count, int? total});
}

/// @nodoc
class _$LoadingStateCopyWithImpl<$Res, $Val extends LoadingState>
    implements $LoadingStateCopyWith<$Res> {
  _$LoadingStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LoadingState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = freezed,
    Object? count = freezed,
    Object? total = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: freezed == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool?,
      count: freezed == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int?,
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LoadingStateImplCopyWith<$Res>
    implements $LoadingStateCopyWith<$Res> {
  factory _$$LoadingStateImplCopyWith(
          _$LoadingStateImpl value, $Res Function(_$LoadingStateImpl) then) =
      __$$LoadingStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool? isLoading, int? count, int? total});
}

/// @nodoc
class __$$LoadingStateImplCopyWithImpl<$Res>
    extends _$LoadingStateCopyWithImpl<$Res, _$LoadingStateImpl>
    implements _$$LoadingStateImplCopyWith<$Res> {
  __$$LoadingStateImplCopyWithImpl(
      _$LoadingStateImpl _value, $Res Function(_$LoadingStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoadingState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = freezed,
    Object? count = freezed,
    Object? total = freezed,
  }) {
    return _then(_$LoadingStateImpl(
      isLoading: freezed == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool?,
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

class _$LoadingStateImpl implements _LoadingState {
  const _$LoadingStateImpl(
      {this.isLoading = false, this.count = 0, this.total = 1});

  @override
  @JsonKey()
  final bool? isLoading;
  @override
  @JsonKey()
  final int? count;
  @override
  @JsonKey()
  final int? total;

  @override
  String toString() {
    return 'LoadingState(isLoading: $isLoading, count: $count, total: $total)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadingStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.count, count) || other.count == count) &&
            (identical(other.total, total) || other.total == total));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading, count, total);

  /// Create a copy of LoadingState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadingStateImplCopyWith<_$LoadingStateImpl> get copyWith =>
      __$$LoadingStateImplCopyWithImpl<_$LoadingStateImpl>(this, _$identity);
}

abstract class _LoadingState implements LoadingState {
  const factory _LoadingState(
      {final bool? isLoading,
      final int? count,
      final int? total}) = _$LoadingStateImpl;

  @override
  bool? get isLoading;
  @override
  int? get count;
  @override
  int? get total;

  /// Create a copy of LoadingState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadingStateImplCopyWith<_$LoadingStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
