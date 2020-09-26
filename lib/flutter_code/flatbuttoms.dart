import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';
class FlatButtoms extends StatelessWidget {

  double horizontalPadding;
  Color buttonColor;
  int sundNumber;

  FlatButtoms({
    this.buttonColor,
    this.horizontalPadding,
    this.sundNumber
  });

  void playSound(int sundNumber){
    final player = AudioCache(prefix: 'assets/audio/');
    player.play('note$sundNumber.wav');
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: horizontalPadding,
        vertical: MediaQuery.of(context).size.height * 0.012
      ),
      child: FlatButton(
        color: buttonColor,
        onPressed: () {
          playSound(sundNumber);
        },
        child: Padding(
          padding: EdgeInsets.symmetric(
            vertical: MediaQuery.of(context).size.height * 0.035
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Icon(
                Icons.add_circle,
                color: Colors.white,
              ),
               Icon(
                Icons.add_circle,
                color: Colors.white,
              ),
            ],
          ),
        )
      ),
    );
  }
}