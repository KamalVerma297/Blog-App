part of 'splash_bloc.dart';

@freezed
class SplashState with _$SplashState {
  const factory SplashState.initial() = _Initial;
  const factory SplashState.loading() = _Loading;
  const factory SplashState.userNotLoggedInState() = _UserNotLoggedInState;
  const factory SplashState.userLoggedInState() = _UserLoggedInState;
}
