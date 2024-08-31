// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$UserEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function(FindUsernamesParams params) checkUsername,
    required TResult Function() clear,
    required TResult Function(UpdateProfileParams params) updateProfile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialize,
    TResult? Function(FindUsernamesParams params)? checkUsername,
    TResult? Function()? clear,
    TResult? Function(UpdateProfileParams params)? updateProfile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(FindUsernamesParams params)? checkUsername,
    TResult Function()? clear,
    TResult Function(UpdateProfileParams params)? updateProfile,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserEventInitialize value) initialize,
    required TResult Function(UserEventCheckUsername value) checkUsername,
    required TResult Function(UserEventClear value) clear,
    required TResult Function(UserEventUpdateProfile value) updateProfile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UserEventInitialize value)? initialize,
    TResult? Function(UserEventCheckUsername value)? checkUsername,
    TResult? Function(UserEventClear value)? clear,
    TResult? Function(UserEventUpdateProfile value)? updateProfile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserEventInitialize value)? initialize,
    TResult Function(UserEventCheckUsername value)? checkUsername,
    TResult Function(UserEventClear value)? clear,
    TResult Function(UserEventUpdateProfile value)? updateProfile,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserEventCopyWith<$Res> {
  factory $UserEventCopyWith(UserEvent value, $Res Function(UserEvent) then) =
      _$UserEventCopyWithImpl<$Res, UserEvent>;
}

/// @nodoc
class _$UserEventCopyWithImpl<$Res, $Val extends UserEvent>
    implements $UserEventCopyWith<$Res> {
  _$UserEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$UserEventInitializeImplCopyWith<$Res> {
  factory _$$UserEventInitializeImplCopyWith(_$UserEventInitializeImpl value,
          $Res Function(_$UserEventInitializeImpl) then) =
      __$$UserEventInitializeImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UserEventInitializeImplCopyWithImpl<$Res>
    extends _$UserEventCopyWithImpl<$Res, _$UserEventInitializeImpl>
    implements _$$UserEventInitializeImplCopyWith<$Res> {
  __$$UserEventInitializeImplCopyWithImpl(_$UserEventInitializeImpl _value,
      $Res Function(_$UserEventInitializeImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$UserEventInitializeImpl implements UserEventInitialize {
  const _$UserEventInitializeImpl();

  @override
  String toString() {
    return 'UserEvent.initialize()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserEventInitializeImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function(FindUsernamesParams params) checkUsername,
    required TResult Function() clear,
    required TResult Function(UpdateProfileParams params) updateProfile,
  }) {
    return initialize();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialize,
    TResult? Function(FindUsernamesParams params)? checkUsername,
    TResult? Function()? clear,
    TResult? Function(UpdateProfileParams params)? updateProfile,
  }) {
    return initialize?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(FindUsernamesParams params)? checkUsername,
    TResult Function()? clear,
    TResult Function(UpdateProfileParams params)? updateProfile,
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
    required TResult Function(UserEventInitialize value) initialize,
    required TResult Function(UserEventCheckUsername value) checkUsername,
    required TResult Function(UserEventClear value) clear,
    required TResult Function(UserEventUpdateProfile value) updateProfile,
  }) {
    return initialize(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UserEventInitialize value)? initialize,
    TResult? Function(UserEventCheckUsername value)? checkUsername,
    TResult? Function(UserEventClear value)? clear,
    TResult? Function(UserEventUpdateProfile value)? updateProfile,
  }) {
    return initialize?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserEventInitialize value)? initialize,
    TResult Function(UserEventCheckUsername value)? checkUsername,
    TResult Function(UserEventClear value)? clear,
    TResult Function(UserEventUpdateProfile value)? updateProfile,
    required TResult orElse(),
  }) {
    if (initialize != null) {
      return initialize(this);
    }
    return orElse();
  }
}

abstract class UserEventInitialize implements UserEvent {
  const factory UserEventInitialize() = _$UserEventInitializeImpl;
}

/// @nodoc
abstract class _$$UserEventCheckUsernameImplCopyWith<$Res> {
  factory _$$UserEventCheckUsernameImplCopyWith(
          _$UserEventCheckUsernameImpl value,
          $Res Function(_$UserEventCheckUsernameImpl) then) =
      __$$UserEventCheckUsernameImplCopyWithImpl<$Res>;
  @useResult
  $Res call({FindUsernamesParams params});

