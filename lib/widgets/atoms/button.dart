import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Btn extends StatelessWidget {
  final String text;
  final void Function() onPressed;

  const Btn({Key? key, required this.text, required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      style: ButtonStyle(
        alignment: Alignment.center,
        foregroundColor:
            MaterialStateProperty.all<Color>(Theme.of(context).primaryColor),
        overlayColor: MaterialStateProperty.resolveWith<Color?>(
          (Set<MaterialState> states) {
            if (states.contains(MaterialState.hovered)) {
              return Theme.of(context).primaryColor.withOpacity(0.04);
            }
            if (states.contains(MaterialState.focused) ||
                states.contains(MaterialState.pressed)) {
              return Theme.of(context).primaryColor.withOpacity(0.12);
            }
            return null; // Defer to the widget's default.
          },
        ),
      ),
      onPressed: onPressed,
      child: Text(text),
    );
  }
}
