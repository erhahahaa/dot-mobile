import 'package:isar/isar.dart';

part 'user.g.dart';

enum UserRole { coach, athlete }

@collection
class UserEntity {
  Id id = Isar.autoIncrement;
  @Index(type: IndexType.value)
  String? name;
  String? email;
  String? image;
  String? phone;
  @enumerated
  UserRole role;
  String? expertise;
  DateTime? createdAt;
  String? token;

  UserEntity({
    this.id = Isar.autoIncrement,
    this.name,
    this.email,
    this.image,
    this.phone,
    this.role = UserRole.athlete,
    this.expertise,
    this.createdAt,
    this.token,
  });
}
