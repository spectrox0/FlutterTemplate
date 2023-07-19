import 'package:flutter/material.dart';

class Box extends StatelessWidget {
  final Widget child;
  final Color color;
  final double borderRadius;
  final double padding;
  const Box(
      {Key? key,
      required this.child,
      this.color = Colors.white,
      this.borderRadius = 5,
      this.padding = 3})
      : super(key: key);

  @override
  Widget build(BuildContext context) => Container(
        padding: const EdgeInsets.all(3),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
        ),
        child: child,
      );
}
