import 'package:flutter/material.dart';
import 'package:flutter_demo/screens/authenticate/authenticate.dart';
import 'package:flutter_demo/screens/home/home.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
// return either Home or Authenticate widget
    return Home(); // whatever you return here is shown on the home screen
  }
}
