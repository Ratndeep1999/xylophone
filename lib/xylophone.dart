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
                  playSound('c');
                },
              ),
              SizedBox(height: 5),
              XyloPhoneButtons(
                buttonColor: Colors.orange,
                playSound: () {
                  playSound('d');
                },
              ),
              SizedBox(height: 5),
              XyloPhoneButtons(
                buttonColor: Colors.yellow,
                playSound: () {
                  playSound('e');
                },
              ),
              SizedBox(height: 5),
              XyloPhoneButtons(
                buttonColor: Colors.green,
                playSound: () {
                  playSound('f');
                },
              ),
              SizedBox(height: 5),
              XyloPhoneButtons(
                buttonColor: Colors.lightBlue.shade400,
                playSound: () {
                  playSound('g');
                },
              ),
              SizedBox(height: 5),
              XyloPhoneButtons(
                buttonColor: Colors.blue.shade700,
                playSound: () {
                  playSound('a');
                },
              ),
              SizedBox(height: 5),
              XyloPhoneButtons(
                buttonColor: Colors.purple,
                playSound: () {
                  playSound('b');
                },
              ),
              SizedBox(height: 5),
              XyloPhoneButtons(
                buttonColor: Colors.pink,
                playSound: () {
                  playSound('h');
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> playSound(String tune) async {
    final player = AudioPlayer();
    await player.play(AssetSource('audio/$tune.wav'));
  }
}
