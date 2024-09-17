// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'splash_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SplashEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() currentUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? currentUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? currentUser,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CurrentUser value) currentUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CurrentUser value)? currentUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CurrentUser value)? currentUser,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SplashEventCopyWith<$Res> {
  factory $SplashEventCopyWith(
          SplashEvent value, $Res Function(SplashEvent) then) =
      _$SplashEventCopyWithImpl<$Res, SplashEvent>;
}

/// @nodoc
class _$SplashEventCopyWithImpl<$Res, $Val extends SplashEvent>
    implements $SplashEventCopyWith<$Res> {
  _$SplashEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$CurrentUserImplCopyWith<$Res> {
  factory _$$CurrentUserImplCopyWith(
          _$CurrentUserImpl value, $Res Function(_$CurrentUserImpl) then) =
      __$$CurrentUserImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CurrentUserImplCopyWithImpl<$Res>
    extends _$SplashEventCopyWithImpl<$Res, _$CurrentUserImpl>
    implements _$$CurrentUserImplCopyWith<$Res> {
  __$$CurrentUserImplCopyWithImpl(
      _$CurrentUserImpl _value, $Res Function(_$CurrentUserImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CurrentUserImpl implements _CurrentUser {
  const _$CurrentUserImpl();

  @override
  String toString() {
    return 'SplashEvent.currentUser()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CurrentUserImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() currentUser,
  }) {
    return currentUser();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? currentUser,
  }) {
    return currentUser?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? currentUser,
    required TResult orElse(),
  }) {
    if (currentUser != null) {
      return currentUser();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CurrentUser value) currentUser,
  }) {
    return currentUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CurrentUser value)? currentUser,
  }) {
    return currentUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CurrentUser value)? currentUser,
    required TResult orElse(),
  }) {
    if (currentUser != null) {
      return currentUser(this);
    }
    return orElse();
  }
}

abstract class _CurrentUser implements SplashEvent {
  const factory _CurrentUser() = _$CurrentUserImpl;
}

/// @nodoc
mixin _$SplashState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() userNotLoggedInState,
    required TResult Function() userLoggedInState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? userNotLoggedInState,
    TResult? Function()? userLoggedInState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? userNotLoggedInState,
    TResult Function()? userLoggedInState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_UserNotLoggedInState value) userNotLoggedInState,
    required TResult Function(_UserLoggedInState value) userLoggedInState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_UserNotLoggedInState value)? userNotLoggedInState,
    TResult? Function(_UserLoggedInState value)? userLoggedInState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_UserNotLoggedInState value)? userNotLoggedInState,
    TResult Function(_UserLoggedInState value)? userLoggedInState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SplashStateCopyWith<$Res> {
  factory $SplashStateCopyWith(
          SplashState value, $Res Function(SplashState) then) =
      _$SplashStateCopyWithImpl<$Res, SplashState>;
}

