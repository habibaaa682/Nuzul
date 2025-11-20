class UserEntity {
  final String firstName;
  final String lastName;
  final String userName;
  final String phoneNumber;
  final String email;
  final String? password;
  final int userType;

  UserEntity({
    required this.firstName,
    required this.lastName,
    required this.userName,
    required this.phoneNumber,
    required this.email,
    required this.password,
    required this.userType,
  });
}
