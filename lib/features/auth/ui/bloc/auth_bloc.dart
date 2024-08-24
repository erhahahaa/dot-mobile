import 'package:dot_coaching/features/feature.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'auth_bloc.freezed.dart';
part 'auth_event.dart';
part 'auth_state.dart';

@lazySingleton
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthMeUsecase _authMe;
  final SignInUsecase _signIn;
  final SignUpUsecase _signUp;
  final SignOutUsecase _signOut;

  AuthBloc(
    this._authMe,
    this._signIn,
    this._signUp,
    this._signOut,
  ) : super(const _Initial()) {
    on<_CheckSession>(_onCheckSession);
    on<_SignIn>(_onSignIn);
    on<_SignUp>(_onSignUp);
    on<_SignOut>(_onSignOut);
    on<_Clear>(_onClear);
  }

  void _onClear(
    _Clear event,
    Emitter<AuthState> emit,
  ) {
    emit(const _Initial());
  }

  void _onCheckSession(
    _CheckSession event,
    Emitter<AuthState> emit,
  ) async {
    emit(const _Loading());
    final res = await _authMe.call();
    res.fold(
      (failure) => emit(_Unauthenticated(failure.message)),
      (user) => emit(_Authenticated(user)),
    );
  }

  void _onSignIn(
    _SignIn event,
    Emitter<AuthState> emit,
  ) async {
    emit(const _Loading());
    final res = await _signIn.call(event.params);
    res.fold(
      (failure) => emit(_Unauthenticated(failure.message)),
      (user) {
        // if (sl.isRegistered<IsarService>()) {
        //   sl.unregister<IsarService>();
        //   sl.registerLazySingleton<IsarService>(() => IsarService( ));
        // } else {
        //   sl.registerLazySingleton<IsarService>(() => IsarService( ));
        // }

        // if (sl.isRegistered<DioService>()) {
        //   sl.unregister<DioService>();
        //   sl.registerLazySingleton<DioService>(() => DioService(sl()));
        // } else {
        //   sl.registerLazySingleton<DioService>(() => DioService(sl()));
        // }

        emit(_Authenticated(user));
      },
    );
  }

  void _onSignUp(
    _SignUp event,
    Emitter<AuthState> emit,
  ) async {
    emit(const _Loading());
    final res = await _signUp.call(event.params);
    res.fold(
      (failure) => emit(_Unauthenticated(failure.message)),
      (user) {
        //  if (sl.isRegistered<IsarService>()) {
        //     sl.unregister<IsarService>();
        //     sl.registerLazySingleton<IsarService>(() => IsarService());
        //   } else {
        //     sl.registerLazySingleton<IsarService>(() => IsarService());
        //   }

        //   if (sl.isRegistered<DioService>()) {
        //     sl.unregister<DioService>();
        //     sl.registerLazySingleton<DioService>(() => DioService(sl()));
        //   } else {
        //     sl.registerLazySingleton<DioService>(() => DioService(sl()));
        //   }

        emit(_Authenticated(user));
      },
    );
  }

  void _onSignOut(
    _SignOut event,
    Emitter<AuthState> emit,
  ) async {
    emit(const _Loading());
    final res = await _signOut.call();
    res.fold(
      (failure) => emit(_Unauthenticated(failure.message)),
      (_) => emit(const _Unauthenticated('Signed out')),
    );
  }
}
