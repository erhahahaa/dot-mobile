import 'strings.dart';

// ignore_for_file: type=lint

/// The translations for Indonesian (`id`).
class StringsId extends Strings {
  StringsId([String locale = 'id']) : super(locale);

  @override
  String get account => 'Akun';

  @override
  String get accountCreated => 'Akun berhasil dibuat';

  @override
  String get addExercise => 'Tambah Latihan';

  @override
  String get addMember => 'Tambah Anggota';

  @override
  String get addQuestion => 'Tambah Pertanyaan';

  @override
  String get exercise => 'Latihan';

  @override
  String get address => 'Alamat';

  @override
  String get addressIsRequired => 'Alamat wajib diisi';

  @override
  String get alreadyHaveAnAccount => 'Sudah punya akun?';

  @override
  String get answer => 'Jawaban';

  @override
  String get processing => 'Memproses...';

  @override
  String get assetsIsEmpty => 'Aset kosong';

  @override
  String get assetUploadSuccess => 'Aset berhasil diunggah';

  @override
  String get noFileSelected => 'Tidak ada file yang dipilih';

  @override
  String get pleaseWaitAssetIsBeingProcessed => 'Harap tunggu, aset sedang diproses';

  @override
  String get downloadingAssets => 'Mengunduh aset...';

  @override
  String get upload => 'Unggah';

  @override
  String get uploadingAssets => 'Mengunggah aset...';

  @override
  String get size => 'Ukuran';

  @override
  String get selectTacticalBoard => 'Pilih Papan Taktik';

  @override
  String get assetInfo => 'Info Aset';

  @override
  String get urlCopied => 'URL disalin';

  @override
  String get close => 'Tutup';

  @override
  String areYouSureYouWantToDeleteAthleteNameEvaluation(String? athleteName) {
    return 'Apakah Anda yakin ingin menghapus evaluasi $athleteName?';
  }

  @override
  String areYouSureYouWantToDeleteExam(String? examName) {
    return 'Apakah Anda yakin ingin menghapus ujian $examName?';
  }

  @override
  String areYouSureYouWantToDeleteProgram(String? programName) {
    return 'Apakah Anda yakin ingin menghapus program $programName?';
  }

  @override
  String areYouSureYouWantToKickUsernameFromClubName(String? clubName, String? username) {
    return 'Apakah Anda yakin ingin mengeluarkan $username dari $clubName?';
  }

  @override
  String areYouSureYouWantToLeaveClubName(String? clubName) {
    return 'Apakah Anda yakin ingin meninggalkan $clubName?';
  }

  @override
  String get assets => 'Aset';

  @override
  String get athlete => 'Atlet';

  @override
  String get athleteDetail => 'Detail Atlet';

  @override
  String get athleteEvaluation => 'Evaluasi Atlet';

  @override
  String get bornDate => 'Tanggal Lahir';

  @override
  String get bornDateIsRequired => 'Tanggal lahir wajib diisi';

  @override
  String get bornPlace => 'Tempat Lahir';

  @override
  String get bornPlaceIsRequired => 'Tempat lahir wajib diisi';

  @override
  String get calendar => 'Kalender';

  @override
  String get club => 'Klub';

  @override
  String clubAbout(String? clubName) {
    return 'Tentang $clubName';
  }

  @override
  String get clubCreatedSuccessfully => 'Klub berhasil dibuat';

  @override
  String get clubDescription => 'Deskripsi Klub';

  @override
  String get clubDescriptionIsRequired => 'Deskripsi klub diperlukan';

  @override
  String clubDetail(String? clubName) {
    return 'Detail $clubName';
  }

  @override
  String clubDoesntHaveAnyEvaluation(String? clubName) {
    return '$clubName belum memiliki evaluasi';
  }

  @override
  String clubDoesntHaveAnyExam(String? clubName) {
    return '$clubName belum memiliki ujian';
  }

  @override
  String clubDoesntHaveAnyProgram(String? clubName) {
    return '$clubName belum memiliki program';
  }

