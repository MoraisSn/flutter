import 'package:flutter/material.dart';
import 'pages/login.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App Fofo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.red[200]
      ),
      home:const LoginPage(),
    );
  }
}