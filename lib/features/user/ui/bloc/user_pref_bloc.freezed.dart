// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_pref_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$UserPrefEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function(Locale locale) changeLocale,
    required TResult Function(ThemeMode themeMode) changeThemeMode,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialize,
    TResult? Function(Locale locale)? changeLocale,
    TResult? Function(ThemeMode themeMode)? changeThemeMode,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(Locale locale)? changeLocale,
    TResult Function(ThemeMode themeMode)? changeThemeMode,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) initialize,
    required TResult Function(_ChangeLocale value) changeLocale,
    required TResult Function(_ChangeThemeMode value) changeThemeMode,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? initialize,
    TResult? Function(_ChangeLocale value)? changeLocale,
    TResult? Function(_ChangeThemeMode value)? changeThemeMode,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? initialize,
    TResult Function(_ChangeLocale value)? changeLocale,
    TResult Function(_ChangeThemeMode value)? changeThemeMode,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserPrefEventCopyWith<$Res> {
  factory $UserPrefEventCopyWith(
          UserPrefEvent value, $Res Function(UserPrefEvent) then) =
      _$UserPrefEventCopyWithImpl<$Res, UserPrefEvent>;
}

/// @nodoc
class _$UserPrefEventCopyWithImpl<$Res, $Val extends UserPrefEvent>
    implements $UserPrefEventCopyWith<$Res> {
  _$UserPrefEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserPrefEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
          _$StartedImpl value, $Res Function(_$StartedImpl) then) =
      __$$StartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$UserPrefEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserPrefEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'UserPrefEvent.initialize()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function(Locale locale) changeLocale,
    required TResult Function(ThemeMode themeMode) changeThemeMode,
  }) {
    return initialize();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialize,
    TResult? Function(Locale locale)? changeLocale,
    TResult? Function(ThemeMode themeMode)? changeThemeMode,
  }) {
    return initialize?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(Locale locale)? changeLocale,
    TResult Function(ThemeMode themeMode)? changeThemeMode,
    required TResult orElse(),
  }) {
    if (initialize != null) {
      return initialize();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) initialize,
    required TResult Function(_ChangeLocale value) changeLocale,
    required TResult Function(_ChangeThemeMode value) changeThemeMode,
  }) {
    return initialize(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? initialize,
    TResult? Function(_ChangeLocale value)? changeLocale,
    TResult? Function(_ChangeThemeMode value)? changeThemeMode,
  }) {
    return initialize?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? initialize,
    TResult Function(_ChangeLocale value)? changeLocale,
    TResult Function(_ChangeThemeMode value)? changeThemeMode,
    required TResult orElse(),
  }) {
    if (initialize != null) {
      return initialize(this);
    }
    return orElse();
  }
}

abstract class _Started implements UserPrefEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$ChangeLocaleImplCopyWith<$Res> {
  factory _$$ChangeLocaleImplCopyWith(
          _$ChangeLocaleImpl value, $Res Function(_$ChangeLocaleImpl) then) =
      __$$ChangeLocaleImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Locale locale});
}

/// @nodoc
class __$$ChangeLocaleImplCopyWithImpl<$Res>
    extends _$UserPrefEventCopyWithImpl<$Res, _$ChangeLocaleImpl>
    implements _$$ChangeLocaleImplCopyWith<$Res> {
  __$$ChangeLocaleImplCopyWithImpl(
      _$ChangeLocaleImpl _value, $Res Function(_$ChangeLocaleImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserPrefEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? locale = null,
  }) {
    return _then(_$ChangeLocaleImpl(
      null == locale
          ? _value.locale
          : locale // ignore: cast_nullable_to_non_nullable
              as Locale,
    ));
  }
}

/// @nodoc

class _$ChangeLocaleImpl implements _ChangeLocale {
  const _$ChangeLocaleImpl(this.locale);

  @override
  final Locale locale;

