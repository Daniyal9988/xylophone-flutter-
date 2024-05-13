import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(const Xylophone());

class Xylophone extends StatelessWidget {
  const Xylophone({super.key});

  Future<void> playSound(int a) async {
    final player = AudioPlayer();
    await player.play(AssetSource('note$a.wav'));
  }
  /* a function to return a widget 
  Widget draw(String color) {
    // ignore: sized_box_for_whitespace
    return Container(
      width: 100, // Add width constraint
      height: 50, // Add height constraint
      child: const ColoredBox(
        color: Colors.red,
      ),
    );
  }
*/

  Expanded draw(Color color, int soundNUmber) {
    return Expanded(
      child: TextButton(
        onPressed: () async {
          playSound(soundNUmber); // shows that the value can not be null
        },
        child: Container(
          color: color,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Center(
            child: Column(
              children: [
                draw(Colors.red, 1),
                draw(Colors.blue, 2),
                draw(Colors.green, 3),
                draw(Colors.deepPurpleAccent, 4),
                draw(Colors.purple, 5),
                draw(Colors.orange, 6),
                draw(Colors.yellow, 7),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
