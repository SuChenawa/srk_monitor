import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'views/homePage/home_layout.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Srk Monitor',
      routes: {'/': (context) => const HomePageLayout()},
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}
