// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$UserState {
  BaseState get state => throw _privateConstructorUsedError;
  Failure? get failure => throw _privateConstructorUsedError;
  UserModel get user => throw _privateConstructorUsedError;
  Locale get locale => throw _privateConstructorUsedError;
  ThemeMode get themeMode => throw _privateConstructorUsedError;
  List<String> get usernameSuggestions => throw _privateConstructorUsedError;
  List<NotificationDataModel> get notifications =>
      throw _privateConstructorUsedError;
  File? get image => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserStateCopyWith<UserState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserStateCopyWith<$Res> {
  factory $UserStateCopyWith(UserState value, $Res Function(UserState) then) =
      _$UserStateCopyWithImpl<$Res, UserState>;
  @useResult
  $Res call(
      {BaseState state,
      Failure? failure,
      UserModel user,
      Locale locale,
      ThemeMode themeMode,
      List<String> usernameSuggestions,
      List<NotificationDataModel> notifications,
      File? image});

  $UserModelCopyWith<$Res> get user;
}

/// @nodoc
class _$UserStateCopyWithImpl<$Res, $Val extends UserState>
    implements $UserStateCopyWith<$Res> {
  _$UserStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? state = null,
    Object? failure = freezed,
    Object? user = null,
    Object? locale = null,
    Object? themeMode = null,
    Object? usernameSuggestions = null,
    Object? notifications = null,
    Object? image = freezed,
  }) {
    return _then(_value.copyWith(
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as BaseState,
      failure: freezed == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure?,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserModel,
      locale: null == locale
          ? _value.locale
          : locale // ignore: cast_nullable_to_non_nullable
              as Locale,
      themeMode: null == themeMode
          ? _value.themeMode
          : themeMode // ignore: cast_nullable_to_non_nullable
              as ThemeMode,
      usernameSuggestions: null == usernameSuggestions
          ? _value.usernameSuggestions
          : usernameSuggestions // ignore: cast_nullable_to_non_nullable
              as List<String>,
      notifications: null == notifications
          ? _value.notifications
          : notifications // ignore: cast_nullable_to_non_nullable
              as List<NotificationDataModel>,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as File?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserModelCopyWith<$Res> get user {
    return $UserModelCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UserStateImplCopyWith<$Res>
    implements $UserStateCopyWith<$Res> {
  factory _$$UserStateImplCopyWith(
          _$UserStateImpl value, $Res Function(_$UserStateImpl) then) =
      __$$UserStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {BaseState state,
      Failure? failure,
      UserModel user,
      Locale locale,
      ThemeMode themeMode,
      List<String> usernameSuggestions,
      List<NotificationDataModel> notifications,
      File? image});

  @override
  $UserModelCopyWith<$Res> get user;
}

/// @nodoc
class __$$UserStateImplCopyWithImpl<$Res>
    extends _$UserStateCopyWithImpl<$Res, _$UserStateImpl>
    implements _$$UserStateImplCopyWith<$Res> {
  __$$UserStateImplCopyWithImpl(
      _$UserStateImpl _value, $Res Function(_$UserStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? state = null,
    Object? failure = freezed,
    Object? user = null,
    Object? locale = null,
    Object? themeMode = null,
    Object? usernameSuggestions = null,
    Object? notifications = null,
    Object? image = freezed,
  }) {
    return _then(_$UserStateImpl(
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as BaseState,
      failure: freezed == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure?,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserModel,
      locale: null == locale
          ? _value.locale
          : locale // ignore: cast_nullable_to_non_nullable
              as Locale,
      themeMode: null == themeMode
          ? _value.themeMode
          : themeMode // ignore: cast_nullable_to_non_nullable
              as ThemeMode,
      usernameSuggestions: null == usernameSuggestions
          ? _value._usernameSuggestions
          : usernameSuggestions // ignore: cast_nullable_to_non_nullable
              as List<String>,
      notifications: null == notifications
          ? _value._notifications
          : notifications // ignore: cast_nullable_to_non_nullable
              as List<NotificationDataModel>,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as File?,
    ));
  }
}

/// @nodoc

class _$UserStateImpl implements _UserState {
  const _$UserStateImpl(
      {this.state = BaseState.initial,
      this.failure,
      this.user = const UserModel(),
      this.locale = const Locale('en', 'US'),
      this.themeMode = ThemeMode.system,
      final List<String> usernameSuggestions = const [],
      final List<NotificationDataModel> notifications = const [],
      this.image})
      : _usernameSuggestions = usernameSuggestions,
        _notifications = notifications;

  @override
  @JsonKey()
  final BaseState state;
  @override
  final Failure? failure;
  @override
  @JsonKey()
  final UserModel user;
  @override
  @JsonKey()
  final Locale locale;
  @override
  @JsonKey()
  final ThemeMode themeMode;
  final List<String> _usernameSuggestions;
  @override
  @JsonKey()
  List<String> get usernameSuggestions {
    if (_usernameSuggestions is EqualUnmodifiableListView)
      return _usernameSuggestions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_usernameSuggestions);
  }

  final List<NotificationDataModel> _notifications;
  @override
  @JsonKey()
  List<NotificationDataModel> get notifications {
    if (_notifications is EqualUnmodifiableListView) return _notifications;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_notifications);
  }

  @override
  final File? image;

  @override
  String toString() {
    return 'UserState(state: $state, failure: $failure, user: $user, locale: $locale, themeMode: $themeMode, usernameSuggestions: $usernameSuggestions, notifications: $notifications, image: $image)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserStateImpl &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.failure, failure) || other.failure == failure) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.locale, locale) || other.locale == locale) &&
            (identical(other.themeMode, themeMode) ||
                other.themeMode == themeMode) &&
            const DeepCollectionEquality()
                .equals(other._usernameSuggestions, _usernameSuggestions) &&
            const DeepCollectionEquality()
                .equals(other._notifications, _notifications) &&
            (identical(other.image, image) || other.image == image));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      state,
      failure,
      user,
      locale,
      themeMode,
      const DeepCollectionEquality().hash(_usernameSuggestions),
      const DeepCollectionEquality().hash(_notifications),
      image);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserStateImplCopyWith<_$UserStateImpl> get copyWith =>
      __$$UserStateImplCopyWithImpl<_$UserStateImpl>(this, _$identity);
}

abstract class _UserState implements UserState {
  const factory _UserState(
      {final BaseState state,
      final Failure? failure,
      final UserModel user,
      final Locale locale,
      final ThemeMode themeMode,
      final List<String> usernameSuggestions,
      final List<NotificationDataModel> notifications,
      final File? image}) = _$UserStateImpl;

  @override
  BaseState get state;
  @override
  Failure? get failure;
  @override
  UserModel get user;
  @override
  Locale get locale;
  @override
  ThemeMode get themeMode;
  @override
  List<String> get usernameSuggestions;
  @override
  List<NotificationDataModel> get notifications;
  @override
  File? get image;
  @override
  @JsonKey(ignore: true)
  _$$UserStateImplCopyWith<_$UserStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
