
import 'package:flutter/material.dart';
import 'flutter_code/home.dart';


void main(){
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Xylphone',
      home: Home(),
    );
  }
}

