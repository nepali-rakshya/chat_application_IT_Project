import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_demo/screens/wrapper.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: FirebaseOptions(
      apiKey: "AIzaSyBQATsxMQEg4uzaOXizzmEBCKhWKw8Irjs", // Your apiKey
      appId: "1:934206855682:android:2ddc9b5b74125d62e7251b", // Your appId
      messagingSenderId: "934206855682", // Your messagingSenderId
      projectId: "udham-nari-5c21e", // Your projectId
    ),
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Wrapper(), // wrapper is going to be the home screen
    );
  }
}
