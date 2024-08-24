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

  UserBloc(
    this._getMe,
    this._findUsernames,
    this._getFcmToken,
  ) : super(const _Initial()) {
    on<_Initialize>(_onInitialize);
    on<_CheckUsername>(_onCheckUsername);
    on<_Clear>(_onClear);
  }

  void _onClear(
    _Clear event,
    Emitter<UserState> emit,
  ) {
    emit(const _Initial());
  }

  Future<void> _onInitialize(
    _Initialize event,
    Emitter<UserState> emit,
  ) async {
    final res = await Future.wait([_getMe.call(), _getFcmToken.call()]);
    
    res[0].fold(
      (failure) => emit(_Failure(failure.message)),
      (user) {
        if (user is! UserModel) return;
        final success = state.maybeWhen(
          success: (user, fcmToken) => _Success(user: user, fcmToken: fcmToken),
          orElse: () => _Success(user: user, fcmToken: ''),
        );
        emit(success);
      },
    );

    res[1].fold(
      (failure) => emit(_Failure(failure.message)),
      (fcmToken) {
        if (fcmToken is! String) return;
        final success = state.maybeWhen(
          success: (user, fcmToken) => _Success(user: user, fcmToken: fcmToken),
          orElse: () => _Success(user: const UserModel(), fcmToken: fcmToken),
        );
        emit(success);
      },
    );
  }

  Future<void> _onCheckUsername(
    _CheckUsername event,
    Emitter<UserState> emit,
  ) async {
    emit(const _Loading());
    final usernames = await _findUsernames.call(event.params);
    usernames.fold(
      (failure) => emit(_Failure(failure.message)),
      (usernames) => emit(_FoundUsernames(usernames)),
    );
  }
}
