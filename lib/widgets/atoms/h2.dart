import 'package:flutter/material.dart';

class AppH2Text extends StatelessWidget {
  final String text;
  final TextAlign align;

  const AppH2Text({Key? key, this.align = TextAlign.center, this.text = ""})
      : super(key: key);

  @override
  Widget build(BuildContext context) => Text(text,
      style: const TextStyle(
          color: Colors.black, fontSize: 32.0, fontWeight: FontWeight.w500),
      textAlign: align);
}
