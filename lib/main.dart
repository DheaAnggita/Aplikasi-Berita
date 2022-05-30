import 'package:flutter/material.dart';
import 'view/loginpage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "NewsApp",
      home: LoginPage(),
    );
  }
}