import 'package:flutter/material.dart';

import '../constant.dart';

final themeDark = ThemeData.dark().copyWith(
  primaryColor: primaryColor,
  scaffoldBackgroundColor: bgColor,
  canvasColor: bgColor,
  appBarTheme: appBarTheme,
  // textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme)
  //     .apply(bodyColor: Colors.white)
  //     .copyWith(
  //       bodyText1: TextStyle(color: bodyTextColor),
  //       bodyText2: TextStyle(color: bodyTextColor),
  //     ),
);

final appBarTheme = AppBarTheme(
  iconTheme: IconThemeData(color: Colors.white.withOpacity(0.9)),
  backgroundColor: bgColor,
  actionsIconTheme: IconThemeData(color: Colors.white.withOpacity(0.9)),
  textTheme: TextTheme(
    headline6: TextStyle(
        color: Colors.white.withOpacity(0.9), fontSize: 20), //Letra blanca
  ),
);
