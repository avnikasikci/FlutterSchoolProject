import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'CollectionColor/CollectionColor.dart';
import 'Screen/_layout/HomeScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Neü Mobil Programlama Final Ödevi',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.orange,
        accentColor: Coolors.secondaryColor,
        textTheme: GoogleFonts.poppinsTextTheme(),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      color: Coolors.primaryColor,
      home: HomeScreen(),
    );
  }
}
