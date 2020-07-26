import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:practice/Pages/setup/signIn.dart';

class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  String _email, _password;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SignUp'),
      ),
      body: Form(
        key: _formKey,
        child: Column(
          children: <Widget>[
            TextFormField(
              validator: (input){
                if(input.isEmpty){
                  return 'Please type an email';
                }
              },
              onSaved:(input)=> _email = input,
              decoration: InputDecoration(
                  labelText: 'Email'
              ),
            ),
            TextFormField(
              validator: (input){
                if(input.length<6){
                  return 'Please type an password';
                }
              },
              onSaved:(input)=> _password = input,
              decoration: InputDecoration(
                  labelText: 'Password'
              ),
              obscureText: true,
            ),
            RaisedButton(
              onPressed: signUp,
              child: Text('Sign Up'),
            )
          ],
        ),
      ),
    );
  }

  Future<void> signUp() async{
    final formState = _formKey.currentState;
    if(formState.validate()){
      formState.save();
      try{
        AuthResult user = await FirebaseAuth.instance.createUserWithEmailAndPassword(email: _email, password: _password);
        Navigator.of(context).pop();
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> LoginPage()));
      }catch(e){
        print(e.message);
      }
    }
  }
}