  $FindUsernamesParamsCopyWith<$Res> get params;
}

/// @nodoc
class __$$UserEventCheckUsernameImplCopyWithImpl<$Res>
    extends _$UserEventCopyWithImpl<$Res, _$UserEventCheckUsernameImpl>
    implements _$$UserEventCheckUsernameImplCopyWith<$Res> {
  __$$UserEventCheckUsernameImplCopyWithImpl(
      _$UserEventCheckUsernameImpl _value,
      $Res Function(_$UserEventCheckUsernameImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? params = null,
  }) {
    return _then(_$UserEventCheckUsernameImpl(
      null == params
          ? _value.params
          : params // ignore: cast_nullable_to_non_nullable
              as FindUsernamesParams,
    ));
  }

  /// Create a copy of UserEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FindUsernamesParamsCopyWith<$Res> get params {
    return $FindUsernamesParamsCopyWith<$Res>(_value.params, (value) {
      return _then(_value.copyWith(params: value));
    });
  }
}

/// @nodoc

class _$UserEventCheckUsernameImpl implements UserEventCheckUsername {
  const _$UserEventCheckUsernameImpl(this.params);

  @override
  final FindUsernamesParams params;

  @override
  String toString() {
    return 'UserEvent.checkUsername(params: $params)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserEventCheckUsernameImpl &&
            (identical(other.params, params) || other.params == params));
  }

  @override
  int get hashCode => Object.hash(runtimeType, params);

  /// Create a copy of UserEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserEventCheckUsernameImplCopyWith<_$UserEventCheckUsernameImpl>
      get copyWith => __$$UserEventCheckUsernameImplCopyWithImpl<
          _$UserEventCheckUsernameImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function(FindUsernamesParams params) checkUsername,
    required TResult Function() clear,
    required TResult Function(UpdateProfileParams params) updateProfile,
  }) {
    return checkUsername(params);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialize,
    TResult? Function(FindUsernamesParams params)? checkUsername,
    TResult? Function()? clear,
    TResult? Function(UpdateProfileParams params)? updateProfile,
  }) {
    return checkUsername?.call(params);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(FindUsernamesParams params)? checkUsername,
    TResult Function()? clear,
    TResult Function(UpdateProfileParams params)? updateProfile,
    required TResult orElse(),
  }) {
    if (checkUsername != null) {
      return checkUsername(params);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserEventInitialize value) initialize,
    required TResult Function(UserEventCheckUsername value) checkUsername,
    required TResult Function(UserEventClear value) clear,
    required TResult Function(UserEventUpdateProfile value) updateProfile,
  }) {
    return checkUsername(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UserEventInitialize value)? initialize,
    TResult? Function(UserEventCheckUsername value)? checkUsername,
    TResult? Function(UserEventClear value)? clear,
    TResult? Function(UserEventUpdateProfile value)? updateProfile,
  }) {
    return checkUsername?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserEventInitialize value)? initialize,
    TResult Function(UserEventCheckUsername value)? checkUsername,
    TResult Function(UserEventClear value)? clear,
    TResult Function(UserEventUpdateProfile value)? updateProfile,
    required TResult orElse(),
  }) {
    if (checkUsername != null) {
      return checkUsername(this);
    }
    return orElse();
  }
}

abstract class UserEventCheckUsername implements UserEvent {
  const factory UserEventCheckUsername(final FindUsernamesParams params) =
      _$UserEventCheckUsernameImpl;

  FindUsernamesParams get params;

