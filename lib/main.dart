import 'package:flutter/material.dart';
import 'package:testdesign2/hoem.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
      initialRoute: "/",
      routes: {"/home": (context) => Home()},
    );
  }
}
