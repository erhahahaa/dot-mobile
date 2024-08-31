part of 'user_bloc.dart';

@freezed
class UserEvent with _$UserEvent {
  const factory UserEvent.initialize() = UserEventInitialize;
  const factory UserEvent.checkUsername(
    FindUsernamesParams params,
  ) = UserEventCheckUsername;
  const factory UserEvent.clear() = UserEventClear;
  const factory UserEvent.updateProfile(
    UpdateProfileParams params,
  ) = UserEventUpdateProfile;
}
