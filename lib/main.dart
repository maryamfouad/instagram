import 'package:flutter/material.dart';
import 'package:instagram/Instagram/Explore.dart';
import 'package:instagram/Instagram/Home.dart';
import 'package:instagram/Instagram/Profile.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage (),
    );
  }
}

