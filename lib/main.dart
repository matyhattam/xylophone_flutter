import 'package:flutter/material.dart';
import 'package:audioplayers/src/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound({int soundId}) {
    final player = AudioCache();
    player.play('note$soundId.wav');
  }

  Expanded buildKey({int soundId, Color color}) {
    return Expanded(
      child: TextButton(
        style: ButtonStyle(backgroundColor: MaterialStateProperty.all(color)),
        onPressed: () {
          playSound(soundId: soundId);
        },
        child: Text(''),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey(color: Colors.red, soundId: 1),
              buildKey(color: Colors.orange, soundId: 2),
              buildKey(color: Colors.yellow, soundId: 3),
              buildKey(color: Colors.green, soundId: 4),
              buildKey(color: Colors.teal, soundId: 5),
              buildKey(color: Colors.blue, soundId: 6),
              buildKey(color: Colors.purple, soundId: 7)
            ],
          ),
        ),
      ),
    );
  }
}
