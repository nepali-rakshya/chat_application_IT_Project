import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_demo/models/myuser.dart';

class AuthService {
  // Inside this class we are going to define all the different methods that are going to interact with firebase auth

  final FirebaseAuth _auth = FirebaseAuth.instance;
  // "_" means this (object) auth is private and can only be used in this file; "final" means it's not going to change in future

  // sign in anonymously

  // create user obj based on FirebaseUser

  MyUser? _userfromFirebase(User user) {
    return user != null ? MyUser(uid: user.uid) : null;
  }

  // signInAnon is a method
  Future signInAnon() async {
    try {
      // try and catch block
      UserCredential userCredential =
          await FirebaseAuth.instance.signInAnonymously();
      User? user = userCredential.user!;
      return _userfromFirebase(user!);
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  // sign in with email and pwd

  // register with email and pwd

  // sign out

}
