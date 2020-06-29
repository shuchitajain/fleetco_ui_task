import 'package:google_fonts/google_fonts.dart';

import './constants.dart';
import './screens/place_holder_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fleetco Task',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: themeColor,
        textTheme: GoogleFonts.latoTextTheme(),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: PlaceHolderScreen()
    );
  }
}

