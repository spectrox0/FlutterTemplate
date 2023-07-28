import 'package:flutter/material.dart';
import 'package:flutter_template/widgets/organisms/forms/sign_up.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  static const String routeName = "/sign_up";

  @override
  State<SignUpScreen> createState() => _SignUpState();
}

class _SignUpState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Center(child: SignUpForm()),
    );
  }
}
