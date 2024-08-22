import 'package:flutter/material.dart';
import 'package:happyfarmer/Pages/home.dart';
import 'package:happyfarmer/Utils/colors.dart';

// ignore_for_file: non_constant_identifier_names, unused_local_variable, prefer_const_constructors, avoid_print, use_key_in_widget_constructors, library_private_types_in_public_api

// ----------------------------------------Intro Page Here-------------------------------------------------

class IntroPage extends StatefulWidget {
  const IntroPage({super.key});

  @override
  State<IntroPage> createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  // loading variable
  bool isLoading = false;

  void changeLanguage() {
    setState(() {
      isLoading = true;
    });
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => HomePage(),
        ),
      );
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Language Changed Successfully'),
          behavior: SnackBarBehavior.floating,
          backgroundColor: Colors.green,
          // clipBehavior: Clip.values[1],
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.maxFinite,
        color: main_green,
        width: double.maxFinite,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("happyfarmer",
                style: TextStyle(
                    fontSize: 36,
                    color: Colors.white,
                    fontWeight: FontWeight.bold)),
            SizedBox(height: 20),
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.all(15),
                    child: ElevatedButton(
                      onPressed: changeLanguage,
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.white),
                        foregroundColor:
                            MaterialStateProperty.all<Color>(main_green),
                      ),
                      child: const Text(
                        "English",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.all(15),
                    child: ElevatedButton(
                      onPressed: changeLanguage,
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.white),
                        foregroundColor:
                            MaterialStateProperty.all<Color>(main_green),
                      ),
                      child: Text(
                        "हिंदी",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            isLoading
                ? CircularProgressIndicator(
                    color: Colors.white,
                  )
                : Container(),
          ],
        ),
      ),
    );
  }
}

// ----------------------------------------Intro Page End Here------------------------------------------
