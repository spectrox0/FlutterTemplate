import 'package:flutter/material.dart';
import 'package:flutter_template/theme/dark_theme.dart';
import 'package:flutter_template/theme/light_theme.dart';
import 'package:flutter_template/widgets/router.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider(create: (context) => AppRouter()),
      ],
      child: Builder(
        builder: (context) {
          final GoRouter router = Provider.of<AppRouter>(context).router;
          return MaterialApp.router(
              debugShowCheckedModeBanner: false,
              theme: lightTheme,
              darkTheme: darkTheme,
              routerConfig: router,
              routeInformationParser: router.routeInformationParser,
              routerDelegate: router.routerDelegate);
        },
      ),
    );
  }
}