  /// Create a copy of UserEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserEventCheckUsernameImplCopyWith<_$UserEventCheckUsernameImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UserEventClearImplCopyWith<$Res> {
  factory _$$UserEventClearImplCopyWith(_$UserEventClearImpl value,
          $Res Function(_$UserEventClearImpl) then) =
      __$$UserEventClearImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UserEventClearImplCopyWithImpl<$Res>
    extends _$UserEventCopyWithImpl<$Res, _$UserEventClearImpl>
    implements _$$UserEventClearImplCopyWith<$Res> {
  __$$UserEventClearImplCopyWithImpl(
      _$UserEventClearImpl _value, $Res Function(_$UserEventClearImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$UserEventClearImpl implements UserEventClear {
  const _$UserEventClearImpl();

  @override
  String toString() {
    return 'UserEvent.clear()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UserEventClearImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function(FindUsernamesParams params) checkUsername,
    required TResult Function() clear,
    required TResult Function(UpdateProfileParams params) updateProfile,
  }) {
    return clear();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialize,
    TResult? Function(FindUsernamesParams params)? checkUsername,
    TResult? Function()? clear,
    TResult? Function(UpdateProfileParams params)? updateProfile,
  }) {
    return clear?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(FindUsernamesParams params)? checkUsername,
    TResult Function()? clear,
    TResult Function(UpdateProfileParams params)? updateProfile,
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
    required TResult Function(UserEventInitialize value) initialize,
    required TResult Function(UserEventCheckUsername value) checkUsername,
    required TResult Function(UserEventClear value) clear,
    required TResult Function(UserEventUpdateProfile value) updateProfile,
  }) {
    return clear(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UserEventInitialize value)? initialize,
    TResult? Function(UserEventCheckUsername value)? checkUsername,
    TResult? Function(UserEventClear value)? clear,
    TResult? Function(UserEventUpdateProfile value)? updateProfile,
  }) {
    return clear?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserEventInitialize value)? initialize,
    TResult Function(UserEventCheckUsername value)? checkUsername,
    TResult Function(UserEventClear value)? clear,
    TResult Function(UserEventUpdateProfile value)? updateProfile,
    required TResult orElse(),
  }) {
    if (clear != null) {
      return clear(this);
    }
    return orElse();
  }
}

abstract class UserEventClear implements UserEvent {
  const factory UserEventClear() = _$UserEventClearImpl;
}

/// @nodoc
abstract class _$$UserEventUpdateProfileImplCopyWith<$Res> {
  factory _$$UserEventUpdateProfileImplCopyWith(
          _$UserEventUpdateProfileImpl value,
          $Res Function(_$UserEventUpdateProfileImpl) then) =
      __$$UserEventUpdateProfileImplCopyWithImpl<$Res>;
  @useResult
  $Res call({UpdateProfileParams params});

  $UpdateProfileParamsCopyWith<$Res> get params;
}

/// @nodoc
class __$$UserEventUpdateProfileImplCopyWithImpl<$Res>
    extends _$UserEventCopyWithImpl<$Res, _$UserEventUpdateProfileImpl>
    implements _$$UserEventUpdateProfileImplCopyWith<$Res> {
  __$$UserEventUpdateProfileImplCopyWithImpl(
      _$UserEventUpdateProfileImpl _value,
      $Res Function(_$UserEventUpdateProfileImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? params = null,
  }) {
    return _then(_$UserEventUpdateProfileImpl(
      null == params
          ? _value.params
          : params // ignore: cast_nullable_to_non_nullable
              as UpdateProfileParams,
    ));
  }

  /// Create a copy of UserEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UpdateProfileParamsCopyWith<$Res> get params {
    return $UpdateProfileParamsCopyWith<$Res>(_value.params, (value) {
      return _then(_value.copyWith(params: value));
    });
  }
}

/// @nodoc

class _$UserEventUpdateProfileImpl implements UserEventUpdateProfile {
  const _$UserEventUpdateProfileImpl(this.params);

  @override
  final UpdateProfileParams params;

