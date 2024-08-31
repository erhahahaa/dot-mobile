// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

import '../core/core.dart' as _i156;
import '../core/services/file/file_picker_service.dart' as _i905;
import '../core/services/firebase/firebase_messaging_service.dart' as _i1049;
import '../core/services/http/dio_service.dart' as _i322;
import '../core/services/image/image_picker_service.dart' as _i963;
import '../core/services/storage/isar_service.dart' as _i373;
import '../features/auth/data/datasources/auth_local_datasource.dart' as _i182;
import '../features/auth/data/datasources/auth_remote_datasource.dart' as _i130;
import '../features/auth/data/repositories/auth_repository_impl.dart' as _i570;
import '../features/auth/domain/usecases/auth_me/auth_me_usecase.dart'
    as _i1029;
import '../features/auth/domain/usecases/sign-in/sign_in_usecase.dart' as _i852;
import '../features/auth/domain/usecases/sign_out/sign_out_usecase.dart'
    as _i250;
import '../features/auth/domain/usecases/sign_up/sign_up_usecase.dart' as _i980;
import '../features/auth/ui/bloc/auth_bloc.dart' as _i280;
import '../features/club/data/datasources/club_remote_datasource.dart' as _i164;
import '../features/club/data/repositories/club_repository_impl.dart' as _i69;
import '../features/club/domain/usecases/add_club_member/add_club_member_usecase.dart'
    as _i452;
import '../features/club/domain/usecases/create_club/create_club_usecase.dart'
    as _i768;
import '../features/club/domain/usecases/delete_club/delete_club_usecase.dart'
    as _i83;
import '../features/club/domain/usecases/get_all_club/get_all_club_usecase.dart'
    as _i166;
import '../features/club/domain/usecases/get_club_by_id/get_club_by_id_usecase.dart'
    as _i331;
import '../features/club/domain/usecases/get_club_members/get_club_members_usecase.dart'
    as _i360;
import '../features/club/domain/usecases/kick_club_member/kick_club_member_usecase.dart'
    as _i426;
import '../features/club/domain/usecases/leave_club/leave_club_usecase.dart'
    as _i1040;
import '../features/club/domain/usecases/update_club/update_club_usecase.dart'
    as _i373;
import '../features/club/ui/bloc/club_bloc.dart' as _i1004;
import '../features/club/ui/cubit/club_members_cubit.dart' as _i1016;
import '../features/evaluation/data/datasources/evaluation_remote_datasource.dart'
    as _i973;
import '../features/evaluation/data/repositories/evaluation_repository_impl.dart'
    as _i903;
import '../features/evaluation/domain/usecases/create_evaluation/create_evaluation_usecase.dart'
    as _i639;
import '../features/evaluation/domain/usecases/delete_evaluation/delete_evaluation_usecase.dart'
    as _i11;
import '../features/evaluation/domain/usecases/get_all_evaluation/get_all_evaluation_usecase.dart'
    as _i1068;
import '../features/evaluation/domain/usecases/get_evaluation_by_id/get_evaluation_by_id_usecase.dart'
    as _i640;
import '../features/evaluation/domain/usecases/update_evaluation/update_evaluation_usecase.dart'
    as _i1066;
import '../features/evaluation/ui/bloc/evaluation_bloc.dart' as _i544;
import '../features/exam/data/datasources/exam_remote_datasource.dart' as _i750;
import '../features/exam/data/repositories/exam_repository_impl.dart' as _i249;
import '../features/exam/domain/usecases/create_exam_usecase.dart' as _i171;
import '../features/exam/domain/usecases/delete_exam_usecase.dart' as _i700;
import '../features/exam/domain/usecases/get_all_exam_usecase.dart' as _i423;
import '../features/exam/domain/usecases/get_exam_by_id_usecase.dart' as _i897;
import '../features/exam/domain/usecases/update_exam_usecase.dart' as _i939;
import '../features/exam/ui/bloc/exam_bloc.dart' as _i838;
import '../features/exercise/data/datasources/exercise_remote_datasource.dart'
    as _i746;
import '../features/exercise/data/repositories/exercise_repository_impl.dart'
    as _i911;
import '../features/exercise/domain/usecases/create_exercise/create_exercise_batch_usecase.dart'
    as _i603;
import '../features/exercise/domain/usecases/delete_exercise/delete_exercise_usecase.dart'
    as _i596;
