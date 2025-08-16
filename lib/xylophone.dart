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
              XyloPhoneButtons(buttonColor: Colors.red,),
              SizedBox(height: 5,),
              XyloPhoneButtons(buttonColor: Colors.orange,),
              SizedBox(height: 5,),
              XyloPhoneButtons(buttonColor: Colors.yellow,),
              SizedBox(height: 5,),
              XyloPhoneButtons(buttonColor: Colors.green,),
              SizedBox(height: 5,),
              XyloPhoneButtons(buttonColor: Colors.lightBlue.shade400,),
              SizedBox(height: 5,),
              XyloPhoneButtons(buttonColor: Colors.blue.shade700),
              SizedBox(height: 5,),
              XyloPhoneButtons(buttonColor: Colors.purple,),
              SizedBox(height: 5,),
              XyloPhoneButtons(buttonColor: Colors.pink,),

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


