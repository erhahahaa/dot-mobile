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

  static UserGender fromString(String value) {
    switch (value) {
      case 'female' || 'Female':
        return UserGender.female;
      case 'male' || "Male":
      default:
        return UserGender.male;
    }
  }
}

@Collection(accessor: 'users')
class UserEntity {
  final int id;
  @Index(unique: true)
  final String name;
  final String email;
  final String username;
  final String image;
  final int phone;
  @enumValue
  final UserGender gender;
  @enumValue
  final UserRole role;
  final String? bornPlace;
  final DateTime? bornDate;
  final String? religion;
  final String? address;
  final String? expertise;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  final String? token;

  const UserEntity({
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