  @override
  String toString() {
    return 'UserEvent.updateProfile(params: $params)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserEventUpdateProfileImpl &&
            (identical(other.params, params) || other.params == params));
  }

  @override
  int get hashCode => Object.hash(runtimeType, params);

  /// Create a copy of UserEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserEventUpdateProfileImplCopyWith<_$UserEventUpdateProfileImpl>
      get copyWith => __$$UserEventUpdateProfileImplCopyWithImpl<
          _$UserEventUpdateProfileImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function(FindUsernamesParams params) checkUsername,
    required TResult Function() clear,
    required TResult Function(UpdateProfileParams params) updateProfile,
  }) {
    return updateProfile(params);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialize,
    TResult? Function(FindUsernamesParams params)? checkUsername,
    TResult? Function()? clear,
    TResult? Function(UpdateProfileParams params)? updateProfile,
  }) {
    return updateProfile?.call(params);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(FindUsernamesParams params)? checkUsername,
    TResult Function()? clear,
    TResult Function(UpdateProfileParams params)? updateProfile,
    required TResult orElse(),
  }) {
    if (updateProfile != null) {
      return updateProfile(params);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserEventInitialize value) initialize,
    required TResult Function(UserEventCheckUsername value) checkUsername,
    required TResult Function(UserEventClear value) clear,
    required TResult Function(UserEventUpdateProfile value) updateProfile,
  }) {
    return updateProfile(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UserEventInitialize value)? initialize,
    TResult? Function(UserEventCheckUsername value)? checkUsername,
    TResult? Function(UserEventClear value)? clear,
    TResult? Function(UserEventUpdateProfile value)? updateProfile,
  }) {
    return updateProfile?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserEventInitialize value)? initialize,
    TResult Function(UserEventCheckUsername value)? checkUsername,
    TResult Function(UserEventClear value)? clear,
    TResult Function(UserEventUpdateProfile value)? updateProfile,
    required TResult orElse(),
  }) {
    if (updateProfile != null) {
      return updateProfile(this);
    }
    return orElse();
  }
}

abstract class UserEventUpdateProfile implements UserEvent {
  const factory UserEventUpdateProfile(final UpdateProfileParams params) =
      _$UserEventUpdateProfileImpl;

  UpdateProfileParams get params;

