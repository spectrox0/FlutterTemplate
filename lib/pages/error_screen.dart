import 'package:flutter/widgets.dart';

class ErrorScreen extends StatelessWidget {
  final String error;
  const ErrorScreen({Key? key, this.error = "Error"}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Text(error),
    );
  }
}
