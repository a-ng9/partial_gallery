import 'package:flutter/material.dart';
import 'package:partial_gallery/screens/sign_in.dart';
import 'package:partial_gallery/utils/styles.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Partial Gallery',
      theme: ThemeData(
        primarySwatch: Styles.getPinkMaterialColor,
      ),
      home: SignIn(title: 'Partial Gallery'),
    );
  }
}

//Follow tutorial for the authentication sign-in
//https://www.youtube.com/watch?v=LBJoY4VjECo&list=PL4cUxeGkcC9j--TKIdkb3ISfRbJeJYQwC&index=5
