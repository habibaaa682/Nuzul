import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:nuzul/Core/errors/failure.dart';
import 'package:nuzul/Core/services/api-services.dart';
import 'package:nuzul/Feature/Auth/data/models/user-model.dart';
import 'package:nuzul/Feature/Auth/domain/entities/user-entity.dart';
import 'package:nuzul/Feature/Auth/domain/repos/auth-repo.dart';

class AuthRepoImpl extends AuthRepo {
  final ApiService apiService;

  AuthRepoImpl({required this.apiService});

  @override
  Future<Either<Failure, UserEntity>> login(String userName, String password) {
    // TODO: implement login
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, UserEntity>> signUp(
    String firstName,
    String lastName,
    String userName,
    String phoneNumber,
    String email,
    String password,
    int userType,
  ) async {
    try {
      final response = await apiService.signup(
        firstName: firstName,
        lastName: lastName,
        userName: userName,
        phoneNumber: phoneNumber,
        email: email,
        password: password,
        userType: userType,
      );

      return Right(UserModel.fromJson(response));
    } catch (e) {
      log({'AuthRepoImpl Signup Error:': e.toString()}.toString());
      return Left(ServerFailure(e.toString()));
    }
  }
}