  @override
  String clubDoesntHaveAnyTactic(String? clubName) {
    return '$clubName belum memiliki taktik';
  }

  @override
  String get clubImageIsRequired => 'Gambar klub diperlukan';

  @override
  String clubMembers(String? clubName) {
    return 'Anggota $clubName';
  }

  @override
  String get clubName => 'Nama Klub';

  @override
  String get clubNameIsRequired => 'Nama klub diperlukan';

  @override
  String clubOverview(String? clubName) {
    return 'Ringkasan $clubName';
  }

  @override
  String clubPrograms(String? clubName) {
    return 'Program $clubName';
  }

  @override
  String get clubUpdatedSuccessfully => 'Klub berhasil diperbarui';

  @override
  String clubWithNameNotFound(String name) {
    return 'Klub dengan nama $name tidak ditemukan';
  }

  @override
  String get createClub => 'Buat Klub';

  @override
  String get createEvaluation => 'Buat Evaluasi';

  @override
  String get createEvaluationFailed => 'Gagal membuat evaluasi';

  @override
  String get createExam => 'Buat Ujian';

  @override
  String get createExamFailed => 'Gagal membuat ujian';

  @override
  String get createFailed => 'Gagal dibuat';

  @override
  String get createProgram => 'Buat Program';

  @override
  String get createSuccess => 'Berhasil dibuat';

  @override
  String get createTactical => 'Buat Taktik';

  @override
  String get deleteEvaluation => 'Hapus Evaluasi';

  @override
  String get deleteExam => 'Hapus Ujian';

  @override
  String get deleteExamFailed => 'Gagal menghapus ujian';

  @override
  String get deleteFailed => 'Gagal dihapus';

  @override
  String get deleteProgram => 'Hapus Program';

  @override
  String get deleteProgramFailed => 'Gagal menghapus program';

  @override
  String get deleteSuccess => 'Berhasil dihapus';

  @override
  String get description => 'Deskripsi';

  @override
  String get detail => 'Detail';

  @override
  String get dontHaveAnAccount => 'Belum punya akun?';

  @override
  String get email => 'Email';

  @override
  String get emailIsRequired => 'Email diperlukan';

  @override
  String get emailOrUsernameOrPhone => 'Email atau nama pengguna atau telepon';

  @override
  String get emailOrUsernameOrPhoneIsRequired => 'Email atau nama pengguna atau telepon diperlukan';

  @override
  String get endDate => 'Tanggal Selesai';

  @override
  String get enterClubDescription => 'Masukkan deskripsi klub';

  @override
  String get enterClubName => 'Masukkan nama klub';

  @override
  String get enterExamDescription => 'Masukkan deskripsi ujian';

  @override
  String get enterExamTitle => 'Masukkan judul ujian';

  @override
  String get enterExerciseDescription => 'Masukkan deskripsi latihan';

  @override
  String get enterExerciseName => 'Masukkan nama latihan';

  @override
  String get enterHeight => 'Masukkan tinggi';

  @override
  String get enterProgramEndDate => 'Masukkan tanggal selesai program';

  @override
  String get enterProgramName => 'Masukkan nama program';

  @override
  String get enterProgramStartDate => 'Masukkan tanggal mulai program';

  @override
  String get enterQuestion => 'Masukkan pertanyaan';

  @override
  String get enterTacticalDescription => 'Masukkan deskripsi taktik';

  @override
  String get enterTacticalName => 'Masukkan nama taktik';

  @override
  String get enterTotalIntensity => 'Masukkan total intensitas';

  @override
  String get enterTotalPlayers => 'Masukkan jumlah pemain';

  @override
  String get enterTotalReps => 'Masukkan total reps';

  @override
  String get enterTotalRest => 'Masukkan total jeda';

  @override
  String get enterTotalSets => 'Masukkan total set';

  @override
  String get enterTotalTempo => 'Masukkan total tempo';

  @override
  String get enterWidth => 'Masukkan lebar';

  @override
  String get enterYourAddress => 'Masukkan alamat Anda';

