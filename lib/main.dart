import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/Pages/homepage.dart';
import 'package:flutter_application_1/loginPage.dart';
import 'package:flutter_application_1/utils/routes.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          primarySwatch: Colors.cyan,
          fontFamily: GoogleFonts.lato().fontFamily,
        ),
        debugShowCheckedModeBanner: false,
        themeMode: ThemeMode.light,
        darkTheme: ThemeData(
          brightness: Brightness.dark,
        ),
        initialRoute: MyRoutes.homeRoute,
        routes: {
          "/": (context) => LogInPage(),
          MyRoutes.homeRoute: (context) => Homepage(),
          MyRoutes.loginRoute: (context) => LogInPage()
        });
  }
}
