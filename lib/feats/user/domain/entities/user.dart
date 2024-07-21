import 'package:isar/isar.dart';

part 'user.g.dart';

enum UserRole { coach, athlete }

@collection
class UserEntity {
  Id id = Isar.autoIncrement;
  @Index(type: IndexType.value)
  String name;
  String email;
  String image;
  String? phone;
  @enumerated
  UserRole role;
  String? expertise;
  DateTime? createdAt;
  DateTime? updatedAt;
  String? token;

  UserEntity({
    this.id = Isar.autoIncrement,
    this.name = 'Folks',
    this.email = 'folks@dot.com',
    this.image = 'https://api.dicebear.com/9.x/adventurer/png',
    this.phone,
    this.role = UserRole.athlete,
    this.expertise,
    this.createdAt,
    this.updatedAt,
    this.token,
  });
}
