import 'package:flutter/material.dart';


class  AppTheme {
  static Color primaryLight =Color(0xffB7935F);
  static Color black= Color(0xff242424);
  static Color white =Colors .white;
  static ThemeData lightTheme = ThemeData(

  scaffoldBackgroundColor:Colors.black ,
    primaryColor:primaryLight,

    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: primaryLight,
      selectedItemColor: black,
      unselectedItemColor: white,

    ),
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.transparent,
      centerTitle: true,
      titleTextStyle: TextStyle( fontSize: 30,
      fontWeight: FontWeight.bold,
      color:  black)
    )



  );

  static ThemeData DarkTheme = ThemeData(

  );
}