import 'package:flutter/material.dart';

class SignUpForm extends StatelessWidget {
  const SignUpForm({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Form(
      child: SizedBox(
        child: Align(
          alignment: Alignment.center,
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          ),
        ),
      ),
    );
  }
}
