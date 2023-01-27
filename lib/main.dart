import 'package:flutter/material.dart';

import 'package:portifolio/constants.dart';
import 'package:portifolio/screens/home/home_screen.dart';

import 'package:portifolio/screens/main_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Portifolio',
      // we are using dark theme and we modify it as our need
      theme: ThemeData.dark().copyWith(
        primaryColor: primaryColor,
        scaffoldBackgroundColor: bgColor,
        canvasColor: bgColor,
        textTheme: Theme.of(context).textTheme.apply().copyWith(
              bodyLarge: const TextStyle(color: Colors.white),
              bodyMedium: const TextStyle(color: bodyTextColor),
              bodySmall: const TextStyle(color: bodyTextColor, fontSize: 14),
              titleMedium: const TextStyle(color: Colors.white, fontSize: 20),
              titleLarge: const TextStyle(color: Colors.white, fontSize: 40),
              titleSmall: const TextStyle(color: Colors.white, fontSize: 16),
            ),
      ),
      home: const HomeScreen(),
    );
  }
}
