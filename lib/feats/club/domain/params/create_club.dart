import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_club.freezed.dart';
part 'create_club.g.dart';

@freezed
class CreateClubParams with _$CreateClubParams {
  const factory CreateClubParams({
    required String name,
    required String description,
    String? image,
  }) = _CreateClubParams;

  factory CreateClubParams.fromJson(Map<String, dynamic> json) =>
      _$CreateClubParamsFromJson(json);
}