  /// Create a copy of UserEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserEventUpdateProfileImplCopyWith<_$UserEventUpdateProfileImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$UserState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<String> usernames) foundUsernames,
    required TResult Function(UserModel user, String fcmToken) success,
    required TResult Function(String message) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<String> usernames)? foundUsernames,
    TResult? Function(UserModel user, String fcmToken)? success,
    TResult? Function(String message)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<String> usernames)? foundUsernames,
    TResult Function(UserModel user, String fcmToken)? success,
    TResult Function(String message)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserStateInitial value) initial,
    required TResult Function(UserStateLoading value) loading,
    required TResult Function(UserStateFoundUsernames value) foundUsernames,
    required TResult Function(UserStateSuccess value) success,
    required TResult Function(UserStateFailure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UserStateInitial value)? initial,
    TResult? Function(UserStateLoading value)? loading,
    TResult? Function(UserStateFoundUsernames value)? foundUsernames,
    TResult? Function(UserStateSuccess value)? success,
    TResult? Function(UserStateFailure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserStateInitial value)? initial,
    TResult Function(UserStateLoading value)? loading,
    TResult Function(UserStateFoundUsernames value)? foundUsernames,
    TResult Function(UserStateSuccess value)? success,
    TResult Function(UserStateFailure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserStateCopyWith<$Res> {
  factory $UserStateCopyWith(UserState value, $Res Function(UserState) then) =
      _$UserStateCopyWithImpl<$Res, UserState>;
}

/// @nodoc
class _$UserStateCopyWithImpl<$Res, $Val extends UserState>
    implements $UserStateCopyWith<$Res> {
  _$UserStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$UserStateInitialImplCopyWith<$Res> {
  factory _$$UserStateInitialImplCopyWith(_$UserStateInitialImpl value,
          $Res Function(_$UserStateInitialImpl) then) =
      __$$UserStateInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UserStateInitialImplCopyWithImpl<$Res>
    extends _$UserStateCopyWithImpl<$Res, _$UserStateInitialImpl>
    implements _$$UserStateInitialImplCopyWith<$Res> {
  __$$UserStateInitialImplCopyWithImpl(_$UserStateInitialImpl _value,
      $Res Function(_$UserStateInitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$UserStateInitialImpl implements UserStateInitial {
  const _$UserStateInitialImpl();

  @override
  String toString() {
    return 'UserState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UserStateInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<String> usernames) foundUsernames,
    required TResult Function(UserModel user, String fcmToken) success,
    required TResult Function(String message) failure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<String> usernames)? foundUsernames,
    TResult? Function(UserModel user, String fcmToken)? success,
    TResult? Function(String message)? failure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<String> usernames)? foundUsernames,
    TResult Function(UserModel user, String fcmToken)? success,
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
    required TResult Function(UserStateInitial value) initial,
    required TResult Function(UserStateLoading value) loading,
    required TResult Function(UserStateFoundUsernames value) foundUsernames,
    required TResult Function(UserStateSuccess value) success,
    required TResult Function(UserStateFailure value) failure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UserStateInitial value)? initial,
    TResult? Function(UserStateLoading value)? loading,
    TResult? Function(UserStateFoundUsernames value)? foundUsernames,
    TResult? Function(UserStateSuccess value)? success,
    TResult? Function(UserStateFailure value)? failure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserStateInitial value)? initial,
    TResult Function(UserStateLoading value)? loading,
    TResult Function(UserStateFoundUsernames value)? foundUsernames,
    TResult Function(UserStateSuccess value)? success,
    TResult Function(UserStateFailure value)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class UserStateInitial implements UserState {
  const factory UserStateInitial() = _$UserStateInitialImpl;
}

/// @nodoc
abstract class _$$UserStateLoadingImplCopyWith<$Res> {
  factory _$$UserStateLoadingImplCopyWith(_$UserStateLoadingImpl value,
          $Res Function(_$UserStateLoadingImpl) then) =
      __$$UserStateLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UserStateLoadingImplCopyWithImpl<$Res>
    extends _$UserStateCopyWithImpl<$Res, _$UserStateLoadingImpl>
    implements _$$UserStateLoadingImplCopyWith<$Res> {
  __$$UserStateLoadingImplCopyWithImpl(_$UserStateLoadingImpl _value,
      $Res Function(_$UserStateLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$UserStateLoadingImpl implements UserStateLoading {
  const _$UserStateLoadingImpl();

  @override
  String toString() {
    return 'UserState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UserStateLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<String> usernames) foundUsernames,
    required TResult Function(UserModel user, String fcmToken) success,
    required TResult Function(String message) failure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<String> usernames)? foundUsernames,
    TResult? Function(UserModel user, String fcmToken)? success,
    TResult? Function(String message)? failure,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<String> usernames)? foundUsernames,
    TResult Function(UserModel user, String fcmToken)? success,
    TResult Function(String message)? failure,
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
    required TResult Function(UserStateInitial value) initial,
    required TResult Function(UserStateLoading value) loading,
    required TResult Function(UserStateFoundUsernames value) foundUsernames,
    required TResult Function(UserStateSuccess value) success,
    required TResult Function(UserStateFailure value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UserStateInitial value)? initial,
    TResult? Function(UserStateLoading value)? loading,
    TResult? Function(UserStateFoundUsernames value)? foundUsernames,
    TResult? Function(UserStateSuccess value)? success,
    TResult? Function(UserStateFailure value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserStateInitial value)? initial,
    TResult Function(UserStateLoading value)? loading,
    TResult Function(UserStateFoundUsernames value)? foundUsernames,
    TResult Function(UserStateSuccess value)? success,
    TResult Function(UserStateFailure value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class UserStateLoading implements UserState {
  const factory UserStateLoading() = _$UserStateLoadingImpl;
}

/// @nodoc
abstract class _$$UserStateFoundUsernamesImplCopyWith<$Res> {
  factory _$$UserStateFoundUsernamesImplCopyWith(
          _$UserStateFoundUsernamesImpl value,
          $Res Function(_$UserStateFoundUsernamesImpl) then) =
      __$$UserStateFoundUsernamesImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<String> usernames});
}

/// @nodoc
class __$$UserStateFoundUsernamesImplCopyWithImpl<$Res>
    extends _$UserStateCopyWithImpl<$Res, _$UserStateFoundUsernamesImpl>
    implements _$$UserStateFoundUsernamesImplCopyWith<$Res> {
  __$$UserStateFoundUsernamesImplCopyWithImpl(
      _$UserStateFoundUsernamesImpl _value,
      $Res Function(_$UserStateFoundUsernamesImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? usernames = null,
  }) {
    return _then(_$UserStateFoundUsernamesImpl(
      null == usernames
          ? _value._usernames
          : usernames // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$UserStateFoundUsernamesImpl implements UserStateFoundUsernames {
  const _$UserStateFoundUsernamesImpl(final List<String> usernames)
      : _usernames = usernames;

  final List<String> _usernames;
  @override
  List<String> get usernames {
    if (_usernames is EqualUnmodifiableListView) return _usernames;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_usernames);
  }

  @override
  String toString() {
    return 'UserState.foundUsernames(usernames: $usernames)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserStateFoundUsernamesImpl &&
            const DeepCollectionEquality()
                .equals(other._usernames, _usernames));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_usernames));

  /// Create a copy of UserState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserStateFoundUsernamesImplCopyWith<_$UserStateFoundUsernamesImpl>
      get copyWith => __$$UserStateFoundUsernamesImplCopyWithImpl<
          _$UserStateFoundUsernamesImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<String> usernames) foundUsernames,
    required TResult Function(UserModel user, String fcmToken) success,
    required TResult Function(String message) failure,
  }) {
    return foundUsernames(usernames);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<String> usernames)? foundUsernames,
    TResult? Function(UserModel user, String fcmToken)? success,
    TResult? Function(String message)? failure,
  }) {
    return foundUsernames?.call(usernames);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<String> usernames)? foundUsernames,
    TResult Function(UserModel user, String fcmToken)? success,
    TResult Function(String message)? failure,
    required TResult orElse(),
  }) {
    if (foundUsernames != null) {
      return foundUsernames(usernames);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserStateInitial value) initial,
    required TResult Function(UserStateLoading value) loading,
    required TResult Function(UserStateFoundUsernames value) foundUsernames,
    required TResult Function(UserStateSuccess value) success,
    required TResult Function(UserStateFailure value) failure,
  }) {
    return foundUsernames(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UserStateInitial value)? initial,
    TResult? Function(UserStateLoading value)? loading,
    TResult? Function(UserStateFoundUsernames value)? foundUsernames,
    TResult? Function(UserStateSuccess value)? success,
    TResult? Function(UserStateFailure value)? failure,
  }) {
    return foundUsernames?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserStateInitial value)? initial,
    TResult Function(UserStateLoading value)? loading,
    TResult Function(UserStateFoundUsernames value)? foundUsernames,
    TResult Function(UserStateSuccess value)? success,
    TResult Function(UserStateFailure value)? failure,
    required TResult orElse(),
  }) {
    if (foundUsernames != null) {
      return foundUsernames(this);
    }
    return orElse();
  }
}

