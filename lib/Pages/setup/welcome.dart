import 'package:flutter/material.dart';
import 'package:practice/Pages/setup/signIn.dart';
import 'package:practice/Pages/setup/signUp.dart';

class Welcome extends StatefulWidget {
  @override
  _WelcomeState createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Welcome to my app'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          RaisedButton(
            onPressed: navigateToSignIn,
            child: Text('SignIn'),
          ),
          RaisedButton(
            onPressed: navigateToSignUp,
            child: Text('SignUp'),
          )
        ],
      ),
    );
  }

  void navigateToSignIn(){
    Navigator.push(context, MaterialPageRoute(builder: (context)=> LoginPage(), fullscreenDialog: true));
  }

  void navigateToSignUp(){
    Navigator.push(context, MaterialPageRoute(builder: (context)=> SignUpPage(), fullscreenDialog: true));
  }
}

