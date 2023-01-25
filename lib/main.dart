import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:portifolio/constants.dart';
import 'package:portifolio/screens/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
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
        textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme)
            .apply(bodyColor: Colors.white)
            .copyWith(
              bodyLarge: GoogleFonts.montserrat(
                  color: bodyTextColor, fontWeight: FontWeight.w600),
              bodyMedium: GoogleFonts.montserrat(color: bodyTextColor),
            ),
      ),
      home: const HomePage(),
    );
  }
}
