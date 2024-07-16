// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pagination.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PaginationParams {
  int get cursor => throw _privateConstructorUsedError;
  int get limit => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PaginationParamsCopyWith<PaginationParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaginationParamsCopyWith<$Res> {
  factory $PaginationParamsCopyWith(
          PaginationParams value, $Res Function(PaginationParams) then) =
      _$PaginationParamsCopyWithImpl<$Res, PaginationParams>;
  @useResult
  $Res call({int cursor, int limit});
}

/// @nodoc
class _$PaginationParamsCopyWithImpl<$Res, $Val extends PaginationParams>
    implements $PaginationParamsCopyWith<$Res> {
  _$PaginationParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cursor = null,
    Object? limit = null,
  }) {
    return _then(_value.copyWith(
      cursor: null == cursor
          ? _value.cursor
          : cursor // ignore: cast_nullable_to_non_nullable
              as int,
      limit: null == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PaginationParamsImplCopyWith<$Res>
    implements $PaginationParamsCopyWith<$Res> {
  factory _$$PaginationParamsImplCopyWith(_$PaginationParamsImpl value,
          $Res Function(_$PaginationParamsImpl) then) =
      __$$PaginationParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int cursor, int limit});
}

/// @nodoc
class __$$PaginationParamsImplCopyWithImpl<$Res>
    extends _$PaginationParamsCopyWithImpl<$Res, _$PaginationParamsImpl>
    implements _$$PaginationParamsImplCopyWith<$Res> {
  __$$PaginationParamsImplCopyWithImpl(_$PaginationParamsImpl _value,
      $Res Function(_$PaginationParamsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cursor = null,
    Object? limit = null,
  }) {
    return _then(_$PaginationParamsImpl(
      cursor: null == cursor
          ? _value.cursor
          : cursor // ignore: cast_nullable_to_non_nullable
              as int,
      limit: null == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$PaginationParamsImpl implements _PaginationParams {
  const _$PaginationParamsImpl({this.cursor = 0, this.limit = 10});

  @override
  @JsonKey()
  final int cursor;
  @override
  @JsonKey()
  final int limit;

  @override
  String toString() {
    return 'PaginationParams(cursor: $cursor, limit: $limit)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaginationParamsImpl &&
            (identical(other.cursor, cursor) || other.cursor == cursor) &&
            (identical(other.limit, limit) || other.limit == limit));
  }

  @override
  int get hashCode => Object.hash(runtimeType, cursor, limit);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PaginationParamsImplCopyWith<_$PaginationParamsImpl> get copyWith =>
      __$$PaginationParamsImplCopyWithImpl<_$PaginationParamsImpl>(
          this, _$identity);
}

abstract class _PaginationParams implements PaginationParams {
  const factory _PaginationParams({final int cursor, final int limit}) =
      _$PaginationParamsImpl;

  @override
  int get cursor;
  @override
  int get limit;
  @override
  @JsonKey(ignore: true)
  _$$PaginationParamsImplCopyWith<_$PaginationParamsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
