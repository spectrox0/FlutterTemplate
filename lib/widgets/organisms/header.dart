import 'package:flutter/material.dart';

class AppBarHeader extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final String leading;
  const AppBarHeader({Key? key, this.title = "", this.leading = ""})
      : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(60.0);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(
            width: 10,
          ),
          Text(
            title,
            style:
                TextStyle(color: Theme.of(context).textTheme.titleLarge?.color),
          ),
        ],
      ),
      backgroundColor: Colors.deepPurpleAccent, //<-- SEE HERE
    );
  }
}
