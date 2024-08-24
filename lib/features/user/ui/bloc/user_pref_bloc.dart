import 'package:dot_coaching/features/user/user.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'user_pref_bloc.freezed.dart';
part 'user_pref_event.dart';

@singleton
class UserPrefBloc extends Bloc<UserPrefEvent, UserPreferencesModel> {
  final GetUserPreferencesUsecase _getUserPreferences;

  UserPrefBloc(
    this._getUserPreferences,
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
    pref.fold(
      (failure) => emit(const UserPreferencesModel()),
      (success) => emit(success),
    );
  }

  void _onChangeLocale(
    _ChangeLocale event,
    Emitter<UserPreferencesModel> emit,
  ) {
    emit(state.copyWith(locale: event.locale));
  }

  void _onChangeThemeMode(
    _ChangeThemeMode event,
    Emitter<UserPreferencesModel> emit,
  ) {
    emit(state.copyWith(themeMode: event.themeMode));
  }
}
