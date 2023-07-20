import 'package:flutter/material.dart';
import 'package:flutter_template/pages/home_page.dart';

class BarBottom extends StatelessWidget {
  const BarBottom({
    super.key,
    required this.selectedIndex,
    required this.onDestinationSelected,
  });
  final int selectedIndex;
  final ValueChanged<int> onDestinationSelected;
  @override
  Widget build(BuildContext context) {
    return NavigationBar(
      backgroundColor: Theme.of(context).colorScheme.primary,
      elevation: 0,
      selectedIndex: selectedIndex,
      destinations: const [
        NavigationDestination(label: 'Home', icon: Icon(Icons.home)),
        NavigationDestination(label: 'Settings', icon: Icon(Icons.settings)),
      ],
    );
  }
}
