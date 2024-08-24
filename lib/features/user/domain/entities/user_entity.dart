import 'package:isar/isar.dart';

part 'user_entity.g.dart';

enum UserRole { coach, athlete, admin }

enum UserGender {
  male,
  female;

  String get value => toString().split('.').last;

  String get name {
    return switch (this) {
      UserGender.male => 'Male',
      UserGender.female => 'Female',
    };
  }
}

@Collection(accessor: 'users')
class UserEntity {
  int id;
  @Index(unique: true)
  String name;
  String email;
  String username;
  String image;
  int phone;
  @enumValue
  UserGender gender;
  @enumValue
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
    this.id = 0,
    this.name = 'Folks',
    this.email = 'folks@dot.com',
    this.username = 'folks',
    this.image = 'https://api.dicebear.com/9.x/adventurer/png',
    this.phone = 6281555444333,
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
