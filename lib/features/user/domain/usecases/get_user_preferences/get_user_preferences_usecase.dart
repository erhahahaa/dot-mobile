import 'package:dartz/dartz.dart';
import 'package:dot_coaching/core/core.dart';
import 'package:dot_coaching/features/feature.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class GetUserPreferencesUsecase extends FNPUC<UserPreferencesModel> {
  final UserRepository _userRepository;

  GetUserPreferencesUsecase(this._userRepository);

  @override
  Future<Either<Failure, UserPreferencesModel>> call(
          {HttpCallback? callback}) =>
      _userRepository.getUserPreferences();
}
