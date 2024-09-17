import 'package:blog_app/core/error/failure.dart';
import 'package:blog_app/feature/auth/domain/entities/user.dart';
import 'package:fpdart/fpdart.dart';

abstract interface class AuthRepository {
  Future<Either<Failure, User>> signUpWithEmailPassword(
    String name,
    String email,
    String password,
  );

  Future<Either<Failure, User>> loginWithEmailPassword(
    String email,
    String password,
  );

  Future<Either<Failure, User?>> getCurrentUser();
}