  @override
  String get enterYourBornDate => 'Masukkan tanggal lahir Anda';

  @override
  String get enterYourBornPlace => 'Masukkan tempat lahir Anda';

  @override
  String get enterYourEmail => 'Masukkan email Anda';

  @override
  String get enterYourEmailOrUsernameOrPhone => 'Masukkan email atau nama pengguna atau telepon Anda';

  @override
  String get enterYourExpertise => 'Masukkan keahlian Anda';

  @override
  String get enterYourFullName => 'Masukkan nama lengkap Anda';

  @override
  String get enterYourGender => 'Masukkan jenis kelamin Anda';

  @override
  String get enterYourPassword => 'Masukkan kata sandi Anda';

  @override
  String get enterYourPhone => 'Masukkan telepon Anda';

  @override
  String get enterYourReligion => 'Masukkan agama Anda';

  @override
  String get enterYourUsername => 'Masukkan nama pengguna Anda';

  @override
  String get error => 'Kesalahan';

  @override
  String get evaluate => 'Evaluasi';

  @override
  String get evaluation => 'Evaluasi';

  @override
  String get evaluationCreatedSuccessfully => 'Evaluasi berhasil dibuat';

  @override
  String evaluationDeletedSuccessfully(String? athleteName) {
    return 'Evaluasi $athleteName berhasil dihapus';
  }

  @override
  String get evaluationDetail => 'Detail Evaluasi';

  @override
  String get evaluations => 'Evaluasi';

  @override
  String get evaluationUpdatedSuccessfully => 'Evaluasi berhasil diperbarui';

  @override
  String get evaluator => 'Penilai';

  @override
  String get exam => 'Ujian';

  @override
  String get examDeletedSuccessfully => 'Ujian berhasil dihapus';

  @override
  String get examDescription => 'Deskripsi Ujian';

  @override
  String get examDescriptionIsRequired => 'Deskripsi ujian wajib diisi';

  @override
  String get examDetail => 'Detail Ujian';

  @override
  String examQuestions(String? examName) {
    return 'Pertanyaan $examName';
  }

  @override
  String get exams => 'Ujian';

  @override
  String get examTitle => 'Judul Ujian';

  @override
  String get examTitleIsRequired => 'Judul ujian wajib diisi';

  @override
  String get exerciseDescription => 'Deskripsi Latihan';

  @override
  String get exerciseName => 'Nama Latihan';

  @override
  String get exerciseNameIsRequired => 'Nama latihan wajib diisi';

  @override
  String get exercises => 'Latihan';

  @override
  String get exerciseSavedSuccessfully => 'Latihan berhasil disimpan';

  @override
  String get expertise => 'Keahlian';

  @override
  String get expertiseIsRequired => 'Keahlian wajib diisi';

  @override
  String get failedToUpdateTacticalStrategy => 'Gagal memperbarui strategi taktik';

  @override
  String get fullName => 'Nama Lengkap';

  @override
  String get fullNameIsRequired => 'Nama lengkap diperlukan';

  @override
  String get gender => 'Jenis Kelamin';

  @override
  String get genderIsRequired => 'Jenis kelamin diperlukan';

  @override
  String get height => 'Tinggi (m)';

  @override
  String get heightIsRequired => 'Tinggi wajib diisi';

  @override
  String get intensity => 'Intensitas';

  @override
  String get intensityIsRequired => 'Intensitas wajib diisi';

  @override
  String get invalidCredentials => 'Kredensial tidak valid';

  @override
  String get invalidEmail => 'Email tidak valid';

  @override
  String get invalidNumber => 'Nomor tidak valid';

  @override
  String get invalidOption => 'Opsi tidak valid';

  @override
  String get invalidPhone => 'Telepon tidak valid';

  @override
  String get invalidPhoneNumber => 'Nomor telepon tidak valid';

  @override
  String get invalidUnit => 'Unit tidak valid';

  @override
  String get kickMember => 'Keluarkan Anggota';

  @override
  String get leaveClub => 'Tinggalkan Klub';

