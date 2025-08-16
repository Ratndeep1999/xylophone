import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'xylophonebuttons.dart';

class Xylophone extends StatelessWidget {
  const Xylophone({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              XyloPhoneButtons(
                buttonColor: Colors.red,
                playSound: () {
                  debugPrint('C');
                },
              ),
              SizedBox(height: 5),
              XyloPhoneButtons(
                buttonColor: Colors.orange,
                playSound: () {
                  debugPrint('B');
                },
              ),
              SizedBox(height: 5),
              XyloPhoneButtons(
                buttonColor: Colors.yellow,
                playSound: () {
                  debugPrint('D');
                },
              ),
              SizedBox(height: 5),
              XyloPhoneButtons(
                buttonColor: Colors.green,
                playSound: () {
                  debugPrint('A');
                },
              ),
              SizedBox(height: 5),
              XyloPhoneButtons(
                buttonColor: Colors.lightBlue.shade400,
                playSound: () {
                  debugPrint('E');
                },
              ),
              SizedBox(height: 5),
              XyloPhoneButtons(
                buttonColor: Colors.blue.shade700,
                playSound: () {
                  debugPrint('F');
                },
              ),
              SizedBox(height: 5),
              XyloPhoneButtons(
                buttonColor: Colors.purple,
                playSound: () {
                  debugPrint('G');
                },
              ),
              SizedBox(height: 5),
              XyloPhoneButtons(
                buttonColor: Colors.pink,
                playSound: () {
                  debugPrint('H');
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> playSound() async {
    final player = AudioPlayer();
    await player.play(UrlSource('https://example.com/my-audio.wav'));
  }
}
