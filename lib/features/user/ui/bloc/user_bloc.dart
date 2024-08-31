import 'package:dot_coaching/features/feature.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'user_bloc.freezed.dart';
part 'user_event.dart';
part 'user_state.dart';

@injectable
class UserBloc extends Bloc<UserEvent, UserState> {
  final GetMeUsecase _getMe;
  final FindUsernamesUsecase _findUsernames;
  final GetFcmTokenUsecase _getFcmToken;
  final UpdateProfileUsecase _updateProfile;

  UserBloc(
    this._getMe,
    this._findUsernames,
    this._getFcmToken,
    this._updateProfile,
  ) : super(const UserStateInitial()) {
    on<UserEventInitialize>(_onInitialize);
    on<UserEventCheckUsername>(_onCheckUsername);
    on<UserEventClear>(_onClear);
    on<UserEventUpdateProfile>(_onUpdateProfile);
  }

  void _onClear(
    UserEventClear event,
    Emitter<UserState> emit,
  ) {
    emit(const UserStateInitial());
  }

  Future<void> _onInitialize(
    UserEventInitialize event,
    Emitter<UserState> emit,
  ) async {
    final res = await Future.wait([_getMe.call(), _getFcmToken.call()]);

    res[0].fold(
      (failure) => emit(UserStateFailure(failure.message)),
      (user) {
        if (user is! UserModel) return;
        final success = state.maybeWhen(
          success: (user, fcmToken) =>
              UserStateSuccess(user: user, fcmToken: fcmToken),
          orElse: () => UserStateSuccess(user: user, fcmToken: ''),
        );
        emit(success);
      },
    );

    res[1].fold(
      (failure) => emit(UserStateFailure(failure.message)),
      (fcmToken) {
        if (fcmToken is! String) return;
        final success = state.maybeWhen(
          success: (user, fcmToken) =>
              UserStateSuccess(user: user, fcmToken: fcmToken),
          orElse: () =>
              UserStateSuccess(user: const UserModel(), fcmToken: fcmToken),
        );
        emit(success);
      },
    );
  }

  Future<void> _onCheckUsername(
    UserEventCheckUsername event,
    Emitter<UserState> emit,
  ) async {
    emit(const UserStateLoading());
    final usernames = await _findUsernames.call(event.params);
    usernames.fold(
      (failure) => emit(UserStateFailure(failure.message)),
      (usernames) => emit(UserStateFoundUsernames(usernames)),
    );
  }

  Future<void> _onUpdateProfile(
    UserEventUpdateProfile event,
    Emitter<UserState> emit,
  ) async {
    emit(const UserStateLoading());
    final res = await _updateProfile.call(event.params);
    res.fold(
      (failure) => emit(UserStateFailure(failure.message)),
      (user) => emit(UserStateSuccess(user: user)),
    );
  }
}
