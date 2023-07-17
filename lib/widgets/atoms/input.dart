import 'package:flutter/material.dart';

class AppInput extends StatelessWidget {
  final String placeholder;
  final Widget? icon;

  const AppInput({Key? key, this.placeholder = "", this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.only(left: 30, right: 30, top: 5, bottom: 5),
        child: Container(
          padding: const EdgeInsets.fromLTRB(10, 0, 5, 0),
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(20.0)),
            color: Color.fromRGBO(232, 236, 241, 1),
          ),
          child: TextField(
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: placeholder,
              icon: icon,
            ),
          ),
        ),
      );
}
