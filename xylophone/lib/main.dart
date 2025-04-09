import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Xylophone', home: HomePage());
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Xylophone')),
      body: Column(
        children: [
          Tile(color: Colors.red, noteSound: 'note1.wav'),
          Tile(color: Colors.orange, noteSound: 'note2.wav'),
          Tile(color: Colors.yellow, noteSound: 'note3.wav'),
          Tile(color: Colors.green, noteSound: 'note4.wav'),
          Tile(color: Colors.blue, noteSound: 'note5.wav'),
          Tile(color: Colors.purple, noteSound: 'note6.wav'),
          Tile(color: Colors.pinkAccent, noteSound: 'note7.wav'),
        ],
      ),
    );
  }
}

class Tile extends StatelessWidget {
  const Tile({super.key, required this.color, required this.noteSound});
  final Color color;
  final String noteSound;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: () async {
          final player = AudioPlayer();
          await player.setAsset('assets/audio/$noteSound');
          await player.play();
          player.dispose();
        },
        child: Container(
          color: color,
          child: Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(Icons.circle, size: 30, color: Colors.white70),
                Icon(Icons.circle, size: 30, color: Colors.white70),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
