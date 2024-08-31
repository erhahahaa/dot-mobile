// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'save_user_preferences_usecase.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SaveUserPreferencesParams {
  UserPreferencesModel get prefs => throw _privateConstructorUsedError;

  /// Create a copy of SaveUserPreferencesParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SaveUserPreferencesParamsCopyWith<SaveUserPreferencesParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SaveUserPreferencesParamsCopyWith<$Res> {
  factory $SaveUserPreferencesParamsCopyWith(SaveUserPreferencesParams value,
          $Res Function(SaveUserPreferencesParams) then) =
      _$SaveUserPreferencesParamsCopyWithImpl<$Res, SaveUserPreferencesParams>;
  @useResult
  $Res call({UserPreferencesModel prefs});

  $UserPreferencesModelCopyWith<$Res> get prefs;
}

/// @nodoc
class _$SaveUserPreferencesParamsCopyWithImpl<$Res,
        $Val extends SaveUserPreferencesParams>
    implements $SaveUserPreferencesParamsCopyWith<$Res> {
  _$SaveUserPreferencesParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SaveUserPreferencesParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? prefs = null,
  }) {
    return _then(_value.copyWith(
      prefs: null == prefs
          ? _value.prefs
          : prefs // ignore: cast_nullable_to_non_nullable
              as UserPreferencesModel,
    ) as $Val);
  }

  /// Create a copy of SaveUserPreferencesParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserPreferencesModelCopyWith<$Res> get prefs {
    return $UserPreferencesModelCopyWith<$Res>(_value.prefs, (value) {
      return _then(_value.copyWith(prefs: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SaveUserPreferencesParamsImplCopyWith<$Res>
    implements $SaveUserPreferencesParamsCopyWith<$Res> {
  factory _$$SaveUserPreferencesParamsImplCopyWith(
          _$SaveUserPreferencesParamsImpl value,
          $Res Function(_$SaveUserPreferencesParamsImpl) then) =
      __$$SaveUserPreferencesParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({UserPreferencesModel prefs});

  @override
  $UserPreferencesModelCopyWith<$Res> get prefs;
}

/// @nodoc
class __$$SaveUserPreferencesParamsImplCopyWithImpl<$Res>
    extends _$SaveUserPreferencesParamsCopyWithImpl<$Res,
        _$SaveUserPreferencesParamsImpl>
    implements _$$SaveUserPreferencesParamsImplCopyWith<$Res> {
  __$$SaveUserPreferencesParamsImplCopyWithImpl(
      _$SaveUserPreferencesParamsImpl _value,
      $Res Function(_$SaveUserPreferencesParamsImpl) _then)
      : super(_value, _then);

  /// Create a copy of SaveUserPreferencesParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? prefs = null,
  }) {
    return _then(_$SaveUserPreferencesParamsImpl(
      prefs: null == prefs
          ? _value.prefs
          : prefs // ignore: cast_nullable_to_non_nullable
              as UserPreferencesModel,
    ));
  }
}

/// @nodoc

class _$SaveUserPreferencesParamsImpl implements _SaveUserPreferencesParams {
  const _$SaveUserPreferencesParamsImpl({required this.prefs});

  @override
  final UserPreferencesModel prefs;

  @override
  String toString() {
    return 'SaveUserPreferencesParams(prefs: $prefs)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SaveUserPreferencesParamsImpl &&
            (identical(other.prefs, prefs) || other.prefs == prefs));
  }

  @override
  int get hashCode => Object.hash(runtimeType, prefs);

  /// Create a copy of SaveUserPreferencesParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SaveUserPreferencesParamsImplCopyWith<_$SaveUserPreferencesParamsImpl>
      get copyWith => __$$SaveUserPreferencesParamsImplCopyWithImpl<
          _$SaveUserPreferencesParamsImpl>(this, _$identity);
}

abstract class _SaveUserPreferencesParams implements SaveUserPreferencesParams {
  const factory _SaveUserPreferencesParams(
          {required final UserPreferencesModel prefs}) =
      _$SaveUserPreferencesParamsImpl;

  @override
  UserPreferencesModel get prefs;

  /// Create a copy of SaveUserPreferencesParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SaveUserPreferencesParamsImplCopyWith<_$SaveUserPreferencesParamsImpl>
      get copyWith => throw _privateConstructorUsedError;
}
