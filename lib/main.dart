import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_demo/models/myuser.dart';
import 'package:flutter_demo/screens/wrapper.dart';
import 'package:flutter_demo/services/auth.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: const FirebaseOptions(
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
    return StreamProvider<MyUser?>.value(
      catchError: (_, __) => null,
      initialData: null,
      // the stream provider is listening to the Stream and wrapping this material app now they can access all the data provided by the stream
      value: AuthService().user,
      //we are accessing user from auth.dart to value creating instance
      child: MaterialApp(
        home: Wrapper(), // wrapper is going to be the home screen
      ),
    );
  }
}
