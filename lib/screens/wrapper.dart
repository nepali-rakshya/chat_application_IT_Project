import 'package:flutter/material.dart';
import 'package:flutter_demo/models/myuser.dart';
import 'package:flutter_demo/screens/authenticate/authenticate.dart';
import 'package:flutter_demo/screens/home/home.dart';
import 'package:provider/provider.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<MyUser?>(
        context); //we are accessing user data from this line of code
    print(user);

// return either Home or Authenticate widget
    return Authenticate(); // whatever you return here is shown on the home screen
  }
}
