import 'package:dartz/dartz.dart';
import 'package:dot_coaching/core/core.dart';
import 'package:dot_coaching/features/feature.dart';
import 'package:injectable/injectable.dart';

abstract class QuestionRemoteDatasource {
  Future<Either<Failure, List<QuestionModel>>> getAll(
    GetAllQuestionParams params,
  );
  Future<Either<Failure, QuestionModel>> getById(
    GetQuestionByIdParams params,
  );
  Future<Either<Failure, List<QuestionModel>>> createBatch(
    List<CreateQuestionParams> params,
  );
  Future<Either<Failure, List<QuestionModel>>> updateBatch(
    List<UpdateQuestionParams> params,
  );
  Future<Either<Failure, QuestionModel>> delete(
    DeleteQuestionParams params,
  );
}

@LazySingleton(as: QuestionRemoteDatasource)
class QuestionRemoteDatasourceImpl implements QuestionRemoteDatasource {
  final DioService _remote;

  QuestionRemoteDatasourceImpl(this._remote);

  @override
  Future<Either<Failure, List<QuestionModel>>> createBatch(
    List<CreateQuestionParams> params,
  ) async {
    final List<Map<String, dynamic>> body = [];
    for (final param in params) {
      body.add(param.toJson());
    }
    final res = await _remote.postRequest(
      '${ListAPI.QUESTION}/bulk',
      listData: body,
      converter: (res) {
        final List<QuestionModel> questions = [];
        for (final data in res['data']) {
          questions.add(QuestionModel.fromJson(data));
        }
        return questions;
      },
    );

    return res;
  }

  @override
  Future<Either<Failure, QuestionModel>> delete(
    DeleteQuestionParams params,
  ) async {
    final res = await _remote.deleteRequest(
      '${ListAPI.QUESTION}/${params.id}',
      converter: (res) => QuestionModel.fromJson(res['data']),
    );

    return res;
  }

  @override
  Future<Either<Failure, List<QuestionModel>>> getAll(
    GetAllQuestionParams params,
  ) async {
    final res = await _remote.getRequest(
      ListAPI.QUESTION,
      queryParameters: params.toJson(),
      converter: (res) {
        final List<QuestionModel> questions = [];
        for (final data in res['data']) {
          questions.add(QuestionModel.fromJson(data));
        }
        return questions;
      },
    );

    return res;
  }

  @override
  Future<Either<Failure, QuestionModel>> getById(
    GetQuestionByIdParams params,
  ) async {
    final res = await _remote.getRequest(
      '${ListAPI.QUESTION}/${params.id}',
      converter: (res) => QuestionModel.fromJson(res['data']),
    );

    return res;
  }

  @override
  Future<Either<Failure, List<QuestionModel>>> updateBatch(
    List<UpdateQuestionParams> params,
  ) async {
    List<CreateQuestionParams> createParams = [];
    final List<Map<String, dynamic>> body = [];
    for (final param in params) {
      if (param.id == 0) {
        createParams.add(CreateQuestionParams(
          order: param.order,
          examId: param.examId,
          type: param.type,
          question: param.question,
          options: param.options,
        ));
        continue;
      }
      body.add(param.toJson());
    }
    if (createParams.isNotEmpty) {
      await createBatch(createParams);
    }
    final res = await _remote.putRequest(
      '${ListAPI.QUESTION}/bulk',
      listData: body,
      converter: (res) {
        final List<QuestionModel> questions = [];
        for (final data in res['data']) {
          questions.add(QuestionModel.fromJson(data));
        }
        return questions;
      },
    );
    return res;
  }
}
