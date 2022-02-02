import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jobs_app/pages/signup_page.dart';
import 'package:jobs_app/pages/splash_page.dart';
import 'package:jobs_app/theme.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: "Poppins",
        primaryColor: primaryColor
      ),
      routes: {
        '/': (context) => SplashPage(),
        '/sign_up': (context) => SignUpPage(),
      },

    );
  }
}
