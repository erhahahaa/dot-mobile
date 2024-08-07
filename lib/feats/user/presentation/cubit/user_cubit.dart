import 'dart:async';
import 'dart:io';

import 'package:dot_coaching/core/core.dart';
import 'package:dot_coaching/feats/feats.dart';
import 'package:dot_coaching/utils/utils.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_cubit.freezed.dart';
part 'user_state.dart';

class UserCubit extends Cubit<UserState> {
  final UserRepo _userRepo;
  final ImagePickerClient _imagePickerClient;

  late StreamSubscription _fcmTokenSubscription;
  late StreamSubscription _firebaseMessageSubscription;

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

  @override
  Future<void> close() async {
    await _fcmTokenSubscription.cancel();
    await _firebaseMessageSubscription.cancel();
    super.close();
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
    _listenFCMToken();
    _listenMessage();
    getNotification();
  }

  void _listenFCMToken() {
    _fcmTokenSubscription = FirebaseMessaging.instance.onTokenRefresh
        .listen((token) async => await _userRepo.updateFCMToken(token));
  }

  void _listenMessage() {
    _firebaseMessageSubscription =
        FirebaseMessaging.onMessage.listen((RemoteMessage message) async {
      final notification = NotificationDataModel.fromJson(message.data);
      final notifications =
          List<NotificationDataModel>.from(state.notifications);
      if (notifications.any((n) => n.uid == notification.uid)) {
        return;
      }
      notifications.add(notification);
      safeEmit(
        isClosed: isClosed,
        emit: emit,
        state: state.copyWith(
          notifications: notifications,
        ),
      );
      await _userRepo.cacheNotification(notification);
    });
  }

  Future<void> getNotification() async {
    final message = await FirebaseMessaging.instance.getInitialMessage();
    log.f('INITIAL MESSAGE: ${message?.toMap()}');
    if (message != null) {
      final notification = NotificationDataModel.fromJson(message.data);
      final notifications =
          List<NotificationDataModel>.from(state.notifications);
      if (notifications.any((n) => n.uid == notification.uid)) {
        return;
      }
      notifications.add(notification);
      safeEmit(
        isClosed: isClosed,
        emit: emit,
        state: state.copyWith(
          notifications: notifications,
        ),
      );
    } else {
      final res = await _userRepo.getNotifications();
      res.fold(
        (l) => null,
        (r) {
          safeEmit(
            isClosed: isClosed,
            emit: emit,
            state: state.copyWith(
              notifications: r,
            ),
          );
        },
      );
    }
  }

  Future<void> clearNotifications() async {}

  void clearNotification() async {
    final res = await _userRepo.clearNotifications();
    res.fold(
      (l) => null,
      (r) {
        safeEmit(
          isClosed: isClosed,
          emit: emit,
          state: state.copyWith(
            notifications: [],
          ),
        );
      },
    );
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
