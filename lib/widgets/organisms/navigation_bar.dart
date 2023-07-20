import 'package:flutter/material.dart';
import 'package:flutter_template/index.dart';
import 'package:flutter_template/widgets/organisms/%20bar_bottom.dart';
import 'package:flutter_template/widgets/organisms/drawer.dart';

class ScaffoldWithNavigationBar extends StatelessWidget {
  const ScaffoldWithNavigationBar({
    super.key,
    required this.body,
    required this.selectedIndex,
    required this.onDestinationSelected,
  });
  final Widget body;
  final int selectedIndex;
  final ValueChanged<int> onDestinationSelected;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BarBottom(
        selectedIndex: selectedIndex,
        onDestinationSelected: onDestinationSelected,
      ),
      appBar: const AppBarHeader(),
      drawer: const AppDrawer(),
      body: body,
    );
  }
}
