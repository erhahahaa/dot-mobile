import 'package:dartz/dartz.dart';
import 'package:dot_coaching/core/core.dart';
import 'package:dot_coaching/features/feature.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'save_user_preferences_usecase.freezed.dart';

@lazySingleton
class SaveUserPreferencesUsecase extends FPUC<bool, SaveUserPreferencesParams> {
  final UserRepository _userRepository;

  SaveUserPreferencesUsecase(this._userRepository);

  @override
  Future<Either<Failure, bool>> call(SaveUserPreferencesParams params,
          {HttpCallback? callback}) =>
      _userRepository.saveUserPreferences(params);
}

@freezed
abstract class SaveUserPreferencesParams with _$SaveUserPreferencesParams {
  const factory SaveUserPreferencesParams({
    required UserPreferencesModel prefs,
  }) = _SaveUserPreferencesParams;
}
