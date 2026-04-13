import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(const XylophoneApp());

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({super.key});

  @override
  Widget build(BuildContext context) {

    final player = AudioPlayer();

    void playSound (int note) {
      player.play(AssetSource('note$note.wav'));
    }

    Expanded buildKey({required Color color, required int soundNumber}) {
      return Expanded(
        child: FilledButton(
          style: FilledButton.styleFrom(
            backgroundColor: color,
              shape: RoundedRectangleBorder(borderRadius: BorderRadiusDirectional.zero,)
          ),
          onPressed:
              ()  {
            playSound(soundNumber);
          },
          child: const SizedBox.shrink(),
        ),
      );
    }

    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(child:
        Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            buildKey(color: Colors.red, soundNumber: 1),
            buildKey(color: Colors.orange, soundNumber: 2),
            buildKey(color: Colors.yellow, soundNumber: 3),
            buildKey(color: Colors.green, soundNumber: 4),
            buildKey(color: Colors.teal, soundNumber: 5),
            buildKey(color: Colors.blue, soundNumber: 6),
            buildKey(color: Colors.purple, soundNumber: 7),
          ],
        ),
        ),
      ),
    );
  }
}
