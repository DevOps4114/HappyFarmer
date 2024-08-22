// ----------------------------------------Splash Screen Here------------------------------------------

// ignore_for_file: non_constant_identifier_names, unused_local_variable, prefer_const_constructors, avoid_print, use_key_in_widget_constructors, library_private_types_in_public_api
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:happyfarmer/Pages/intro.dart';
import 'package:happyfarmer/Utils/colors.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(seconds: 2),
      () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => IntroPage(),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Color.fromRGBO(0, 178, 81, 25),
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        color: main_green,
        child: Center(
          child: Text(
            "happyfarmer",
            style: TextStyle(
                fontSize: 36, color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
// ----------------------------------------Splash Screen End Here------------------------------------------