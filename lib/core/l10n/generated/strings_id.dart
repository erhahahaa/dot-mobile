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
  String get successCreateClub => 'Berhasil membuat klub';

  @override
  String get failedCreateClub => 'Gagal membuat klub';

  @override
  String get alreadyHaveAnAccount => 'Sudah punya akun?';

  @override
  String get clubName => 'Nama Klub';

  @override
  String get clubDescription => 'Deskripsi Klub';

  @override
  String get clubNameRequired => 'Nama klub wajib diisi';

  @override
  String get clubDescriptionRequired => 'Deskripsi klub wajib diisi';

  @override
  String get enterClubName => 'Masukkan nama klub';

  @override
  String get enterClubDescription => 'Masukkan deskripsi klub';

  @override
  String get createClub => 'Buat Klub';

  @override
  String get club => 'Klub';
}
