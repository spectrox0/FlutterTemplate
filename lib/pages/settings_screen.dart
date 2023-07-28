import 'package:flutter/material.dart';
import 'package:flutter_template/index.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  static const String routeName = "/settings";

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    return const SafeArea(
        child: Center(
      child: Text("Settings"),
    ));
  }
}