/// @nodoc
class _$SplashStateCopyWithImpl<$Res, $Val extends SplashState>
    implements $SplashStateCopyWith<$Res> {
  _$SplashStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$SplashStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'SplashState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() userNotLoggedInState,
    required TResult Function() userLoggedInState,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? userNotLoggedInState,
    TResult? Function()? userLoggedInState,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? userNotLoggedInState,
    TResult Function()? userLoggedInState,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_UserNotLoggedInState value) userNotLoggedInState,
    required TResult Function(_UserLoggedInState value) userLoggedInState,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_UserNotLoggedInState value)? userNotLoggedInState,
    TResult? Function(_UserLoggedInState value)? userLoggedInState,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_UserNotLoggedInState value)? userNotLoggedInState,
    TResult Function(_UserLoggedInState value)? userLoggedInState,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements SplashState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$SplashStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'SplashState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() userNotLoggedInState,
    required TResult Function() userLoggedInState,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? userNotLoggedInState,
    TResult? Function()? userLoggedInState,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? userNotLoggedInState,
    TResult Function()? userLoggedInState,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_UserNotLoggedInState value) userNotLoggedInState,
    required TResult Function(_UserLoggedInState value) userLoggedInState,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_UserNotLoggedInState value)? userNotLoggedInState,
    TResult? Function(_UserLoggedInState value)? userLoggedInState,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_UserNotLoggedInState value)? userNotLoggedInState,
    TResult Function(_UserLoggedInState value)? userLoggedInState,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements SplashState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$UserNotLoggedInStateImplCopyWith<$Res> {
  factory _$$UserNotLoggedInStateImplCopyWith(_$UserNotLoggedInStateImpl value,
          $Res Function(_$UserNotLoggedInStateImpl) then) =
      __$$UserNotLoggedInStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UserNotLoggedInStateImplCopyWithImpl<$Res>
    extends _$SplashStateCopyWithImpl<$Res, _$UserNotLoggedInStateImpl>
    implements _$$UserNotLoggedInStateImplCopyWith<$Res> {
  __$$UserNotLoggedInStateImplCopyWithImpl(_$UserNotLoggedInStateImpl _value,
      $Res Function(_$UserNotLoggedInStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UserNotLoggedInStateImpl implements _UserNotLoggedInState {
  const _$UserNotLoggedInStateImpl();

  @override
  String toString() {
    return 'SplashState.userNotLoggedInState()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserNotLoggedInStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() userNotLoggedInState,
    required TResult Function() userLoggedInState,
  }) {
    return userNotLoggedInState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? userNotLoggedInState,
    TResult? Function()? userLoggedInState,
  }) {
    return userNotLoggedInState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? userNotLoggedInState,
    TResult Function()? userLoggedInState,
    required TResult orElse(),
  }) {
    if (userNotLoggedInState != null) {
      return userNotLoggedInState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_UserNotLoggedInState value) userNotLoggedInState,
    required TResult Function(_UserLoggedInState value) userLoggedInState,
  }) {
    return userNotLoggedInState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_UserNotLoggedInState value)? userNotLoggedInState,
    TResult? Function(_UserLoggedInState value)? userLoggedInState,
  }) {
    return userNotLoggedInState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_UserNotLoggedInState value)? userNotLoggedInState,
    TResult Function(_UserLoggedInState value)? userLoggedInState,
    required TResult orElse(),
  }) {
    if (userNotLoggedInState != null) {
      return userNotLoggedInState(this);
    }
    return orElse();
  }
}

abstract class _UserNotLoggedInState implements SplashState {
  const factory _UserNotLoggedInState() = _$UserNotLoggedInStateImpl;
}

/// @nodoc
abstract class _$$UserLoggedInStateImplCopyWith<$Res> {
  factory _$$UserLoggedInStateImplCopyWith(_$UserLoggedInStateImpl value,
          $Res Function(_$UserLoggedInStateImpl) then) =
      __$$UserLoggedInStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UserLoggedInStateImplCopyWithImpl<$Res>
    extends _$SplashStateCopyWithImpl<$Res, _$UserLoggedInStateImpl>
    implements _$$UserLoggedInStateImplCopyWith<$Res> {
  __$$UserLoggedInStateImplCopyWithImpl(_$UserLoggedInStateImpl _value,
      $Res Function(_$UserLoggedInStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UserLoggedInStateImpl implements _UserLoggedInState {
  const _$UserLoggedInStateImpl();

  @override
  String toString() {
    return 'SplashState.userLoggedInState()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UserLoggedInStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() userNotLoggedInState,
    required TResult Function() userLoggedInState,
  }) {
    return userLoggedInState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? userNotLoggedInState,
    TResult? Function()? userLoggedInState,
  }) {
    return userLoggedInState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? userNotLoggedInState,
    TResult Function()? userLoggedInState,
    required TResult orElse(),
  }) {
    if (userLoggedInState != null) {
      return userLoggedInState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_UserNotLoggedInState value) userNotLoggedInState,
    required TResult Function(_UserLoggedInState value) userLoggedInState,
  }) {
    return userLoggedInState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_UserNotLoggedInState value)? userNotLoggedInState,
    TResult? Function(_UserLoggedInState value)? userLoggedInState,
  }) {
    return userLoggedInState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_UserNotLoggedInState value)? userNotLoggedInState,
    TResult Function(_UserLoggedInState value)? userLoggedInState,
    required TResult orElse(),
  }) {
    if (userLoggedInState != null) {
      return userLoggedInState(this);
    }
    return orElse();
  }
}

abstract class _UserLoggedInState implements SplashState {
  const factory _UserLoggedInState() = _$UserLoggedInStateImpl;
}
