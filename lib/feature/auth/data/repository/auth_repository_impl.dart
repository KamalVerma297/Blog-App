import 'package:blog_app/core/error/exception.dart';
import 'package:blog_app/feature/auth/domain/entities/user.dart';
import 'package:fpdart/fpdart.dart';

import 'package:blog_app/core/error/failure.dart';
import 'package:blog_app/feature/auth/data/data_source/auth_remote_data_source.dart';
import 'package:blog_app/feature/auth/domain/repository/auth_repository.dart';

class AuthRepositoryImpl implements AuthRepository {
  AuthRemoteDataSource authRemoteDataSource;

  AuthRepositoryImpl({required this.authRemoteDataSource});

  @override
  Future<Either<Failure, User?>> getCurrentUser() async {
    try {
      final user = await authRemoteDataSource.getCurrentUser();

      return right(user);
    } on ServerException catch (e) {
      return left(Failure(message: e.message.toString()));
    } on Exception catch (e) {
      return left(Failure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, User>> loginWithEmailPassword(
    String email,
    String password,
  ) async {
    try {
      final user = await authRemoteDataSource.loginWithEmailPass(
        email: email,
        password: password,
      );

      return right(user);
    } on ServerException catch (e) {
      return left(Failure(message: e.message.toString()));
    } on Exception catch (e) {
      return left(Failure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, User>> signUpWithEmailPassword(
    String name,
    String email,
    String password,
  ) async {
    try {
      final user = await authRemoteDataSource.signUpWithEmailPass(
        name: name,
        email: email,
        password: password,
      );

      return right(user);
    } on ServerException catch (e) {
      return left(Failure(message: e.message.toString()));
    } on Exception catch (e) {
      return left(Failure(message: e.toString()));
    }
  }
}
