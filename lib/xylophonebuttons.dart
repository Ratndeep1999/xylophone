import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class XyloPhoneButtons extends StatelessWidget {
  const XyloPhoneButtons({
    super.key,
    required this.buttonColor,
    required this.playSound,
  });

  final Color buttonColor;
  final Function() playSound;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        playSound();
      },
      style: TextButton.styleFrom(
        backgroundColor: buttonColor,
        fixedSize: kIsWeb ? Size.fromHeight(64) : Size.fromHeight(80),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
      ),
      child: Text(''),
    );
  }
}