import '../features/exercise/domain/usecases/get_all_exercise/get_all_exercise_usecase.dart'
    as _i81;
import '../features/exercise/domain/usecases/get_exercise_by_id/get_exercise_by_id_usecase.dart'
    as _i463;
import '../features/exercise/domain/usecases/update_exercise/update_exercise_batch_usecase.dart'
    as _i538;
import '../features/exercise/ui/bloc/exercise_bloc.dart' as _i187;
import '../features/feature.dart' as _i561;
import '../features/media/data/datasources/media_remote_datasource.dart'
    as _i991;
import '../features/media/data/repositories/media_repository_impl.dart'
    as _i876;
import '../features/media/domain/usecases/download_media/download_media_usecase.dart'
    as _i557;
import '../features/media/domain/usecases/get_all_media/get_all_media_usecase.dart'
    as _i694;
import '../features/media/domain/usecases/update_media/update_media_usecase.dart'
    as _i609;
import '../features/media/domain/usecases/upload_media/upload_media_usecase.dart'
    as _i252;
import '../features/media/ui/bloc/exercise_media_bloc.dart' as _i255;
import '../features/media/ui/bloc/program_media_bloc.dart' as _i640;
import '../features/media/ui/bloc/tactical_media_bloc.dart' as _i974;
import '../features/program/data/datasources/program_remote_datasource.dart'
    as _i802;
import '../features/program/data/repositories/program_repository_impl.dart'
    as _i441;
import '../features/program/domain/usecases/create_program/create_program_usecase.dart'
    as _i943;
import '../features/program/domain/usecases/delete_program/delete_program_usecase.dart'
    as _i687;
import '../features/program/domain/usecases/get_all_program/get_all_program_usecase.dart'
    as _i1022;
import '../features/program/domain/usecases/get_program_by_id/get_program_by_id_usecase.dart'
    as _i810;
import '../features/program/domain/usecases/update_program/update_program_usecase.dart'
    as _i93;
import '../features/program/ui/bloc/program_bloc.dart' as _i408;
import '../features/question/data/datasources/question_remote_datasource.dart'
    as _i162;
import '../features/question/data/repositories/question_repository_impl.dart'
    as _i528;
import '../features/question/domain/usecases/create_question/create_question_batch_usecase.dart'
    as _i59;
import '../features/question/domain/usecases/delete_question/delete_question_usecase.dart'
    as _i1;
import '../features/question/domain/usecases/get_all_question/get_all_question_usecase.dart'
    as _i868;
import '../features/question/domain/usecases/get_question_by_id/get_question_by_id_usecase.dart'
    as _i1058;
import '../features/question/domain/usecases/update_question/update_question_batch_usecase.dart'
    as _i950;
import '../features/question/ui/bloc/question_bloc.dart' as _i804;
import '../features/tactical/data/datasources/tactical_remote_datasource.dart'
    as _i239;
import '../features/tactical/data/repositories/tactical_repository_impl.dart'
    as _i298;
import '../features/tactical/domain/usecases/create_tactical/create_tactical_usecase.dart'
    as _i581;
import '../features/tactical/domain/usecases/delete_tactical/delete_tactical_usecase.dart'
    as _i15;
import '../features/tactical/domain/usecases/get_all_tactical/get_all_tactical_usecase.dart'
    as _i288;
import '../features/tactical/domain/usecases/get_tactical_by_id/get_tactical_by_id_usecase.dart'
    as _i549;
import '../features/tactical/domain/usecases/update_tactical/update_tactical_usecase.dart'
    as _i567;
import '../features/tactical/ui/bloc/tactical_bloc.dart' as _i674;
import '../features/tactical/ui/cubit/strategy_cubit.dart' as _i1034;
import '../features/user/data/datasources/user_local_data_source.dart' as _i959;
import '../features/user/data/datasources/user_remote_data_source.dart'
    as _i593;
import '../features/user/data/repositories/user_repository_impl.dart' as _i272;
import '../features/user/domain/usecases/cache_notifications/cache_notifications_usecase.dart'
    as _i158;
import '../features/user/domain/usecases/clear_me/clear_me_usecase.dart'
    as _i807;
import '../features/user/domain/usecases/clear_notifications/clear_notifications_usecase.dart'
    as _i571;
import '../features/user/domain/usecases/find_usernames/find_usernames_usecase.dart'
    as _i278;
