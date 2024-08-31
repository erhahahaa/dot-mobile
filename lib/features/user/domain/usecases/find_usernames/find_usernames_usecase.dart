import 'package:dartz/dartz.dart';
import 'package:dot_coaching/core/core.dart';
import 'package:dot_coaching/features/feature.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'find_usernames_usecase.freezed.dart';
part 'find_usernames_usecase.g.dart';

@lazySingleton
class FindUsernamesUsecase extends FPUC<List<String>, FindUsernamesParams> {
  final UserRepository _userRepository;

  FindUsernamesUsecase(this._userRepository);

  @override
  Future<Either<Failure, List<String>>> call(FindUsernamesParams params,
          {HttpCallback? callback}) =>
      _userRepository.findUsernames(params);
}

@freezed
class FindUsernamesParams with _$FindUsernamesParams {
  const factory FindUsernamesParams({
    required String username,
    required String email,
  }) = _FindUsernamesParams;

  const FindUsernamesParams._();

  factory FindUsernamesParams.fromJson(Map<String, dynamic> json) =>
      _$FindUsernamesParamsFromJson(json);
}
