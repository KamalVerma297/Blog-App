import 'package:blog_app/core/error/failure.dart';
import 'package:blog_app/core/usecase/usecase.dart';
import 'package:blog_app/feature/auth/domain/entities/user.dart';
import 'package:blog_app/feature/auth/domain/repository/auth_repository.dart';
import 'package:fpdart/fpdart.dart';

class CurrentUserUseCase implements UseCase<User?, void> {
  final AuthRepository authRepository;

  CurrentUserUseCase({required this.authRepository});

  @override
  Future<Either<Failure, User?>> call([_]) async {
    return await authRepository.getCurrentUser();
  }
}
