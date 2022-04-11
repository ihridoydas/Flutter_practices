import 'package:flutter/material.dart';
import 'package:iReport_Flutter/pages/home_page.dart';
import 'package:iReport_Flutter/pages/login_page.dart';
import 'package:iReport_Flutter/utils/routes.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iReport_Flutter/widgets/themes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: MyTheme.lightTheme(context),
      darkTheme:MyTheme.darkTheme(context),
      // debugShowCheckedModeBanner: false,
      initialRoute: Myroutes.homeRoute,
      // initialRoute: "/",
      routes: {
        "/": (context) => LoginPage(),
        Myroutes.homeRoute: (context) => HomePage(),
        Myroutes.loginRoute: (context) => LoginPage()
      },
    );
  }
}
