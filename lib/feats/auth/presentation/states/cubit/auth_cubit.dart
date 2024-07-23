import 'package:dot_coaching/core/core.dart';
import 'package:dot_coaching/di.dart';
import 'package:dot_coaching/feats/feats.dart';
import 'package:dot_coaching/utils/utils.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_cubit.freezed.dart';
part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  final AuthRepo _authRepo;
  final UserRepo _userRepo;

  AuthCubit(this._authRepo, this._userRepo) : super(const AuthState());

  void clear() {
    safeEmit(
      isClosed: isClosed,
      emit: emit,
      state: const AuthState(),
    );
  }

  void showHidePassword() {
    safeEmit(
      isClosed: isClosed,
      emit: emit,
      state: state.copyWith(
        passwordVisibility:
            state.passwordVisibility == PasswordVisibility.hidden
                ? PasswordVisibility.visible
                : PasswordVisibility.hidden,
      ),
    );
  }

  Future<void> init() async {
    final hasLocalUser = await getLocalMe();
    if (hasLocalUser) {
      checkAuth();
    } else {
      safeEmit(
        isClosed: isClosed,
        emit: emit,
        state: state.copyWith(
          status: AuthStatus.unauthenticated,
        ),
      );
    }
  }

  Future<bool> getLocalMe() async {
    final res = await _userRepo.getMe();
    return res.fold(
      (l) => false,
      (r) => true,
    );
  }

  Future<void> checkAuth() async {
    final res = await _authRepo.me();
    res.fold(
      (l) {
        safeEmit(
          isClosed: isClosed,
          emit: emit,
          state: state.copyWith(
            status: AuthStatus.unauthenticated,
            failure: l,
          ),
        );
        Future.delayed(
          const Duration(seconds: 2),
          () => safeEmit(
            isClosed: isClosed,
            emit: emit,
            state: state.copyWith(
              failure: null,
            ),
          ),
        );
      },
      (r) {
        safeEmit(
          isClosed: isClosed,
          emit: emit,
          state: state.copyWith(
            status: AuthStatus.authenticated,
          ),
        );
      },
    );
  }

  void signIn(LoginParams params) async {
    safeEmit(
      isClosed: isClosed,
      emit: emit,
      state: state.copyWith(
        state: BaseState.loading,
      ),
    );
    final res = await _authRepo.signIn(params);
    res.fold(
      (l) {
        safeEmit(
          isClosed: isClosed,
          emit: emit,
          state: state.copyWith(
            state: BaseState.failure,
            failure: l,
          ),
        );
        Future.delayed(
          const Duration(seconds: 2),
          () => safeEmit(
            isClosed: isClosed,
            emit: emit,
            state: state.copyWith(
              failure: null,
            ),
          ),
        );
      },
      (r) {
        di.reset();
        safeEmit(
          isClosed: isClosed,
          emit: emit,
          state: state.copyWith(
            state: BaseState.success,
            status: AuthStatus.authenticated,
          ),
        );
      },
    );
  }

  void signUp(RegisterParams params) async {
    safeEmit(
      isClosed: isClosed,
      emit: emit,
      state: state.copyWith(
        state: BaseState.loading,
      ),
    );
    final res = await _authRepo.signUp(params);
    res.fold(
      (l) {
        safeEmit(
          isClosed: isClosed,
          emit: emit,
          state: state.copyWith(
            state: BaseState.failure,
            failure: l,
          ),
        );
        Future.delayed(
          const Duration(seconds: 2),
          () => safeEmit(
            isClosed: isClosed,
            emit: emit,
            state: state.copyWith(
              failure: null,
            ),
          ),
        );
      },
      (r) {
        safeEmit(
          isClosed: isClosed,
          emit: emit,
          state: state.copyWith(
            state: BaseState.success,
            status: AuthStatus.authenticated,
          ),
        );
      },
    );
  }

  void logout() async {
    safeEmit(
      isClosed: isClosed,
      emit: emit,
      state: state.copyWith(
        state: BaseState.loading,
      ),
    );
    final res = await _authRepo.logout();
    res.fold(
      (l) {
        safeEmit(
          isClosed: isClosed,
          emit: emit,
          state: state.copyWith(
            state: BaseState.failure,
            failure: l,
          ),
        );
        Future.delayed(
          const Duration(seconds: 2),
          () => safeEmit(
            isClosed: isClosed,
            emit: emit,
            state: state.copyWith(
              failure: null,
            ),
          ),
        );
      },
      (r) {
        di.reset();
        safeEmit(
          isClosed: isClosed,
          emit: emit,
          state: state.copyWith(
            state: BaseState.success,
            status: AuthStatus.unauthenticated,
          ),
        );
      },
    );
  }
}
