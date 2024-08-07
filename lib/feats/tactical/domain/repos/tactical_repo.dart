import 'package:dartz/dartz.dart';
import 'package:dot_coaching/core/core.dart';
import 'package:dot_coaching/feats/feats.dart';

abstract class TacticalRepo {
  Future<Either<Failure, List<TacticalModel>>> getAll(
    PaginationParams params,
    int? clubId,
  );
  Future<Either<Failure, TacticalModel>> getById(
    ByIdParams params,
  );
  Future<Either<Failure, TacticalModel>> create(
    CreateTacticalParams params,
  );
  Future<Either<Failure, TacticalModel>> update(
    UpdateTacticalParams params,
  );
  Future<Either<Failure, TacticalModel>> delete(
    ByIdParams params,
  );
}
