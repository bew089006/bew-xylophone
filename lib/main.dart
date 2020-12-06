import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  final player = AudioCache();

  void playAudio(index) async {
    player.play('note$index.wav');
  }

  Expanded buttonAudio(index, color) {
    return Expanded(
      child: RaisedButton(
        onPressed: () {
          playAudio(index);
        },
        color: color,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buttonAudio(1, Colors.red),
              buttonAudio(2, Colors.orange),
              buttonAudio(3, Colors.yellow),
              buttonAudio(4, Colors.green),
              buttonAudio(5, Colors.blueAccent),
              buttonAudio(6, Colors.lightBlueAccent),
              buttonAudio(7, Colors.purple),
            ],
          ),
        ),
      ),
    );
  }
}
