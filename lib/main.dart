import 'package:flutter/material.dart';
import 'package:flutter_catalog/pages/home_page.dart';
import 'package:flutter_catalog/pages/login_page.dart';
import 'package:flutter_catalog/utlis/routes.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //debugShowCheckedModeBanner: false,
      //we are using / route so need to use home here
      //home: HomePage(),
      themeMode: ThemeMode.light,
      //theme is for light theme
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        fontFamily: GoogleFonts.lato().fontFamily,
      ),
      //this is for dark theme
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        //primarySwatch: Colors.red
      ),
      initialRoute: "/login",
      routes: {
        "/": (context) => LoginPage(),
        MyRoutes.homeRoute: (context) => HomePage(),
        MyRoutes.loginRoute: (context) => LoginPage(),
      },
    );
  }
}
