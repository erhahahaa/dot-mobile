import 'package:dot_coaching/feats/feats.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
class UserModel with _$UserModel {
  const factory UserModel({
    @Default(0) int id,
    @Default('Folks') String name,
    @Default('folks@dot.com') String email,
    @Default("https://api.dicebear.com/9.x/adventurer/png") String image,
    String? phone,
    @Default(UserRole.athlete) UserRole role,
    String? expertise,
    DateTime? createdAt,
    DateTime? updatedAt,
    String? token,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);

  static UserModel fromEntity(UserEntity entity) {
    return UserModel(
      id: entity.id,
      name: entity.name,
      email: entity.email,
      image: entity.image,
      phone: entity.phone ?? '',
      role: entity.role,
      expertise: entity.expertise,
      createdAt: entity.createdAt,
      updatedAt: entity.updatedAt,
      token: entity.token,
    );
  }
}

extension UserModelX on UserModel {
  UserEntity toEntity() {
    return UserEntity(
      id: id,
      name: name,
      email: email,
      image: image,
      phone: phone,
      role: role,
      expertise: expertise,
      createdAt: createdAt,
      updatedAt: updatedAt,
      token: token,
    );
  }
}
