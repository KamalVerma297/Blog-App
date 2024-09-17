import 'package:blog_app/feature/auth/domain/entities/user.dart';
import 'package:fpdart/fpdart.dart';

import 'package:blog_app/core/error/failure.dart';
import 'package:blog_app/core/usecase/usecase.dart';
import 'package:blog_app/feature/auth/domain/repository/auth_repository.dart';

class UserSignUpUseCase implements UseCase<User, UserSignUpParams> {
  final AuthRepository authRepository;

  UserSignUpUseCase({required this.authRepository});

  @override
  Future<Either<Failure, User>> call(UserSignUpParams params) async {
    return await authRepository.signUpWithEmailPassword(
      params.name,
      params.email,
      params.password,
    );
  }
}

class UserSignUpParams {
  final String name;
  final String email;
  final String password;

  UserSignUpParams(this.name, this.email, this.password);
}
