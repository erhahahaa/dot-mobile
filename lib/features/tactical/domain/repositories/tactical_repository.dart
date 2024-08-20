import 'package:dartz/dartz.dart';
import 'package:dot_coaching/core/core.dart';
import 'package:dot_coaching/features/feature.dart';

abstract class TacticalRepository {
  Future<Either<Failure, List<TacticalModel>>> getAll(
    GetAllTacticalParams params,
  );
  Future<Either<Failure, TacticalModel>> getById(
    GetTacticalByIdParams params,
  );
  Future<Either<Failure, TacticalModel>> create(
    CreateTacticalParams params,
  );
  Future<Either<Failure, TacticalModel>> update(
    UpdateTacticalParams params,
  );
  Future<Either<Failure, TacticalModel>> delete(
    DeleteTacticalParams params,
  );
}