  @override
  String get loadingExercises => 'Memuat latihan...';

  @override
  String get loadingQuestions => 'Memuat pertanyaan...';

  @override
  String get members => 'Anggota';

  @override
  String get myClubs => 'Klub Saya';

  @override
  String get name => 'Nama';

  @override
  String get newClub => 'Klub Baru';

  @override
  String get newEvaluation => 'Evaluasi Baru';

  @override
  String get newExam => 'Ujian Baru';

  @override
  String get newProgram => 'Program Baru';

  @override
  String get newTactic => 'Taktik Baru';

  @override
  String get no => 'Tidak';

  @override
  String get noImageSelected => 'Tidak ada gambar yang dipilih';

  @override
  String get noSpaceAllowed => 'Tidak boleh ada spasi';

  @override
  String get notJoinedAnyClubs => 'Belum bergabung dengan klub mana pun';

  @override
  String get obsecuredState => 'Keadaan Tertutup';

  @override
  String get overview => 'Ringkasan';

  @override
  String get password => 'Kata Sandi';

  @override
  String get passwordIsRequired => 'Kata sandi diperlukan';

  @override
  String get passwordMustBeAtLeast8Characters => 'Kata sandi harus terdiri dari setidaknya 8 karakter';

  @override
  String get phone => 'Telepon';

  @override
  String get phoneIsRequired => 'Telepon diperlukan';

  @override
  String get pleaseRestartTheApp => 'Silakan mulai ulang aplikasi';

  @override
  String get pleaseSelectAnImageForEachExercise => 'Silakan pilih gambar untuk setiap latihan';

  @override
  String get pleaseSelectUnit => 'Silakan pilih unit';

  @override
  String get pleaseTryAgain => 'Silakan coba lagi';

  @override
  String get preferences => 'Preferensi';

  @override
  String get profileUpdatedSuccessfully => 'Profil berhasil diperbarui';

  @override
  String get program => 'Program';

  @override
  String get programCreateFailed => 'Gagal membuat program';

  @override
  String get programDeletedSuccessfully => 'Program berhasil dihapus';

  @override
  String get programDetail => 'Detail Program';

  @override
  String get programEndDate => 'Tanggal Selesai Program';

  @override
  String get programEndDateIsRequired => 'Tanggal selesai program wajib diisi';

  @override
  String get programImageIsRequired => 'Gambar program wajib diisi';

  @override
  String get programName => 'Nama Program';

  @override
  String get programNameIsRequired => 'Nama program wajib diisi';

  @override
  String get programs => 'Program';

  @override
  String get programStartDate => 'Tanggal Mulai Program';

  @override
  String get programStartDateIsRequired => 'Tanggal mulai program wajib diisi';

  @override
  String get programUpdateFailed => 'Gagal memperbarui program';

  @override
  String get question => 'Pertanyaan';

  @override
  String get questionIsRequired => 'Pertanyaan wajib diisi';

  @override
  String get questions => 'Pertanyaan';

  @override
  String get questionSavedSuccessfully => 'Pertanyaan berhasil disimpan';

  @override
  String get questionSaveFailed => 'Gagal menyimpan pertanyaan';

  @override
  String get questionType => 'Jenis Pertanyaan';

  @override
  String get questionTypeIsRequired => 'Jenis pertanyaan wajib diisi';

  @override
  String get religion => 'Agama';

  @override
  String get religionIsRequired => 'Agama wajib diisi';

  @override
  String get reload => 'Muat Ulang';

  @override
  String get reps => 'Reps';

  @override
  String get repsIsRequired => 'Reps wajib diisi';

  @override
  String get rest => 'Jeda';

  @override
  String get restIsRequired => 'Jeda wajib diisi';

  @override
  String get role => 'Peran';

  @override
  String get roleIsRequired => 'Peran diperlukan';

  @override
  String get save => 'Simpan';

  @override
  String get saveStrategy => 'Simpan Strategi';

  @override
  String get search => 'Cari';

  @override
  String get selectExerciseAsset => 'Pilih aset latihan';

