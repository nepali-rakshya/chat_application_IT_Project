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
        child: Form(
          child: Column(
            children: <Widget>[
              SizedBox(height: 20.0), //these are form field
              TextFormField(onChanged: (val) {}),
              SizedBox(height: 20.0),
              TextFormField(
                  obscureText: true, //for hiding the pwd
                  onChanged: (val) {}),
              SizedBox(height: 20.0),
              ElevatedButton(
                child: Text('Sign in'),
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(Colors.pink[400]),
                    textStyle: MaterialStateProperty.all(
                        TextStyle(color: Colors.white))),
                onPressed: () async {},
              )
            ],
          ),
        ),
      ),
    );
  }
}
