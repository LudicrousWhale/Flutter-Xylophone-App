import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  // function to play necessary sound

  void playSound(int noteNumber) {
    final player = AudioCache();
    player.play('note$noteNumber.wav');
  }

  // function to produce the key
  Expanded makeKey(int noteNumber, Color theColor) {
    return Expanded(
      child: MaterialButton(
        enableFeedback: false,
        onPressed: () {
          playSound(noteNumber);
        },
        child: Text(
          '$noteNumber',
          style: TextStyle(
            color: Colors.white,
            fontSize: 50.0,
            shadows: [
              Shadow(
                offset: Offset(2.0, 2.0),
                blurRadius: 3.0,
                color: Colors.black,
                )
            ],
          ),
        ),
        color: theColor,
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
              //first
              makeKey(1, Colors.red),
              
              //second
              makeKey(2, Colors.orange),

              //third
              makeKey(3, Colors.yellow),

              //fourth
              makeKey(4, Colors.green),

              //fifth
              makeKey(5, Colors.blue),

              //sixth
              makeKey(6, Colors.indigo),

              //seventh
              makeKey(7, Colors.purple),

            ],
          ),
        ),
      ),
    );
  }
}

//red, orange, yellow, green, blue, indigo and violet.
