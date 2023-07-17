import 'package:flutter/material.dart';
import '../../utils/colors.dart' as app_colors;
import '../atoms/input.dart';
import '../atoms/h2.dart';

class AppHeader extends StatelessWidget {
  final String title;
  final String leading;
  const AppHeader({Key? key, this.title = "", this.leading = ""})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
        expandedHeight: 150.0,
        bottom: PreferredSize(
            preferredSize: const Size.fromHeight(5.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  padding: const EdgeInsets.only(left: 30.0),
                  child: AppH2Text(
                    text: title,
                  ),
                ),
                const AppInput(
                  placeholder: 'search tasks',
                  icon: Icon(Icons.search),
                ),
              ],
            )),
        backgroundColor: app_colors.primary,
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.settings),
            color: app_colors.grey,
            tooltip: 'Add new entry',
            onPressed: () {/* ... */},
          ),
        ]);
  }
}
