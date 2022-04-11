import 'package:flutter/material.dart';
import 'package:iReport_Flutter/pages/home_page.dart';
import 'package:iReport_Flutter/pages/login_page.dart';
import 'package:iReport_Flutter/utils/routes.dart';
import 'package:google_fonts/google_fonts.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        fontFamily: GoogleFonts .lato().fontFamily,
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
      initialRoute: "/",
      routes: {
        "/":(context) => LoginPage(),
        Myroutes.homeRoute:(context) => HomePage(),
        Myroutes.loginRoute:(context) => LoginPage()
      },
    );
  }
}

