import 'package:dot_coaching/core/core.dart';
import 'package:dot_coaching/feats/feats.dart';
import 'package:file_picker/file_picker.dart';
import 'package:get_it/get_it.dart';

GetIt di = GetIt.instance;

Future<void> initDependencies() async {
  final isarClient = IsarClient();
  await isarClient.initIsar();

  di.registerSingleton<IsarClient>(
    isarClient,
  );
  di.registerSingleton<DioClient>(
    DioClient(di<IsarClient>()),
  );
  di.registerLazySingleton<ImagePickerClient>(
    () => ImagePickerClient(),
  );

  di.registerLazySingleton<FilePickerClient>(
    () => FilePickerClient(FilePicker.platform),
  );

  _intiRepos();
  _initCubits();
}

void _intiRepos() {
  di.registerLazySingleton<AuthRepo>(
    () => AuthRepoImpl(
      di<DioClient>(),
      di<IsarClient>(),
    ),
  );

  di.registerLazySingleton<ClubRepo>(
    () => ClubRepoImpl(
      di<DioClient>(),
      di<IsarClient>(),
    ),
  );

  di.registerLazySingleton<ExamRepo>(
    () => ExamRepoImpl(
      di<DioClient>(),
      di<IsarClient>(),
    ),
  );

  di.registerLazySingleton<QuestionRepo>(
    () => QuestionRepoImpl(
      di<DioClient>(),
      di<IsarClient>(),
    ),
  );

  di.registerLazySingleton<ProgramRepo>(
    () => ProgramRepoImpl(
      di<DioClient>(),
      di<IsarClient>(),
    ),
  );

  di.registerLazySingleton<ExerciseRepo>(
    () => ExerciseRepoImpl(
      di<DioClient>(),
      di<IsarClient>(),
    ),
  );

  di.registerLazySingleton<TacticalRepo>(
    () => TacticalRepoImpl(
      di<DioClient>(),
      di<IsarClient>(),
    ),
  );

  di.registerLazySingleton<MediaRepo>(
    () => MediaRepoImpl(
      di<DioClient>(),
      di<IsarClient>(),
    ),
  );

  di.registerLazySingleton<UserRepo>(
    () => UserRepoImpl(
      di<IsarClient>(),
    ),
  );
}

void _initCubits() {
  di.registerFactory(
    () => AuthCubit(
      di<AuthRepo>(),
      di<UserRepo>(),
    ),
  );

  di.registerFactory(
    () => ClubCubit(
      di<ClubRepo>(),
      di<UserRepo>(),
      di<ImagePickerClient>(),
    ),
  );

  di.registerFactory(
    () => ExamCubit(
      di<ExamRepo>(),
    ),
  );

  di.registerFactory(
    () => ProgramCubit(
      di<ProgramRepo>(),
      di<UserRepo>(),
    ),
  );

  di.registerFactory(
    () => ExerciseCubit(
      di<ExerciseRepo>(),
      di<MediaRepo>(),
    ),
  );

  di.registerFactory(
    () => TacticalCubit(
      di<TacticalRepo>(),
    ),
  );

  di.registerFactory(
    () => MediaCubit(
      di<MediaRepo>(),
      di<FilePickerClient>(),
    ),
  );

  di.registerFactory(
    () => UserCubit(
      di<UserRepo>(),
    ),
  );
}
