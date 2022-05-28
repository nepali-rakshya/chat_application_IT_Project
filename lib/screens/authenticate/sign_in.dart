import 'package:flutter/material.dart';
import 'package:flutter_demo/services/auth.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final AuthService _auth =
      AuthService(); //it is the instance of AuthService class in auth.dart
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[100],
      appBar: AppBar(
        backgroundColor: Colors.brown[400],
        elevation: 0.0,
        title: const Text('Sign in to Udham Nari'),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 50.0),
        child: ElevatedButton(
            child: const Text('Sign in anon'),
            onPressed: () async {
              // the variable is dynamic cuz it can be null or firebase user
              dynamic result = await _auth
                  .signInAnon(); // if you want to access the method signInAnon in auth.dart then use _auth object and with "." use the method.
              if (result == null) {
                print('error signing in');
              } else {
                print('signed in');
                print(result);
                //print(result.uid); this prints the user id
              }
            }),
      ),
    );
  }
}
