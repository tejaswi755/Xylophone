import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  void sound(int a) {
    final player = AudioCache();
    player.play('note$a.wav');
  }

  Expanded perk({Color color, int cnumber}) {
    return Expanded(
      child: FlatButton(child: null,
        onPressed: () {
          sound(cnumber);
        },
        color: color,
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
            mainAxisSize: MainAxisSize.max,
            children: [
             perk(color: Colors.red,cnumber: 1),
             perk(color: Colors.orange,cnumber: 2),
             perk(color: Colors.yellow,cnumber: 3),
             perk(color: Colors.green,cnumber: 4),
             perk(color: Colors.teal,cnumber: 5),
             perk(color: Colors.blue,cnumber: 6),
             perk(color: Colors.purple,cnumber: 7),
            ],
          ),
        ),
      ),
    );
  }
}
