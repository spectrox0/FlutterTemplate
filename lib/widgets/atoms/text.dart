import 'package:flutter/material.dart';

class AppText extends StatelessWidget {
  final String text;
  final TextAlign align;

  const AppText({Key? key, this.align = TextAlign.center, this.text = ""})
      : super(key: key);

  @override
  Widget build(BuildContext context) => Text(text,
      style: const TextStyle(
          color: Colors.black, fontSize: 16.0, fontWeight: FontWeight.w400),
      textAlign: align);
}
