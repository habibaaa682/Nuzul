import 'package:nuzul/Feature/Auth/domain/entities/user-entity.dart';

class UserModel extends UserEntity {
  UserModel({
    required super.firstName,
    required super.lastName,
    required super.userName,
    required super.phoneNumber,
    required super.email,
    super.password,
    required super.userType,
  });
  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      firstName: json['firstName'],
      lastName: json['lastName'],
      userName: json['userName'],
      phoneNumber: json['phoneNumber'],
      email: json['email'],
      password: json['password'],
      userType: json['userType'],
    );
  }
}
