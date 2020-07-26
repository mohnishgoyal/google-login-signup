import 'package:flutter/material.dart';
import 'file:///D:/flutter/practice/lib/Pages/setup/signIn.dart';
import 'package:practice/Pages/setup/welcome.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Welcome(),
    );
  }
}