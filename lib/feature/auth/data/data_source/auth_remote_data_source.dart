import 'package:blog_app/core/error/exception.dart';
import 'package:blog_app/feature/auth/data/models/user_model.dart';
import 'package:firebase_auth/firebase_auth.dart';

abstract interface class AuthRemoteDataSource {
  Future<UserModel> signUpWithEmailPass({
    required String name,
    required String email,
    required String password,
  });

  Future<UserModel> loginWithEmailPass({
    required String email,
    required String password,
  });

  Future<UserModel?> getCurrentUser();
}

class AuthRemoteDataSourceImpl implements AuthRemoteDataSource {
  final FirebaseAuth firebaseAuth;

  AuthRemoteDataSourceImpl({required this.firebaseAuth});

  @override
  Future<UserModel?> getCurrentUser() async {
    if (firebaseAuth.currentUser != null) {
      Map<String, dynamic> user = {
        'id': firebaseAuth.currentUser?.uid,
        'name': firebaseAuth.currentUser?.displayName,
        'email': firebaseAuth.currentUser?.email,
      };

      return UserModel.fromJson(user);
    }

    return null;
  }

  @override
  Future<UserModel> loginWithEmailPass({
    required String email,
    required String password,
  }) async {
    try {
      UserCredential userCredential =
          await firebaseAuth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );

      if (userCredential.user == null) {
        throw ServerException('User not found');
      }

      Map<String, dynamic> user = {
        'id': userCredential.user?.uid,
        'name': userCredential.user?.displayName,
        'email': userCredential.user?.email,
      };

      return UserModel.fromJson(user);
    } on FirebaseAuthException {
      throw ServerException('Incorrect Username/Password');
    } catch (e) {
      throw ServerException(e.toString());
    }
  }

  @override
  Future<UserModel> signUpWithEmailPass({
    required String name,
    required String email,
    required String password,
  }) async {
    try {
      UserCredential userCredential =
          await firebaseAuth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );

      if (userCredential.user == null) {
        throw ServerException('Something went wrong...');
      }

      Map<String, dynamic> user = {
        'id': userCredential.user?.uid,
        'name': userCredential.user?.displayName,
        'email': userCredential.user?.email,
      };

      return UserModel.fromJson(user);
    } catch (e) {
      throw ServerException(e.toString());
    }
  }
}
