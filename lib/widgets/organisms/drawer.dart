import 'package:flutter/material.dart';
import 'package:flutter_template/widgets/atoms/box.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            accountName: const Text("Test"),
            accountEmail: const Text("test@gmail.com"),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(
                child: Image.asset(
                  'assets/images/TowerHouse.jpg',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.primary,
                image: const DecorationImage(
                    image: AssetImage(
                      "assets/images/bgSample.jpg",
                    ),
                    fit: BoxFit.cover)),
          ),
          ListTile(
            leading: const Icon(Icons.settings_outlined),
            title: const Text("Settings"),
            onTap: () => print("settings"),
          ),
          ListTile(
            leading: const Icon(Icons.logout_outlined),
            title: const Text("Sign Out"),
            onTap: () => print("logout"),
          )
        ],
      ),
    );
  }
}
