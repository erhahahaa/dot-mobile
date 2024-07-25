import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_param.freezed.dart';
part 'login_param.g.dart';

@freezed
class LoginParams with _$LoginParams {
  const factory LoginParams({
    required String email,
    required String password,
  }) = _LoginParams;

  factory LoginParams.fromJson(Map<String, dynamic> json) =>
      _$LoginParamsFromJson(json);
}
