import 'dart:io';

import 'package:dot_coaching/core/core.dart';
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
  final ImagePickerClient _imagePickerClient;
  UserCubit(
    this._userRepo,
    this._imagePickerClient,
  ) : super(const UserState());

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

  void emitInitial() => safeEmit(
        isClosed: isClosed,
        emit: emit,
        state: state.copyWith(state: BaseState.initial),
      );

  void clearUsernameSuggestions() => safeEmit(
        isClosed: isClosed,
        emit: emit,
        state: state.copyWith(
          usernameSuggestions: [],
        ),
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

  Future<void> checkUsername(
    String username,
    String email,
  ) async {
    final res = await _userRepo.findUsername(username, email);
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
            usernameSuggestions: r,
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

  Future<void> updateProfile(UpdateUserParams params) async {
    emitLoading();
    final res = await _userRepo.updateProfile(params);
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
            user: r,
          ),
        );
      },
    );
  }

  Future<bool> pickImageFromGallery() async {
    final res = await _imagePickerClient.getImageFromGallery();

    return res.fold(
      (l) => false,
      (r) {
        safeEmit(
          isClosed: isClosed,
          emit: emit,
          state: state.copyWith(
            image: File(r.path),
          ),
        );
        return true;
      },
    );
  }

  Future<bool> pickImageFromCamera() async {
    final res = await _imagePickerClient.getImageFromCamera();

    return res.fold(
      (l) => false,
      (r) {
        safeEmit(
          isClosed: isClosed,
          emit: emit,
          state: state.copyWith(
            image: File(r.path),
          ),
        );
        return true;
      },
    );
  }
}
