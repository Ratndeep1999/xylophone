import 'package:flutter/material.dart';

class XyloPhoneButtons extends StatelessWidget {
  const XyloPhoneButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      style: TextButton.styleFrom(
        backgroundColor: Colors.orange,
        fixedSize: Size.fromHeight(60),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(40),
        ),
      ),
      child: Text(''),
    );
  }
}
