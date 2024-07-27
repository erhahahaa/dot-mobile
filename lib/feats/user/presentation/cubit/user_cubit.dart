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

  Future<void> init() async {
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

  Future<void> setLocale(Locale locale) async {
    safeEmit(
      isClosed: isClosed,
      emit: emit,
      state: state.copyWith(
        locale: locale,
      ),
    );
  }

  Future<void> setTheme(ThemeMode themeMode) async {
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
