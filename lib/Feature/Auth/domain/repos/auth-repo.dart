import 'package:dartz/dartz.dart';
import 'package:nuzul/Core/errors/failure.dart';
import 'package:nuzul/Feature/Auth/domain/entities/user-entity.dart';

abstract class AuthRepo {
  Future<Either<Failure, UserEntity>> signUp(
    String firstName,
    String lastName,
    String userName,
    String phoneNumber,
    String email,
    String password,
    int userType,
  );
  Future<Either<Failure, UserEntity>> login(String userName, String password);
}