  @override
  String toString() {
    return 'UserPrefEvent.changeLocale(locale: $locale)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeLocaleImpl &&
            (identical(other.locale, locale) || other.locale == locale));
  }

  @override
  int get hashCode => Object.hash(runtimeType, locale);

  /// Create a copy of UserPrefEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeLocaleImplCopyWith<_$ChangeLocaleImpl> get copyWith =>
      __$$ChangeLocaleImplCopyWithImpl<_$ChangeLocaleImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function(Locale locale) changeLocale,
    required TResult Function(ThemeMode themeMode) changeThemeMode,
  }) {
    return changeLocale(locale);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialize,
    TResult? Function(Locale locale)? changeLocale,
    TResult? Function(ThemeMode themeMode)? changeThemeMode,
  }) {
    return changeLocale?.call(locale);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(Locale locale)? changeLocale,
    TResult Function(ThemeMode themeMode)? changeThemeMode,
    required TResult orElse(),
  }) {
    if (changeLocale != null) {
      return changeLocale(locale);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) initialize,
    required TResult Function(_ChangeLocale value) changeLocale,
    required TResult Function(_ChangeThemeMode value) changeThemeMode,
  }) {
    return changeLocale(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? initialize,
    TResult? Function(_ChangeLocale value)? changeLocale,
    TResult? Function(_ChangeThemeMode value)? changeThemeMode,
  }) {
    return changeLocale?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? initialize,
    TResult Function(_ChangeLocale value)? changeLocale,
    TResult Function(_ChangeThemeMode value)? changeThemeMode,
    required TResult orElse(),
  }) {
    if (changeLocale != null) {
      return changeLocale(this);
    }
    return orElse();
  }
}

abstract class _ChangeLocale implements UserPrefEvent {
  const factory _ChangeLocale(final Locale locale) = _$ChangeLocaleImpl;

  Locale get locale;

  /// Create a copy of UserPrefEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChangeLocaleImplCopyWith<_$ChangeLocaleImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChangeThemeModeImplCopyWith<$Res> {
  factory _$$ChangeThemeModeImplCopyWith(_$ChangeThemeModeImpl value,
          $Res Function(_$ChangeThemeModeImpl) then) =
      __$$ChangeThemeModeImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ThemeMode themeMode});
}

/// @nodoc
class __$$ChangeThemeModeImplCopyWithImpl<$Res>
    extends _$UserPrefEventCopyWithImpl<$Res, _$ChangeThemeModeImpl>
    implements _$$ChangeThemeModeImplCopyWith<$Res> {
  __$$ChangeThemeModeImplCopyWithImpl(
      _$ChangeThemeModeImpl _value, $Res Function(_$ChangeThemeModeImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserPrefEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? themeMode = null,
  }) {
    return _then(_$ChangeThemeModeImpl(
      null == themeMode
          ? _value.themeMode
          : themeMode // ignore: cast_nullable_to_non_nullable
              as ThemeMode,
    ));
  }
}

/// @nodoc

class _$ChangeThemeModeImpl implements _ChangeThemeMode {
  const _$ChangeThemeModeImpl(this.themeMode);

  @override
  final ThemeMode themeMode;

  @override
  String toString() {
    return 'UserPrefEvent.changeThemeMode(themeMode: $themeMode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeThemeModeImpl &&
            (identical(other.themeMode, themeMode) ||
                other.themeMode == themeMode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, themeMode);

  /// Create a copy of UserPrefEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeThemeModeImplCopyWith<_$ChangeThemeModeImpl> get copyWith =>
      __$$ChangeThemeModeImplCopyWithImpl<_$ChangeThemeModeImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function(Locale locale) changeLocale,
    required TResult Function(ThemeMode themeMode) changeThemeMode,
  }) {
    return changeThemeMode(themeMode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialize,
    TResult? Function(Locale locale)? changeLocale,
    TResult? Function(ThemeMode themeMode)? changeThemeMode,
  }) {
    return changeThemeMode?.call(themeMode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(Locale locale)? changeLocale,
    TResult Function(ThemeMode themeMode)? changeThemeMode,
    required TResult orElse(),
  }) {
    if (changeThemeMode != null) {
      return changeThemeMode(themeMode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) initialize,
    required TResult Function(_ChangeLocale value) changeLocale,
    required TResult Function(_ChangeThemeMode value) changeThemeMode,
  }) {
    return changeThemeMode(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? initialize,
    TResult? Function(_ChangeLocale value)? changeLocale,
    TResult? Function(_ChangeThemeMode value)? changeThemeMode,
  }) {
    return changeThemeMode?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? initialize,
    TResult Function(_ChangeLocale value)? changeLocale,
    TResult Function(_ChangeThemeMode value)? changeThemeMode,
    required TResult orElse(),
  }) {
    if (changeThemeMode != null) {
      return changeThemeMode(this);
    }
    return orElse();
  }
}

abstract class _ChangeThemeMode implements UserPrefEvent {
  const factory _ChangeThemeMode(final ThemeMode themeMode) =
      _$ChangeThemeModeImpl;

  ThemeMode get themeMode;

  /// Create a copy of UserPrefEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChangeThemeModeImplCopyWith<_$ChangeThemeModeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
