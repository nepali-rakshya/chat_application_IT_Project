import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_demo/models/myuser.dart';

class AuthService {
  // Inside this class we are going to define all the different methods that are going to interact with firebase auth

  final FirebaseAuth _auth = FirebaseAuth.instance;
  // "_" means this (object) auth is private and can only be used in this file; "final" means it's not going to change in future

  // sign in anonymously

  // create user obj based on FirebaseUser

  MyUser? _userFromFirebaseUser(User? user) {
    return user != null ? MyUser(uid: user.uid) : null;
  }

  // auth change user stream

/* Explanation of the user stream
1. the function is return a stream of User
2. 'get' keyword is to declare as a getter, if we say .user for any object, it will return the below syntax 
3. authStateChanged is to notify about changes to the user's sign-in state
4. method map() is to reassign for every FirebaseUser in _auth.authStateChange it will change to _userFromFirebaseUser which is our User*/

  Stream<MyUser?> get user {
    return _auth
        .authStateChanges()
        .map((User? user) => _userFromFirebaseUser(user!));
  }

  // signInAnon is a method
  Future signInAnon() async {
    try {
      // try and catch block
      UserCredential userCredential =
          await FirebaseAuth.instance.signInAnonymously();
      User? user = userCredential.user!;
      return _userFromFirebaseUser(user);
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  // sign in with email and pwd

  // register with email and pwd

  // sign out

  Future signOut() async {
    try {
      return await _auth.signOut();
    } catch (e) {
      print(e.toString());
      return null;
    }
  }
}
