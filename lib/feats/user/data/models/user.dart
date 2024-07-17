import 'package:dot_coaching/feats/feats.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
class UserModel with _$UserModel {
  const factory UserModel({
    @Default(0) int id,
    @Default('Folks') String name,
    @Default('folks@dot.com') String? email,
    @Default("https://api.dicebear.com/9.x/adventurer/png") String image,
    @Default(null) String? phone,
    @Default(UserRole.user) UserRole role,
    @Default("Sports") String expertise,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @Default(null) String? token,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);

  static UserModel fromEntity(UserEntity entity) {
    return UserModel(
      id: entity.id,
      name: entity.name ?? '',
      email: entity.email ?? '',
      image: entity.image ?? 'https://api.dicebear.com/9.x/adventurer/png',
      phone: entity.phone ?? '',
      role: entity.role,
      expertise: entity.expertise ?? '',
      createdAt: entity.createdAt,
      token: entity.token,
    );
  }
}

extension UserModelX on UserModel {
  //toEntity
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
      token: token,
    );
  }
}
