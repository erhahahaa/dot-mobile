import 'package:isar/isar.dart';

part 'user_entity.g.dart';

enum UserRole { coach, athlete }

enum UserGender { male, female }

@collection
class UserEntity {
  Id id = Isar.autoIncrement;
  @Index(type: IndexType.value)
  String name;
  String email;
  String username;
  String image;
  String? phone;
  @enumerated
  UserGender gender;
  @enumerated
  UserRole role;
  String? bornPlace;
  DateTime? bornDate;
  String? religion;
  String? address;
  String? expertise;
  DateTime? createdAt;
  DateTime? updatedAt;
  String? token;

  UserEntity({
    this.id = Isar.autoIncrement,
    this.name = 'Folks',
    this.email = 'folks@dot.com',
    this.username = 'folks',
    this.image = 'https://api.dicebear.com/9.x/adventurer/png',
    this.phone,
    this.gender = UserGender.male,
    this.role = UserRole.athlete,
    this.bornPlace,
    this.bornDate,
    this.religion,
    this.address,
    this.expertise,
    this.createdAt,
    this.updatedAt,
    this.token,
  });
}
