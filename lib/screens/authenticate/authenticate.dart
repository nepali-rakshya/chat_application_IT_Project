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
  toggleView() {
    setState(() => showSignIn =
        !showSignIn); // if showsingnin is true it ! changes into false and vice versa
  }

  @override
  Widget build(BuildContext context) {
    if (showSignIn) {
      // if the value is true then sign in is shown
      return SignIn(toggleView: toggleView);
    } else {
      // if the value is false then register is shown
      return Register(toggleView: toggleView);
    }
  }
}
