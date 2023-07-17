import 'package:flutter/material.dart';

class AppH3Text extends StatelessWidget {
  final String text;
  final TextAlign align;

  const AppH3Text({Key? key, this.align = TextAlign.center, this.text = ""})
      : super(key: key);

  @override
  Widget build(BuildContext context) => Text(text,
      style: const TextStyle(
          color: Colors.black, fontSize: 22.0, fontWeight: FontWeight.w500),
      textAlign: align);
}
