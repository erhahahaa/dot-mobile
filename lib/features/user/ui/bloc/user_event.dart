part of 'user_bloc.dart';

@freezed
class UserEvent with _$UserEvent {
  const factory UserEvent.initialize() = _Initialize;
  const factory UserEvent.checkUsername(
    FindUsernamesParams params,
  ) = _CheckUsername;
  const factory UserEvent.clear() = _Clear;
}
