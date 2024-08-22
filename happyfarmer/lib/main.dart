import 'package:flutter/material.dart';
import 'package:happyfarmer/Resonsive/layout.dart';
import 'package:happyfarmer/Screen/mobile.dart';
import 'package:happyfarmer/Screen/web.dart';
// import 'package:firebase_core/firebase_core.dart';
// import 'package:flutter/services.dart';

void main() async{
  //   WidgetsFlutterBinding.ensureInitialized();

  // await Firebase.initializeApp(
  //   options: DefaultFirebaseOptions.currentPlatform,
  // );
  // SystemChrome.setPreferredOrientations(
  //     [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);

  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: layoutBox(const WebScreen(), const MobileScreen()),
      // home: SplashScreen(),
    );
  }
}
