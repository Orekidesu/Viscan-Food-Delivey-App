import 'package:firebase_auth/firebase_auth.dart';

class AuthService {
  // get instance of firebase auth
  final FirebaseAuth _fireabaseAuth = FirebaseAuth.instance;

  // get current user
  User? getCurrentUser() {
    return _fireabaseAuth.currentUser;
  }

  // sign in with email and password
  Future<UserCredential> signInWithEmailAndPassword(
      String email, String password) async {
    try {
      final UserCredential userCredential =
          await _fireabaseAuth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      return userCredential;
    } on FirebaseAuthException catch (e) {
      throw Exception(e.code);
    }
  }

  // sign up
  Future<UserCredential> signUpWithEmailAndPassword(
      String email, String password) async {
    try {
      final UserCredential userCredential =
          await _fireabaseAuth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      return userCredential;
    } on FirebaseAuthException catch (e) {
      throw Exception(e.code);
    }
  }

  // sign out
  Future<void> signOut() async {
    await _fireabaseAuth.signOut();
  }
}
