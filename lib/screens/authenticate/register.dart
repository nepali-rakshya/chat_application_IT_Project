import 'package:flutter/material.dart';
import 'package:flutter_demo/services/auth.dart';

class Register extends StatefulWidget {
  final toggleView;
  Register({this.toggleView});

  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final AuthService _auth = AuthService();
  final _formKey = GlobalKey<FormState>(); // form key which is global key

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
          title: const Text('Sign up to Udham Nari'),
          actions: <Widget>[
            TextButton.icon(
              icon: Icon(Icons.person),
              label: Text('Sign in'),
              onPressed: () {
                widget.toggleView();
              },
            )
          ]),
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 50.0),
        child: Form(
          key: _formKey, //associating the global form key with our form
          child: Column(
            children: <Widget>[
              SizedBox(height: 20.0), //these are form field
              TextFormField(
                  validator: (val) => val!.isEmpty ? 'Enter an email' : null,
                  onChanged: (val) {
                    setState(() => email =
                        val); // whatever value we type in email section is updated into the email string
                  }),
              SizedBox(height: 20.0),
              TextFormField(
                  obscureText: true, //for hiding the pwd
                  validator: (val) =>
                      val!.length < 6 ? 'Enter a password 6+ chars long' : null,
                  onChanged: (val) {
                    setState(() => password = val);
                  }),
              SizedBox(height: 20.0),
              ElevatedButton(
                  child: Text('Register'),
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(Colors.brown[400]),
                      textStyle: MaterialStateProperty.all(
                          TextStyle(color: Colors.white))),
                  onPressed: () async {
                    if (_formKey.currentState!.validate()) {
                      // when this runs the validate check then it goes to each text field and checks their validity
                      print(email);
                      print(password);
                    }
                  })
            ],
          ),
        ),
      ),
    );
  }
}
