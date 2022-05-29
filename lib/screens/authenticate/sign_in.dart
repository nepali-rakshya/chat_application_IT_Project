import 'package:flutter/material.dart';
import 'package:flutter_demo/services/auth.dart';

class SignIn extends StatefulWidget {
  final toggleView;
  SignIn({this.toggleView});

  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final AuthService _auth =
      AuthService(); //it is the instance of AuthService class in auth.dart

  //text field state
  String email = '';
  String password = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        backgroundColor: Colors.grey[400],
        elevation: 0.0,
        title: const Text('Sign in to Udham Nari'),
        actions: <Widget>[
          TextButton.icon(
            icon: Icon(Icons.person),
            label: Text('Register'),
            onPressed: () {
              widget.toggleView();
            },
          )
        ],
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 50.0),
        child: Form(
          child: Column(
            children: <Widget>[
              SizedBox(height: 20.0), //these are form field
              TextFormField(onChanged: (val) {
                setState(() => email =
                    val); // whatever value we type in email section is updated into the email string
              }),
              SizedBox(height: 20.0),
              TextFormField(
                  obscureText: true, //for hiding the pwd
                  onChanged: (val) {
                    setState(() => password = val);
                  }),
              SizedBox(height: 20.0),
              ElevatedButton(
                child: Text('Sign in'),
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(Colors.brown[400]),
                    textStyle: MaterialStateProperty.all(
                        TextStyle(color: Colors.white))),
                onPressed: () async {
                  print(email);
                  print(password);
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
