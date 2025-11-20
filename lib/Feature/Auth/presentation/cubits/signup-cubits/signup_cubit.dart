import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:nuzul/Core/errors/error-formatter.dart';
import 'package:nuzul/Feature/Auth/domain/entities/user-entity.dart';
import 'package:nuzul/Feature/Auth/domain/repos/auth-repo.dart';

part 'signup_state.dart';

class SignupCubit extends Cubit<SignupState> {
  final AuthRepo authRepo;
  SignupCubit(this.authRepo) : super(SignupInitial());

  Future<void> signUp(
    String firstName,
    String lastName,
    String userName,
    String phoneNumber,
    String email,
    String password,
    int userType,
  ) async {
    emit(SignupLoading());
    final result = await authRepo.signUp(
      firstName,
      lastName,
      userName,
      phoneNumber,
      email,
      password,
      userType,
    );
    result.fold(
      (failure) => emit(SignupFailure(ErrorFormatter.format(failure.message))),
      (user) => emit(SignupSuccess(user: user)),
    );
  }
}
