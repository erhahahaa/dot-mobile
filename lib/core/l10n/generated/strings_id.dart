import 'strings.dart';

/// The translations for Indonesian (`id`).
class StringsId extends Strings {
  StringsId([String locale = 'id']) : super(locale);

  @override
  String get signIn => 'Masuk';

  @override
  String get signOut => 'Keluar';

  @override
  String get signUp => 'Daftar';

  @override
  String get failedSignIn => 'Gagal masuk';

  @override
  String get failedSignUp => 'Gagal daftar';

  @override
  String get failedSignOut => 'Gagal keluar';

  @override
  String get successSignIn => 'Berhasil masuk';

  @override
  String get successSignUp => 'Berhasil daftar';

  @override
  String get successSignOut => 'Berhasil keluar';

  @override
  String get alreadyHaveAnAccount => 'Sudah punya akun?';
}