abstract class UserStateFoundUsernames implements UserState {
  const factory UserStateFoundUsernames(final List<String> usernames) =
      _$UserStateFoundUsernamesImpl;

  List<String> get usernames;

  /// Create a copy of UserState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserStateFoundUsernamesImplCopyWith<_$UserStateFoundUsernamesImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UserStateSuccessImplCopyWith<$Res> {
  factory _$$UserStateSuccessImplCopyWith(_$UserStateSuccessImpl value,
          $Res Function(_$UserStateSuccessImpl) then) =
      __$$UserStateSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({UserModel user, String fcmToken});

  $UserModelCopyWith<$Res> get user;
}

/// @nodoc
class __$$UserStateSuccessImplCopyWithImpl<$Res>
    extends _$UserStateCopyWithImpl<$Res, _$UserStateSuccessImpl>
    implements _$$UserStateSuccessImplCopyWith<$Res> {
  __$$UserStateSuccessImplCopyWithImpl(_$UserStateSuccessImpl _value,
      $Res Function(_$UserStateSuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
    Object? fcmToken = null,
  }) {
    return _then(_$UserStateSuccessImpl(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserModel,
      fcmToken: null == fcmToken
          ? _value.fcmToken
          : fcmToken // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  /// Create a copy of UserState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserModelCopyWith<$Res> get user {
    return $UserModelCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc

class _$UserStateSuccessImpl implements UserStateSuccess {
  const _$UserStateSuccessImpl(
      {this.user = const UserModel(), this.fcmToken = ''});

  @override
  @JsonKey()
  final UserModel user;
  @override
  @JsonKey()
  final String fcmToken;

  @override
  String toString() {
    return 'UserState.success(user: $user, fcmToken: $fcmToken)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserStateSuccessImpl &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.fcmToken, fcmToken) ||
                other.fcmToken == fcmToken));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user, fcmToken);

  /// Create a copy of UserState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserStateSuccessImplCopyWith<_$UserStateSuccessImpl> get copyWith =>
      __$$UserStateSuccessImplCopyWithImpl<_$UserStateSuccessImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<String> usernames) foundUsernames,
    required TResult Function(UserModel user, String fcmToken) success,
    required TResult Function(String message) failure,
  }) {
    return success(user, fcmToken);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<String> usernames)? foundUsernames,
    TResult? Function(UserModel user, String fcmToken)? success,
    TResult? Function(String message)? failure,
  }) {
    return success?.call(user, fcmToken);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<String> usernames)? foundUsernames,
    TResult Function(UserModel user, String fcmToken)? success,
    TResult Function(String message)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(user, fcmToken);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserStateInitial value) initial,
    required TResult Function(UserStateLoading value) loading,
    required TResult Function(UserStateFoundUsernames value) foundUsernames,
    required TResult Function(UserStateSuccess value) success,
    required TResult Function(UserStateFailure value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UserStateInitial value)? initial,
    TResult? Function(UserStateLoading value)? loading,
    TResult? Function(UserStateFoundUsernames value)? foundUsernames,
    TResult? Function(UserStateSuccess value)? success,
    TResult? Function(UserStateFailure value)? failure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserStateInitial value)? initial,
    TResult Function(UserStateLoading value)? loading,
    TResult Function(UserStateFoundUsernames value)? foundUsernames,
    TResult Function(UserStateSuccess value)? success,
    TResult Function(UserStateFailure value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class UserStateSuccess implements UserState {
  const factory UserStateSuccess(
      {final UserModel user, final String fcmToken}) = _$UserStateSuccessImpl;

  UserModel get user;
  String get fcmToken;

  /// Create a copy of UserState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserStateSuccessImplCopyWith<_$UserStateSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UserStateFailureImplCopyWith<$Res> {
  factory _$$UserStateFailureImplCopyWith(_$UserStateFailureImpl value,
          $Res Function(_$UserStateFailureImpl) then) =
      __$$UserStateFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$UserStateFailureImplCopyWithImpl<$Res>
    extends _$UserStateCopyWithImpl<$Res, _$UserStateFailureImpl>
    implements _$$UserStateFailureImplCopyWith<$Res> {
  __$$UserStateFailureImplCopyWithImpl(_$UserStateFailureImpl _value,
      $Res Function(_$UserStateFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$UserStateFailureImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UserStateFailureImpl implements UserStateFailure {
  const _$UserStateFailureImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'UserState.failure(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserStateFailureImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of UserState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserStateFailureImplCopyWith<_$UserStateFailureImpl> get copyWith =>
      __$$UserStateFailureImplCopyWithImpl<_$UserStateFailureImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<String> usernames) foundUsernames,
    required TResult Function(UserModel user, String fcmToken) success,
    required TResult Function(String message) failure,
  }) {
    return failure(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<String> usernames)? foundUsernames,
    TResult? Function(UserModel user, String fcmToken)? success,
    TResult? Function(String message)? failure,
  }) {
    return failure?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<String> usernames)? foundUsernames,
    TResult Function(UserModel user, String fcmToken)? success,
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
    required TResult Function(UserStateInitial value) initial,
    required TResult Function(UserStateLoading value) loading,
    required TResult Function(UserStateFoundUsernames value) foundUsernames,
    required TResult Function(UserStateSuccess value) success,
    required TResult Function(UserStateFailure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UserStateInitial value)? initial,
    TResult? Function(UserStateLoading value)? loading,
    TResult? Function(UserStateFoundUsernames value)? foundUsernames,
    TResult? Function(UserStateSuccess value)? success,
    TResult? Function(UserStateFailure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserStateInitial value)? initial,
    TResult Function(UserStateLoading value)? loading,
    TResult Function(UserStateFoundUsernames value)? foundUsernames,
    TResult Function(UserStateSuccess value)? success,
    TResult Function(UserStateFailure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class UserStateFailure implements UserState {
  const factory UserStateFailure(final String message) = _$UserStateFailureImpl;

  String get message;

  /// Create a copy of UserState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserStateFailureImplCopyWith<_$UserStateFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
