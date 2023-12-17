// ignore_for_file: prefer_const_constructors_in_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:taxi_app/screens/homepage.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
   App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:HomePage()
    );
  }
}
