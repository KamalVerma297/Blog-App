import 'package:blog_app/feature/auth/data/data_source/auth_remote_data_source.dart';
import 'package:blog_app/feature/auth/data/repository/auth_repository_impl.dart';
import 'package:blog_app/feature/auth/domain/repository/auth_repository.dart';
import 'package:blog_app/feature/auth/domain/usecases/current_user_usecase.dart';
import 'package:blog_app/feature/auth/domain/usecases/user_login_usecase.dart';
import 'package:blog_app/feature/auth/domain/usecases/user_sign_up_usecase.dart';
import 'package:blog_app/feature/auth/presentation/bloc/auth_bloc.dart';
import 'package:blog_app/feature/splash/presentation/bloc/splash_bloc.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get_it/get_it.dart';

final locator = GetIt.instance;

Future<void> setUpLocator() async {
  FirebaseAuth firebaseAuth = FirebaseAuth.instance;
  const storage = FlutterSecureStorage();

  locator.registerFactory(() => firebaseAuth);
  locator.registerFactory(() => storage);

  initAuthDependencies();
}

void initAuthDependencies() {
  locator.registerFactory<AuthRemoteDataSource>(
    () => AuthRemoteDataSourceImpl(firebaseAuth: locator()),
  );

  locator.registerFactory<AuthRepository>(
    () => AuthRepositoryImpl(authRemoteDataSource: locator()),
  );

  locator.registerFactory(() => UserSignUpUseCase(authRepository: locator()));
  locator.registerFactory(() => UserLoginUseCase(authRepository: locator()));
  locator.registerFactory(() => CurrentUserUseCase(authRepository: locator()));

  locator.registerLazySingleton(
    () => AuthBloc(
      userSignUpUseCase: locator(),
      userLoginUseCase: locator(),
    ),
  );

  locator.registerFactory(
    () => SplashBloc(currentUserUseCase: locator()),
  );
}
