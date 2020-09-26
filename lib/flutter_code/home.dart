import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'flatbuttoms.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitDown, DeviceOrientation.portraitUp]);
    double screenWidth = MediaQuery.of(context).size.width;
    
    return Stack(
      children: <Widget>[
        Image.asset(
          'assets/background/img.jpg',
          fit: BoxFit.cover,
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              FlatButtoms(
                buttonColor: Color(0xFFe74c3c),
                horizontalPadding: screenWidth * 0.06,
                sundNumber: 1,
              ),
              FlatButtoms(
                buttonColor: Color(0xFF2ecc71),
                horizontalPadding: screenWidth * 0.07,
                sundNumber: 2,
              ),
              FlatButtoms(
                buttonColor: Color(0xFFf1c40f),
                horizontalPadding: screenWidth * 0.08,
                sundNumber: 3,
              ),
              FlatButtoms(
                buttonColor: Color(0xFFff9f43),
                horizontalPadding: screenWidth * 0.09,
                sundNumber: 4,
              ),
              FlatButtoms(
                buttonColor: Color(0xFF9b59b6),
                horizontalPadding: screenWidth * 0.10,
                sundNumber: 5,
              ),
              FlatButtoms(
                buttonColor: Color(0xFF3498db),
                horizontalPadding: screenWidth * 0.11,
                sundNumber: 6,
              ),
              FlatButtoms(
                buttonColor: Color(0xFFe84393),
                horizontalPadding: screenWidth * 0.12,
                sundNumber: 7,
              ),
            ],
          ),
        )
      ],
    );
  }
}
