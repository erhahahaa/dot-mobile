// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_users_usecase.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SearchUsersParams _$SearchUsersParamsFromJson(Map<String, dynamic> json) {
  return _SearchUsersParams.fromJson(json);
}

/// @nodoc
mixin _$SearchUsersParams {
  String get query => throw _privateConstructorUsedError;

  /// Serializes this SearchUsersParams to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SearchUsersParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SearchUsersParamsCopyWith<SearchUsersParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchUsersParamsCopyWith<$Res> {
  factory $SearchUsersParamsCopyWith(
          SearchUsersParams value, $Res Function(SearchUsersParams) then) =
      _$SearchUsersParamsCopyWithImpl<$Res, SearchUsersParams>;
  @useResult
  $Res call({String query});
}

/// @nodoc
class _$SearchUsersParamsCopyWithImpl<$Res, $Val extends SearchUsersParams>
    implements $SearchUsersParamsCopyWith<$Res> {
  _$SearchUsersParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SearchUsersParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
  }) {
    return _then(_value.copyWith(
      query: null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SearchUsersParamsImplCopyWith<$Res>
    implements $SearchUsersParamsCopyWith<$Res> {
  factory _$$SearchUsersParamsImplCopyWith(_$SearchUsersParamsImpl value,
          $Res Function(_$SearchUsersParamsImpl) then) =
      __$$SearchUsersParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String query});
}

/// @nodoc
class __$$SearchUsersParamsImplCopyWithImpl<$Res>
    extends _$SearchUsersParamsCopyWithImpl<$Res, _$SearchUsersParamsImpl>
    implements _$$SearchUsersParamsImplCopyWith<$Res> {
  __$$SearchUsersParamsImplCopyWithImpl(_$SearchUsersParamsImpl _value,
      $Res Function(_$SearchUsersParamsImpl) _then)
      : super(_value, _then);

  /// Create a copy of SearchUsersParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
  }) {
    return _then(_$SearchUsersParamsImpl(
      query: null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SearchUsersParamsImpl extends _SearchUsersParams {
  const _$SearchUsersParamsImpl({required this.query}) : super._();

  factory _$SearchUsersParamsImpl.fromJson(Map<String, dynamic> json) =>
      _$$SearchUsersParamsImplFromJson(json);

  @override
  final String query;

  @override
  String toString() {
    return 'SearchUsersParams(query: $query)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchUsersParamsImpl &&
            (identical(other.query, query) || other.query == query));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, query);

  /// Create a copy of SearchUsersParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchUsersParamsImplCopyWith<_$SearchUsersParamsImpl> get copyWith =>
      __$$SearchUsersParamsImplCopyWithImpl<_$SearchUsersParamsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SearchUsersParamsImplToJson(
      this,
    );
  }
}

abstract class _SearchUsersParams extends SearchUsersParams {
  const factory _SearchUsersParams({required final String query}) =
      _$SearchUsersParamsImpl;
  const _SearchUsersParams._() : super._();

  factory _SearchUsersParams.fromJson(Map<String, dynamic> json) =
      _$SearchUsersParamsImpl.fromJson;

  @override
  String get query;

  /// Create a copy of SearchUsersParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SearchUsersParamsImplCopyWith<_$SearchUsersParamsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