import '../features/user/domain/usecases/get_fcm_token/get_fcm_token_usecase.dart'
    as _i1011;
import '../features/user/domain/usecases/get_me/get_me_usecase.dart' as _i988;
import '../features/user/domain/usecases/get_notifications/get_notifications_usecase.dart'
    as _i462;
import '../features/user/domain/usecases/get_user_preferences/get_user_preferences_usecase.dart'
    as _i694;
import '../features/user/domain/usecases/save_user_preferences/save_user_preferences_usecase.dart'
    as _i877;
import '../features/user/domain/usecases/search_users/search_users_usecase.dart'
    as _i727;
import '../features/user/domain/usecases/update_fcm_token/update_fcm_token_usecase.dart'
    as _i264;
import '../features/user/domain/usecases/update_profile/update_profile_usecase.dart'
    as _i228;
import '../features/user/ui/bloc/user_bloc.dart' as _i792;
import '../features/user/ui/bloc/user_pref_bloc.dart' as _i1050;
import '../features/user/user.dart' as _i438;
import '../utils/helpers/cubit/loading_cubit.dart' as _i1045;
import 'router.dart' as _i216;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  Future<_i174.GetIt> init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.factory<_i216.AppRouter>(() => _i216.AppRouter());
    gh.lazySingleton<_i1045.LoadingCubit>(() => _i1045.LoadingCubit());
    await gh.lazySingletonAsync<_i373.IsarService>(
      () {
        final i = _i373.IsarService();
        return i.initIsar().then((_) => i);
      },
      preResolve: true,
      dispose: (i) => i.dispose(),
    );
    gh.lazySingleton<_i905.FilePickerService>(
      () => _i905.FilePickerService(),
      dispose: (i) => i.dispose(),
    );
    await gh.lazySingletonAsync<_i1049.FirebaseMessagingService>(
      () {
        final i = _i1049.FirebaseMessagingService();
        return i.init().then((_) => i);
      },
      preResolve: true,
    );
    gh.lazySingleton<_i963.ImagePickerService>(
      () => _i963.ImagePickerService(),
      dispose: (i) => i.dispose(),
    );
    gh.lazySingleton<_i1034.StrategyCubit>(() => _i1034.StrategyCubit());
    gh.lazySingleton<_i322.DioService>(
      () => _i322.DioService(gh<_i156.IsarService>()),
      dispose: (i) => i.dispose(),
    );
    gh.lazySingleton<_i182.AuthLocalDataSource>(
        () => _i182.AuthLocalDatasourceImpl(gh<_i156.IsarService>()));
    gh.lazySingleton<_i959.UserLocalDataSource>(
        () => _i959.UserLocalDataSourceImpl(
              gh<_i156.IsarService>(),
              gh<_i156.FirebaseMessagingService>(),
            ));
    gh.lazySingleton<_i746.ExerciseRemoteDatasource>(
        () => _i746.ExerciseRemoteDatasourceImpl(gh<_i156.DioService>()));
    gh.lazySingleton<_i991.MediaRemoteDatasource>(
        () => _i991.MediaRemoteDatasourceImpl(gh<_i156.DioService>()));
    gh.lazySingleton<_i750.ExamRemoteDatasource>(
        () => _i750.ExamRemoteDatasourceImpl(gh<_i156.DioService>()));
    gh.lazySingleton<_i130.AuthRemoteDataSource>(
        () => _i130.AuthRemoteDatasourceImpl(gh<_i156.DioService>()));
    gh.lazySingleton<_i973.EvaluationRemoteDatasource>(
        () => _i973.EvaluationRemoteDatasourceImpl(gh<_i156.DioService>()));
    gh.lazySingleton<_i164.ClubRemoteDatasource>(
        () => _i164.ClubRemoteDatasourceImpl(gh<_i156.DioService>()));
    gh.lazySingleton<_i162.QuestionRemoteDatasource>(
        () => _i162.QuestionRemoteDatasourceImpl(gh<_i156.DioService>()));
    gh.lazySingleton<_i802.ProgramRemoteDatasource>(
        () => _i802.ProgramRemoteDatasourceImpl(gh<_i156.DioService>()));
    gh.lazySingleton<_i239.TacticalRemoteDatasource>(
        () => _i239.TacticalRemoteDatasourceImpl(gh<_i156.DioService>()));
    gh.lazySingleton<_i593.UserRemoteDataSource>(
        () => _i593.UserRemoteDataSourceImpl(gh<_i156.DioService>()));
    gh.lazySingleton<_i561.ExerciseRepository>(() =>
        _i911.ExerciseRepositoryImpl(gh<_i561.ExerciseRemoteDatasource>()));
    gh.lazySingleton<_i561.AuthRepository>(() => _i570.AuthRepositoryImpl(
          gh<_i561.AuthRemoteDataSource>(),
          gh<_i561.AuthLocalDataSource>(),
        ));
    gh.lazySingleton<_i561.EvaluationRepository>(() =>
        _i903.EvaluationRepositoryImpl(gh<_i561.EvaluationRemoteDatasource>()));
    gh.lazySingleton<_i561.MediaRepository>(
        () => _i876.MediaRepositoryImpl(gh<_i561.MediaRemoteDatasource>()));
    gh.lazySingleton<_i609.UpdateMediaUsecase>(
        () => _i609.UpdateMediaUsecase(gh<_i561.MediaRepository>()));
    gh.lazySingleton<_i694.GetAllMediaUsecase>(
        () => _i694.GetAllMediaUsecase(gh<_i561.MediaRepository>()));
    gh.lazySingleton<_i557.DownloadMediaUsecase>(
        () => _i557.DownloadMediaUsecase(gh<_i561.MediaRepository>()));
    gh.lazySingleton<_i252.UploadMediaUsecase>(
        () => _i252.UploadMediaUsecase(gh<_i561.MediaRepository>()));
    gh.lazySingleton<_i561.ClubRepository>(
        () => _i69.ClubRepositoryImpl(gh<_i561.ClubRemoteDatasource>()));
    gh.lazySingleton<_i561.TacticalRepository>(() =>
        _i298.TacticalRepositoryImpl(gh<_i561.TacticalRemoteDatasource>()));
    gh.lazySingleton<_i561.QuestionRepository>(() =>
        _i528.QuestionRepositoryImpl(gh<_i561.QuestionRemoteDatasource>()));
    gh.lazySingleton<_i561.UserRepository>(() => _i272.UserRepositoryImpl(
          gh<_i561.UserRemoteDataSource>(),
          gh<_i561.UserLocalDataSource>(),
        ));
    gh.lazySingleton<_i452.AddClubMemberUsecase>(
        () => _i452.AddClubMemberUsecase(gh<_i561.ClubRepository>()));
    gh.lazySingleton<_i83.DeleteClubUsecase>(
        () => _i83.DeleteClubUsecase(gh<_i561.ClubRepository>()));
    gh.lazySingleton<_i768.CreateClubUsecase>(
        () => _i768.CreateClubUsecase(gh<_i561.ClubRepository>()));
    gh.lazySingleton<_i360.GetClubMembersUsecase>(
        () => _i360.GetClubMembersUsecase(gh<_i561.ClubRepository>()));
    gh.lazySingleton<_i166.GetAllClubUsecase>(
        () => _i166.GetAllClubUsecase(gh<_i561.ClubRepository>()));
    gh.lazySingleton<_i373.UpdateClubUsecase>(
        () => _i373.UpdateClubUsecase(gh<_i561.ClubRepository>()));
    gh.lazySingleton<_i426.KickClubMemberUsecase>(
        () => _i426.KickClubMemberUsecase(gh<_i561.ClubRepository>()));
    gh.lazySingleton<_i331.GetClubByIdUsecase>(
        () => _i331.GetClubByIdUsecase(gh<_i561.ClubRepository>()));
    gh.lazySingleton<_i1040.LeaveClubUsecase>(
        () => _i1040.LeaveClubUsecase(gh<_i561.ClubRepository>()));
    gh.lazySingleton<_i561.ExamRepository>(
        () => _i249.ExamRepositoryImpl(gh<_i561.ExamRemoteDatasource>()));
    gh.lazySingleton<_i1004.ClubBlocRead>(
        () => _i1004.ClubBlocRead(gh<_i561.GetAllClubUsecase>()));
    gh.lazySingleton<_i980.SignUpUsecase>(
        () => _i980.SignUpUsecase(gh<_i561.AuthRepository>()));
    gh.lazySingleton<_i852.SignInUsecase>(
        () => _i852.SignInUsecase(gh<_i561.AuthRepository>()));
    gh.lazySingleton<_i1029.AuthMeUsecase>(
        () => _i1029.AuthMeUsecase(gh<_i561.AuthRepository>()));
    gh.lazySingleton<_i250.SignOutUsecase>(
        () => _i250.SignOutUsecase(gh<_i561.AuthRepository>()));
    gh.lazySingleton<_i1004.ClubBlocWrite>(() => _i1004.ClubBlocWrite(
          gh<_i561.CreateClubUsecase>(),
          gh<_i561.UpdateClubUsecase>(),
          gh<_i561.DeleteClubUsecase>(),
        ));
    gh.lazySingleton<_i280.AuthBloc>(() => _i280.AuthBloc(
          gh<_i561.AuthMeUsecase>(),
          gh<_i561.SignInUsecase>(),
          gh<_i561.SignUpUsecase>(),
          gh<_i561.SignOutUsecase>(),
        ));
    gh.lazySingleton<_i1016.ClubMembersCubit>(() => _i1016.ClubMembersCubit(
          gh<_i561.GetClubMembersUsecase>(),
          gh<_i561.KickClubMemberUsecase>(),
          gh<_i561.LeaveClubUsecase>(),
        ));
    gh.lazySingleton<_i59.CreateQuestionBatchUsecase>(
        () => _i59.CreateQuestionBatchUsecase(gh<_i561.QuestionRepository>()));
    gh.lazySingleton<_i950.UpdateQuestionBatchUsecase>(
        () => _i950.UpdateQuestionBatchUsecase(gh<_i561.QuestionRepository>()));
    gh.lazySingleton<_i868.GetAllQuestionUsecase>(
        () => _i868.GetAllQuestionUsecase(gh<_i561.QuestionRepository>()));
    gh.lazySingleton<_i1058.GetQuestionByIdUsecase>(
        () => _i1058.GetQuestionByIdUsecase(gh<_i561.QuestionRepository>()));
    gh.lazySingleton<_i1.DeleteQuestionUsecase>(
        () => _i1.DeleteQuestionUsecase(gh<_i561.QuestionRepository>()));
    gh.lazySingleton<_i561.ProgramRepository>(
        () => _i441.ProgramRepositoryImpl(gh<_i561.ProgramRemoteDatasource>()));
    gh.lazySingleton<_i807.ClearMeUsecase>(
        () => _i807.ClearMeUsecase(gh<_i561.UserRepository>()));
    gh.lazySingleton<_i264.UpdateFCMTokenUsecase>(
        () => _i264.UpdateFCMTokenUsecase(gh<_i561.UserRepository>()));
    gh.lazySingleton<_i1011.GetFcmTokenUsecase>(
        () => _i1011.GetFcmTokenUsecase(gh<_i561.UserRepository>()));
    gh.lazySingleton<_i228.UpdateProfileUsecase>(
        () => _i228.UpdateProfileUsecase(gh<_i561.UserRepository>()));
    gh.lazySingleton<_i727.SearchUsersUsecase>(
        () => _i727.SearchUsersUsecase(gh<_i561.UserRepository>()));
    gh.lazySingleton<_i988.GetMeUsecase>(
        () => _i988.GetMeUsecase(gh<_i561.UserRepository>()));
    gh.lazySingleton<_i571.ClearNotificationsUsecase>(
        () => _i571.ClearNotificationsUsecase(gh<_i561.UserRepository>()));
    gh.lazySingleton<_i278.FindUsernamesUsecase>(
        () => _i278.FindUsernamesUsecase(gh<_i561.UserRepository>()));
    gh.lazySingleton<_i462.GetNotificationsUsecase>(
        () => _i462.GetNotificationsUsecase(gh<_i561.UserRepository>()));
    gh.lazySingleton<_i158.CacheNotificationsUsecase>(
        () => _i158.CacheNotificationsUsecase(gh<_i561.UserRepository>()));
    gh.lazySingleton<_i694.GetUserPreferencesUsecase>(
        () => _i694.GetUserPreferencesUsecase(gh<_i561.UserRepository>()));
    gh.lazySingleton<_i877.SaveUserPreferencesUsecase>(
        () => _i877.SaveUserPreferencesUsecase(gh<_i561.UserRepository>()));
    gh.lazySingleton<_i255.ExerciseMediaBlocRead>(
        () => _i255.ExerciseMediaBlocRead(
              gh<_i561.GetAllMediaUsecase>(),
              gh<_i561.DownloadMediaUsecase>(),
            ));
    gh.lazySingleton<_i974.TacticalMediaBlocRead>(
        () => _i974.TacticalMediaBlocRead(
              gh<_i561.GetAllMediaUsecase>(),
              gh<_i561.DownloadMediaUsecase>(),
            ));
    gh.lazySingleton<_i640.ProgramMediaBlocRead>(
        () => _i640.ProgramMediaBlocRead(
              gh<_i561.GetAllMediaUsecase>(),
              gh<_i561.DownloadMediaUsecase>(),
            ));
    gh.lazySingleton<_i700.DeleteExamUsecase>(
        () => _i700.DeleteExamUsecase(gh<_i561.ExamRepository>()));
    gh.lazySingleton<_i423.GetAllExamUsecase>(
        () => _i423.GetAllExamUsecase(gh<_i561.ExamRepository>()));
    gh.lazySingleton<_i171.CreateExamUsecase>(
        () => _i171.CreateExamUsecase(gh<_i561.ExamRepository>()));
    gh.lazySingleton<_i897.GetExamByIdUsecase>(
        () => _i897.GetExamByIdUsecase(gh<_i561.ExamRepository>()));
    gh.lazySingleton<_i939.UpdateExamUsecase>(
        () => _i939.UpdateExamUsecase(gh<_i561.ExamRepository>()));
    gh.lazySingleton<_i463.GetExerciseByIdUsecase>(
        () => _i463.GetExerciseByIdUsecase(gh<_i561.ExerciseRepository>()));
    gh.lazySingleton<_i81.GetAllExerciseUsecase>(
        () => _i81.GetAllExerciseUsecase(gh<_i561.ExerciseRepository>()));
    gh.lazySingleton<_i596.DeleteExerciseUsecase>(
        () => _i596.DeleteExerciseUsecase(gh<_i561.ExerciseRepository>()));
    gh.lazySingleton<_i603.CreateExerciseBatchUsecase>(
        () => _i603.CreateExerciseBatchUsecase(gh<_i561.ExerciseRepository>()));
    gh.lazySingleton<_i538.UpdateExerciseBatchUsecase>(
        () => _i538.UpdateExerciseBatchUsecase(gh<_i561.ExerciseRepository>()));
    gh.lazySingleton<_i640.GetEvaluationByIdUsecase>(
        () => _i640.GetEvaluationByIdUsecase(gh<_i561.EvaluationRepository>()));
    gh.lazySingleton<_i1068.GetAllEvaluationUsecase>(
        () => _i1068.GetAllEvaluationUsecase(gh<_i561.EvaluationRepository>()));
    gh.lazySingleton<_i11.DeleteEvaluationUsecase>(
        () => _i11.DeleteEvaluationUsecase(gh<_i561.EvaluationRepository>()));
    gh.lazySingleton<_i639.CreateEvaluationUsecase>(
        () => _i639.CreateEvaluationUsecase(gh<_i561.EvaluationRepository>()));
    gh.lazySingleton<_i1066.UpdateEvaluationUsecase>(
        () => _i1066.UpdateEvaluationUsecase(gh<_i561.EvaluationRepository>()));
    gh.lazySingleton<_i804.QuestionBlocWrite>(() => _i804.QuestionBlocWrite(
          gh<_i561.CreateQuestionBatchUsecase>(),
          gh<_i561.UpdateQuestionBatchUsecase>(),
          gh<_i561.DeleteQuestionUsecase>(),
        ));
    gh.lazySingleton<_i838.ExamBlocWrite>(() => _i838.ExamBlocWrite(
          gh<_i561.CreateExamUsecase>(),
          gh<_i561.UpdateExamUsecase>(),
          gh<_i561.DeleteExamUsecase>(),
        ));
    gh.lazySingleton<_i581.CreateTacticalUsecase>(
        () => _i581.CreateTacticalUsecase(gh<_i561.TacticalRepository>()));
    gh.lazySingleton<_i288.GetAllTacticalUsecase>(
        () => _i288.GetAllTacticalUsecase(gh<_i561.TacticalRepository>()));
    gh.lazySingleton<_i15.DeleteTacticalUsecase>(
        () => _i15.DeleteTacticalUsecase(gh<_i561.TacticalRepository>()));
    gh.lazySingleton<_i549.GetTacticalByIdUsecase>(
        () => _i549.GetTacticalByIdUsecase(gh<_i561.TacticalRepository>()));
    gh.lazySingleton<_i567.UpdateTacticalUsecase>(
        () => _i567.UpdateTacticalUsecase(gh<_i561.TacticalRepository>()));
    gh.singleton<_i1050.UserPrefBloc>(
        () => _i1050.UserPrefBloc(gh<_i438.GetUserPreferencesUsecase>()));
    gh.lazySingleton<_i943.CreateProgramUsecase>(
        () => _i943.CreateProgramUsecase(gh<_i561.ProgramRepository>()));
    gh.lazySingleton<_i93.UpdateProgramUsecase>(
        () => _i93.UpdateProgramUsecase(gh<_i561.ProgramRepository>()));
    gh.lazySingleton<_i687.DeleteProgramUsecase>(
        () => _i687.DeleteProgramUsecase(gh<_i561.ProgramRepository>()));
    gh.lazySingleton<_i810.GetProgramByIdUsecase>(
        () => _i810.GetProgramByIdUsecase(gh<_i561.ProgramRepository>()));
    gh.lazySingleton<_i1022.GetAllProgramUsecase>(
        () => _i1022.GetAllProgramUsecase(gh<_i561.ProgramRepository>()));
    gh.lazySingleton<_i255.ExerciseMediaBlocWrite>(
        () => _i255.ExerciseMediaBlocWrite(gh<_i561.UploadMediaUsecase>()));
    gh.lazySingleton<_i974.TacticalMediaBlocWrite>(
        () => _i974.TacticalMediaBlocWrite(gh<_i561.UploadMediaUsecase>()));
    gh.lazySingleton<_i640.ProgramMediaBlocWrite>(
        () => _i640.ProgramMediaBlocWrite(gh<_i561.UploadMediaUsecase>()));
    gh.lazySingleton<_i544.EvaluationBlocRead>(
        () => _i544.EvaluationBlocRead(gh<_i561.GetAllEvaluationUsecase>()));
    gh.lazySingleton<_i674.TacticalBlocWrite>(() => _i674.TacticalBlocWrite(
          gh<_i561.CreateTacticalUsecase>(),
          gh<_i561.UpdateTacticalUsecase>(),
          gh<_i561.DeleteTacticalUsecase>(),
        ));
    gh.lazySingleton<_i544.EvaluationBlocWrite>(() => _i544.EvaluationBlocWrite(
          gh<_i561.CreateEvaluationUsecase>(),
          gh<_i561.UpdateEvaluationUsecase>(),
          gh<_i561.DeleteEvaluationUsecase>(),
        ));
    gh.lazySingleton<_i187.ExerciseBlocRead>(
        () => _i187.ExerciseBlocRead(gh<_i561.GetAllExerciseUsecase>()));
    gh.lazySingleton<_i804.QuestionBlocRead>(
        () => _i804.QuestionBlocRead(gh<_i561.GetAllQuestionUsecase>()));
    gh.lazySingleton<_i187.ExerciseBlocWrite>(() => _i187.ExerciseBlocWrite(
          gh<_i561.CreateExerciseBatchUsecase>(),
          gh<_i561.UpdateExerciseBatchUsecase>(),
          gh<_i561.DeleteExerciseUsecase>(),
        ));
    gh.lazySingleton<_i674.TacticalBlocRead>(
        () => _i674.TacticalBlocRead(gh<_i561.GetAllTacticalUsecase>()));
    gh.factory<_i792.UserBloc>(() => _i792.UserBloc(
          gh<_i561.GetMeUsecase>(),
          gh<_i561.FindUsernamesUsecase>(),
          gh<_i561.GetFcmTokenUsecase>(),
        ));
    gh.lazySingleton<_i838.ExamBlocRead>(
        () => _i838.ExamBlocRead(gh<_i561.GetAllExamUsecase>()));
    gh.lazySingleton<_i408.ProgramBlocRead>(
        () => _i408.ProgramBlocRead(gh<_i561.GetAllProgramUsecase>()));
    gh.lazySingleton<_i408.ProgramBlocWrite>(() => _i408.ProgramBlocWrite(
          gh<_i561.CreateProgramUsecase>(),
          gh<_i561.UpdateProgramUsecase>(),
          gh<_i561.DeleteProgramUsecase>(),
        ));
    return this;
  }
}
