import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  int sound = 1;

  void Make_sound(int sound_number) {
    AssetsAudioPlayer _assetsAudioPlayer = AssetsAudioPlayer();
    _assetsAudioPlayer.open("assets/note$sound_number.wav");
    _assetsAudioPlayer.play();
  }

  Expanded Build_Key(Color color, int sound) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          Make_sound(sound);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.pink,
        body: SafeArea(
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Build_Key(Colors.amber, 1),
                Build_Key(Colors.yellow, 2),
                Build_Key(Colors.grey.shade600, 3),
                Build_Key(Colors.purple, 4),
                Build_Key(Colors.lime, 5),
                Build_Key(Colors.cyanAccent, 6),
                Build_Key(Colors.black87, 7),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
