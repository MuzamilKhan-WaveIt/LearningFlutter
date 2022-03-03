import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:learning/MyRoute.dart';
import 'package:learning/MyTheme.dart';
import 'package:learning/pages/home.dart';
import 'package:learning/pages/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Learning',
      theme: MyTheme.themeDataLight(context),
      darkTheme: MyTheme.themeDataDark(context),
      routes: {
        "/": (context) => Login(),
        Myroute.LoginRoute: (context) => Login(),
        Myroute.HomeRoute: (context) => Home(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
