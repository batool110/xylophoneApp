import 'package:flutter/material.dart';
//audioplayers import
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    void playMusic(int noteNumber) {
      final player = AudioCache();
      player.play('note$noteNumber.wav');
    }

    buildKey(int note, color) {
      return Expanded(
        child: FlatButton(
          onPressed: () {
            playMusic(note);
          },
          child: Text(''),
          color: color,
        ),
      );
    }

    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            buildKey(1 , Colors.red),
            buildKey(2 , Colors.orange),
            buildKey(3 , Colors.yellow),
            buildKey(4 , Colors.green),
            buildKey(5 , Colors.teal),
            buildKey(6 , Colors.blue),
            buildKey(7 , Colors.purple),
          ],
        )),
      ),
    );
  }
}
