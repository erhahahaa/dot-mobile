import 'package:dartz/dartz.dart';
import 'package:dot_coaching/core/core.dart';
import 'package:dot_coaching/features/feature.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class GetAllClubUsecase extends FNPUC<List<ClubModel>> {
  final ClubRepository _clubRepository;

  GetAllClubUsecase(this._clubRepository);

  @override
  Future<Either<Failure, List<ClubModel>>> call() {
    return _clubRepository.getAll();
  }
}
