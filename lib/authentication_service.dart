import 'package:firebase_auth/firebase_auth.dart';
import 'package:test_task/UI%20Page/loader.dart';

Loader loader = Loader();

class AuthenticationService {
  final FirebaseAuth _firebaseAuth;
  AuthenticationService(this._firebaseAuth);
  Stream<User> get authStateChanges => _firebaseAuth.authStateChanges();
  Future<String> signIn({String email, String password}) async {
    try {
      await _firebaseAuth.signInWithEmailAndPassword(
          email: email, password: password);
      print('signedin');
      return 'Signed In Succesfully';
    } on FirebaseAuthException catch (e) {
      return e.message;
    }
  }

  Future<String> LogOut() async {
    try {
      await _firebaseAuth.signOut();
    } on FirebaseAuthException catch (e) {
      print(e.message);
    }
  }

  // Future<String> signUp({String email, String password}) async {
  //   try {
  //     await _firebaseAuth.createUserWithEmailAndPassword(
  //         email: email, password: password);
  //     return 'Sign Up Succesfully';
  //   } on FirebaseAuthException catch (e) {
  //     print(e);
  //   }
  // }
}
