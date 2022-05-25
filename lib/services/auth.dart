import 'package:firebase_auth/firebase_auth.dart';

class AuthService {
  // Inside this class we are going to define all the different methods that are going to interact with firebase auth

  final FirebaseAuth _auth = FirebaseAuth.instance;
  // "_" means this (object) auth is private and can only be used in this file; "final" means it's not going to change in future

  // sign in anonymously
  Future signInAnon() async {
    // signInAnon is a method
    try {
      // try and catch block
      UserCredential userCredential =
          await FirebaseAuth.instance.signInAnonymously();
      User user = userCredential.user!;
      return user;
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  // sign in with email and pwd

  // register with email and pwd

  // sign out

}
