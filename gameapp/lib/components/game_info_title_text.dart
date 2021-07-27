
import 'package:flutter/material.dart';

class GameInfoTitleText extends StatelessWidget {
  const GameInfoTitleText({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        " "+this.text,
        style: TextStyle(
            fontWeight: FontWeight.bold, fontSize: 30, letterSpacing: 1.0),
      ),
    );
  }
}
