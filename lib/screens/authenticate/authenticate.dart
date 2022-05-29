import 'package:flutter/material.dart';
import 'package:flutter_demo/screens/authenticate/register.dart';
import 'package:flutter_demo/screens/authenticate/sign_in.dart';

class Authenticate extends StatefulWidget {
  @override
  _AuthenticateState createState() => _AuthenticateState();
}

class _AuthenticateState extends State<Authenticate> {
  bool showSignIn =
      true; // if showSignIn is true then show sign in else register

  @override
  Widget build(BuildContext context) {
    if (showSignIn) {
      return SignIn();
    } else {
      return Register();
    }
  }
}
