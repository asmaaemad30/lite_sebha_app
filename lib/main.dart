import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'view/screens/splash/splashScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sebha App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

        primarySwatch: Colors.blue,
        textTheme: GoogleFonts.cairoTextTheme(Theme.of(context).textTheme),
      ),
      home:SplashScreen(),
    );
  }
}
