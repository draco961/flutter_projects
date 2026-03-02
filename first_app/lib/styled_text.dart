import 'package:flutter/material.dart';

class StyledText extends StatelessWidget {
  const StyledText(this.title, {super.key});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(title, style: TextStyle(color: Colors.white, fontSize: 28));
  }
}
