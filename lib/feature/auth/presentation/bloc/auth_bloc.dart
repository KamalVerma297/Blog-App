import 'package:blog_app/feature/auth/domain/entities/user.dart';
import 'package:blog_app/feature/auth/domain/usecases/user_login_usecase.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:blog_app/feature/auth/domain/usecases/user_sign_up_usecase.dart';

part 'auth_bloc.freezed.dart';
part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final UserSignUpUseCase _userSignUpUseCase;
  final UserLoginUseCase _userLoginUseCase;

  AuthBloc({
    required UserSignUpUseCase userSignUpUseCase,
    required UserLoginUseCase userLoginUseCase,
  })  : _userSignUpUseCase = userSignUpUseCase,
        _userLoginUseCase = userLoginUseCase,
        super(const _Initial()) {
    on<AuthEvent>((event, emit) async {
      emit(const _Loading());

      await event.when(
        signUp: (name, email, password) async {
          final res = await _userSignUpUseCase(
            UserSignUpParams(name, email, password),
          );

          res.fold(
            (error) {
              emit(_Failure(error.message));
            },
            (user) {
              emit(_Success(user));
            },
          );
        },
        login: (email, password) async {
          final res = await _userLoginUseCase(
            UserLoginParams(email, password),
          );

          res.fold(
            (error) {
              emit(_Failure(error.message));
            },
            (user) {
              emit(_Success(user));
            },
          );
        },
      );
    });
  }
}
