import 'package:dartz/dartz.dart';
import 'package:dot_coaching/core/core.dart';
import 'package:dot_coaching/features/feature.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'search_users_usecase.freezed.dart';
part 'search_users_usecase.g.dart';

@lazySingleton
class SearchUsersUsecase extends FPUC<List<UserModel>, SearchUsersParams> {
  final UserRepository _userRepository;

  SearchUsersUsecase(this._userRepository);

  @override
  Future<Either<Failure, List<UserModel>>> call(SearchUsersParams params,
          {HttpCallback? callback}) =>
      _userRepository.searchUser(params);
}

@freezed
abstract class SearchUsersParams with _$SearchUsersParams {
  const factory SearchUsersParams({
    required String query,
  }) = _SearchUsersParams;

  const SearchUsersParams._();

  factory SearchUsersParams.fromJson(Map<String, dynamic> json) =>
      _$SearchUsersParamsFromJson(json);
}