  @override
  String get selectProgramAsset => 'Pilih aset program';

  @override
  String get selectQuestionType => 'Pilih jenis pertanyaan';

  @override
  String get selectRole => 'Pilih peran';

  @override
  String get selectSportType => 'Pilih jenis olahraga';

  @override
  String get sets => 'Set';

  @override
  String get setsIsRequired => 'Set wajib diisi';

  @override
  String get signIn => 'Masuk';

  @override
  String get signInFailed => 'Gagal Masuk';

  @override
  String get signInSuccess => 'Berhasil Masuk';

  @override
  String get signOut => 'Keluar';

  @override
  String get signUp => 'Daftar';

  @override
  String get signUpFailed => 'Gagal Daftar';

  @override
  String get signUpSuccess => 'Berhasil Daftar';

  @override
  String get sportType => 'Jenis Olahraga';

  @override
  String get sportTypeIsRequired => 'Jenis olahraga diperlukan';

  @override
  String get startDate => 'Tanggal Mulai';

  @override
  String get strategyNotFound => 'Strategi tidak ditemukan';

  @override
  String get success => 'Berhasil';

  @override
  String get tactic => 'Taktik';

  @override
  String get tacticalBoard => 'Papan Taktik';

  @override
  String get tacticalBoardIsRequired => 'Papan taktik wajib diisi';

  @override
  String get tacticalDescription => 'Deskripsi Taktik';

  @override
  String get tacticalDescriptionIsRequired => 'Deskripsi taktik wajib diisi';

  @override
  String get tacticalName => 'Nama Taktik';

  @override
  String get tacticalNameIsRequired => 'Nama taktik wajib diisi';

  @override
  String get tacticalStrategyUpdatedSuccessfully => 'Strategi taktik berhasil diperbarui';

  @override
  String get tactics => 'Taktik';

  @override
  String get tempo => 'Tempo';

  @override
  String get tempoIsRequired => 'Tempo wajib diisi';

  @override
  String get title => 'Judul';

  @override
  String get totalPlayers => 'Jumlah Pemain / Tim';

  @override
  String get totalPlayersIsRequired => 'Jumlah pemain wajib diisi';

  @override
  String get type => 'Jenis';

  @override
  String updateClub(String? clubName) {
    return 'Perbarui $clubName';
  }

  @override
  String get updateEvaluation => 'Perbarui Evaluasi';

  @override
  String get updateEvaluationFailed => 'Gagal memperbarui evaluasi';

  @override
  String get updateExam => 'Perbarui Ujian';

  @override
  String get updateExamFailed => 'Gagal memperbarui ujian';

  @override
  String get updateFailed => 'Gagal diperbarui';

  @override
  String get updateProfile => 'Perbarui Profil';

  @override
  String get updateProfileFailed => 'Gagal memperbarui profil';

  @override
  String get updateProgram => 'Perbarui Program';

  @override
  String get updateSuccess => 'Berhasil diperbarui';

  @override
  String get updateTactical => 'Perbarui Taktik';

  @override
  String get username => 'Nama Pengguna';

  @override
  String get usernameCannotContainSpace => 'Nama pengguna tidak boleh mengandung spasi';

  @override
  String get usernameIsAlreadyTaken => 'Nama pengguna sudah digunakan';

  @override
  String get usernameIsRequired => 'Nama pengguna diperlukan';

  @override
  String get usernameSuggestions => 'Saran Nama Pengguna';

  @override
  String userWithNameNotFound(String name) {
    return 'Pengguna dengan nama $name tidak ditemukan';
  }

  @override
  String welcomeBack(String name) {
    return 'Selamat datang kembali $name';
  }

  @override
  String get width => 'Lebar (m)';

  @override
  String get widthIsRequired => 'Lebar wajib diisi';

  @override
  String wouldYouLikeToAddUsernameMemberToClubName(String clubName, String username) {
    return 'Apakah Anda ingin menambahkan anggota $username ke $clubName?';
  }

  @override
  String get yes => 'Ya';
}
