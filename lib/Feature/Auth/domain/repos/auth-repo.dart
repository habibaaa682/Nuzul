import 'package:dartz/dartz.dart';
import 'package:nuzul/Core/errors/failure.dart';
import 'package:nuzul/Feature/Auth/domain/entities/user-entity.dart';

abstract class AuthRepo {
  Future<Either<Failure, UserEntity>> signUp(
    String name,
    String email,
    String password,
  );
  Future<Either<Failure, UserEntity>> login(String email, String password);
}
