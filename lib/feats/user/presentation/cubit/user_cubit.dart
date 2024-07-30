import 'package:dot_coaching/feats/feats.dart';
import 'package:dot_coaching/feats/user/user.dart';
import 'package:dot_coaching/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_cubit.freezed.dart';
part 'user_state.dart';

class UserCubit extends Cubit<UserState> {
  final UserRepo _userRepo;
  UserCubit(this._userRepo) : super(const UserState());

  void clear() {
    safeEmit(
      isClosed: isClosed,
      emit: emit,
      state: const UserState(),
    );
  }

  void emitLoading() => safeEmit(
        isClosed: isClosed,
        emit: emit,
        state: state.copyWith(state: BaseState.loading),
      );

  Future<void> init() async {
    await _fetchUserPref();
    await _fetchLocalUser();
  }

  Future<void> _fetchLocalUser() async {
    final res = await _userRepo.getMe();

    res.fold(
      (l) => null,
      (r) {
        final u = UserModel.fromEntity(r);
        safeEmit(
          isClosed: isClosed,
          emit: emit,
          state: state.copyWith(
            user: u,
          ),
        );
      },
    );
  }

  Future<void> _fetchUserPref() async {
    final res = await _userRepo.getUserPref();

    res.fold(
      (l) => _userRepo
          .saveUserPref(const UserPreferencesModel())
          .then((_) => _fetchUserPref()),
      (r) {
        safeEmit(
          isClosed: isClosed,
          emit: emit,
          state: state.copyWith(
            locale: r.locale,
            themeMode: r.themeMode,
          ),
        );
      },
    );
  }

  Future<void> setLocale(Locale locale) async {
    final param = UserPreferencesModel(
      locale: locale,
      themeMode: state.themeMode,
    );
    await _userRepo.saveUserPref(param);
    safeEmit(
      isClosed: isClosed,
      emit: emit,
      state: state.copyWith(
        locale: locale,
      ),
    );
  }

  Future<void> setTheme(ThemeMode themeMode) async {
    final param = UserPreferencesModel(
      locale: state.locale,
      themeMode: themeMode,
    );
    await _userRepo.saveUserPref(param);
    safeEmit(
      isClosed: isClosed,
      emit: emit,
      state: state.copyWith(
        themeMode: themeMode,
      ),
    );

    log.e("USER CUBTI State: $state");
  }
}
