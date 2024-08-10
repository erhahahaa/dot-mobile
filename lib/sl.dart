import 'package:dot_coaching/core/core.dart';
import 'package:dot_coaching/feats/feats.dart';
import 'package:file_picker/file_picker.dart';
import 'package:get_it/get_it.dart';

GetIt sl = GetIt.instance;

Future<void> initDependencies() async {
  final isarClient = IsarClient();
  await isarClient.initIsar();

  sl.registerSingleton<IsarClient>(
    isarClient,
  );
  sl.registerSingleton<DioClient>(
    DioClient(sl<IsarClient>()),
  );
  sl.registerLazySingleton<ImagePickerClient>(
    () => ImagePickerClient(),
  );

  sl.registerLazySingleton<FilePickerClient>(
    () => FilePickerClient(FilePicker.platform),
  );

  _intiRepos();
  _initCubits();
}

void _intiRepos() {
  sl.registerLazySingleton<AuthRepo>(
    () => AuthRepoImpl(
      sl<DioClient>(),
      sl<IsarClient>(),
    ),
  );

  sl.registerLazySingleton<ClubRepo>(
    () => ClubRepoImpl(
      sl<DioClient>(),
      sl<IsarClient>(),
    ),
  );

  sl.registerLazySingleton<ExamRepo>(
    () => ExamRepoImpl(
      sl<DioClient>(),
      sl<IsarClient>(),
    ),
  );

  sl.registerLazySingleton<QuestionRepo>(
    () => QuestionRepoImpl(
      sl<DioClient>(),
      sl<IsarClient>(),
    ),
  );

  sl.registerLazySingleton<ProgramRepo>(
    () => ProgramRepoImpl(
      sl<DioClient>(),
      sl<IsarClient>(),
    ),
  );

  sl.registerLazySingleton<ExerciseRepo>(
    () => ExerciseRepoImpl(
      sl<DioClient>(),
      sl<IsarClient>(),
    ),
  );

  sl.registerLazySingleton<TacticalRepo>(
    () => TacticalRepoImpl(
      sl<DioClient>(),
      sl<IsarClient>(),
    ),
  );

  sl.registerLazySingleton<MediaRepo>(
    () => MediaRepoImpl(
      sl<DioClient>(),
      sl<IsarClient>(),
    ),
  );

  sl.registerLazySingleton<UserRepo>(
    () => UserRepoImpl(
      sl<DioClient>(),
      sl<IsarClient>(),
    ),
  );

  sl.registerLazySingleton<EvaluationRepo>(
    () => EvaluationRepoImpl(
      sl<DioClient>(),
      sl<IsarClient>(),
    ),
  );
}

void _initCubits() {
  sl.registerFactory(
    () => AuthCubit(
      sl<AuthRepo>(),
      sl<UserRepo>(),
    ),
  );

  sl.registerFactory(
    () => ClubCubit(
      sl<ClubRepo>(),
      sl<UserRepo>(),
      sl<ImagePickerClient>(),
    ),
  );

  sl.registerFactory(
    () => ExamCubit(
      sl<ExamRepo>(),
      sl<ImagePickerClient>(),
    ),
  );
  sl.registerFactory(
    () => QuestionCubit(
      sl<QuestionRepo>(),
    ),
  );

  sl.registerFactory(
    () => ProgramCubit(
      sl<ProgramRepo>(),
      sl<ImagePickerClient>(),
    ),
  );

  sl.registerFactory(
    () => ExerciseCubit(
      sl<ExerciseRepo>(),
      sl<MediaRepo>(),
    ),
  );

  sl.registerFactory(
    () => TacticalCubit(
      sl<TacticalRepo>(),
      sl<UserRepo>(),
    ),
  );

  sl.registerFactory(
    () => MediaCubit(
      sl<MediaRepo>(),
      sl<FilePickerClient>(),
    ),
  );

  sl.registerFactory(
    () => UserCubit(
      sl<UserRepo>(),
      sl<ImagePickerClient>(),
    ),
  );

  sl.registerFactory(
    () => EvaluationCubit(
      sl<EvaluationRepo>(),
      sl<QuestionRepo>(),
      sl<UserRepo>(),
      sl<ClubRepo>(),
      sl<ExamRepo>(),
    ),
  );
}
