import 'package:flutter/material.dart';

import '../constant.dart';

final themeDark = ThemeData.dark().copyWith(
  primaryColor: primaryColor,
  scaffoldBackgroundColor: bgColor,
  canvasColor: bgColor,
  // textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme)
  //     .apply(bodyColor: Colors.white)
  //     .copyWith(
  //       bodyText1: TextStyle(color: bodyTextColor),
  //       bodyText2: TextStyle(color: bodyTextColor),
  //     ),
);
