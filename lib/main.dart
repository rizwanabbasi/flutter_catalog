import 'package:flutter/material.dart';
import 'package:flutter_catalog/pages/home_page.dart';
import 'package:flutter_catalog/pages/login_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      //we are using / route so need to use home here
      //home: HomePage(),
      themeMode: ThemeMode.light,
      //theme is for light theme
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      //this is for dark theme
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        //primarySwatch: Colors.red
      ),
      initialRoute: "/home",
      routes: {
        "/" : (context) => LoginPage(),
        "/home" : (context) => HomePage(),
        "/login": (context) => LoginPage(),
      },
    );
  }
}
