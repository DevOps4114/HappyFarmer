// ignore_for_file: non_constant_identifier_names, file_names
// import 'package:bookshare/CommentError/commentIgonre.dart';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:happyfarmer/Utils/Screenratio.dart'; // Importing Screenratio.dart file for MobileScreenWidth



// This function has two parameters WebScreen and MobileScreen
Widget layoutBox(Widget WebScreen, Widget MobileScreen) { 
//  main body of the function
  return LayoutBuilder(builder: (context, constraints) {
    //  this line is used to check the width of the screen and return the screen according to the width
    // According to the width of the screen, it will return the WebScreen or MobileScreen . you can also add TabletScreen if you want
    if (constraints.maxWidth > MobileScreenWidth) {
      return WebScreen; // Returning WebScreen if the width is greater than MobileScreenWidth
    } else {
      return MobileScreen; // Returning MobileScreen if the width is less than MobileScreenWidth
    }
  });
//  here function ended
}
