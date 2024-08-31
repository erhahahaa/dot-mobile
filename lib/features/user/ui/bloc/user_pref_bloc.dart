import 'package:dot_coaching/features/user/user.dart';
import 'package:dot_coaching/utils/helpers/logger.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'user_pref_bloc.freezed.dart';
part 'user_pref_event.dart';

@singleton
class UserPrefBloc extends Bloc<UserPrefEvent, UserPreferencesModel> {
  final GetUserPreferencesUsecase _getUserPreferences;
  final SaveUserPreferencesUsecase _saveUserPreferences;

  UserPrefBloc(
    this._getUserPreferences,
    this._saveUserPreferences,
  ) : super(const UserPreferencesModel()) {
    on<_Started>(_onStarted);
    on<_ChangeLocale>(_onChangeLocale);
    on<_ChangeThemeMode>(_onChangeThemeMode);
  }

  void _onStarted(
    _Started event,
    Emitter<UserPreferencesModel> emit,
  ) async {
    final pref = await _getUserPreferences.call();
    Log.failure('UserPrefBloc: $pref');
    pref.fold(
      (failure) => emit(const UserPreferencesModel()),
      (success) => emit(success),
    );
  }

  Future<void> _onChangeLocale(
    _ChangeLocale event,
    Emitter<UserPreferencesModel> emit,
  ) async {
    final res = await _saveUserPreferences.call(
      SaveUserPreferencesParams(
        prefs: state.copyWith(locale: event.locale),
      ),
    );

    res.fold(
      (failure) => emit(state),
      (success) => emit(state.copyWith(locale: event.locale)),
    );
  }

  void _onChangeThemeMode(
    _ChangeThemeMode event,
    Emitter<UserPreferencesModel> emit,
  ) async {
    final res = await _saveUserPreferences.call(
      SaveUserPreferencesParams(
        prefs: state.copyWith(themeMode: event.themeMode),
      ),
    );

    res.fold(
      (failure) => emit(state),
      (success) => emit(state.copyWith(themeMode: event.themeMode)),
    );
  }
}
