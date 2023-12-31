import 'package:flutter/material.dart';
import 'package:flutterclient/homePage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My Flutter App",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Homepage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
