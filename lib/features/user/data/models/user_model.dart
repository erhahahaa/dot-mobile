import 'dart:math';

import 'package:dot_coaching/features/feature.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:skeletonizer/skeletonizer.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
class UserToClub with _$UserToClub {
  const factory UserToClub({
    @Default(0) int id,
    @Default(0) int userId,
    @Default(0) int clubId,
    @Default(UserRole.athlete) UserRole role,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) = _UserToClub;

  const UserToClub._();

  factory UserToClub.fromJson(Map<String, dynamic> json) =>
      _$UserToClubFromJson(json);
}

@freezed
class UserModel extends UserEntity with _$UserModel {
  const factory UserModel({
    @Default(0) int id,
    @Default('Folks') String name,
    @Default('folks@dot.com') String email,
    @Default('folks') String username,
    @Default("https://api.dicebear.com/9.x/adventurer/png") String image,
    @Default(6281555444333) int phone,
    @Default(UserGender.male) UserGender gender,
    @Default(UserRole.athlete) UserRole role,
    String? bornPlace,
    DateTime? bornDate,
    String? religion,
    String? address,
    String? expertise,
    DateTime? createdAt,
    DateTime? updatedAt,
    String? token,
  }) = _UserModel;

  const UserModel._();

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);

  static UserModel fromEntity(UserEntity ent) => UserModel(
        id: ent.id,
        name: ent.name,
        email: ent.email,
        username: ent.username,
        image: ent.image,
        phone: ent.phone,
        gender: ent.gender,
        role: ent.role,
        bornPlace: ent.bornPlace,
        bornDate: ent.bornDate,
        religion: ent.religion,
        address: ent.address,
        expertise: ent.expertise,
        createdAt: ent.createdAt,
        updatedAt: ent.updatedAt,
        token: ent.token,
      );

  static UserModel fake() {
    return UserModel(
      id: Random().nextInt(100),
      name: BoneMock.name,
      email: BoneMock.email,
      username: BoneMock.subtitle,
      role: UserRole.athlete,
      image: "https://api.dicebear.com/9.x/adventurer/png",
    );
  }
}
