// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:blog_app/feature/auth/domain/usecases/current_user_usecase.dart';

part 'splash_bloc.freezed.dart';
part 'splash_event.dart';
part 'splash_state.dart';

class SplashBloc extends Bloc<SplashEvent, SplashState> {
  final CurrentUserUseCase _currentUserUseCase;

  SplashBloc({
    required CurrentUserUseCase currentUserUseCase,
  })  : _currentUserUseCase = currentUserUseCase,
        super(const _Initial()) {
    on<SplashEvent>((event, emit) {
      emit(const _Loading());
      
      event.when(
        currentUser: () async {
          final res = await _currentUserUseCase();
          res.fold(
            (error) {
              emit(const _UserNotLoggedInState());
            },
            (user) {
              if (user != null) {
                print('kamal user email is ${user.email}');

                emit(const _UserLoggedInState());
              } else {
                emit(const _UserNotLoggedInState());
              }
            },
          );
        },
      );
    });
  }
}
