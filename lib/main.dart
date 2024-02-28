import 'package:flutter/material.dart';
import 'package:islami/app_theme.dart';
import 'package:islami/home_screen.dart';

void main (){
   runApp(IslamiApp());
}
class IslamiApp extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.DarkTheme,
      themeMode: ThemeMode.light,
      routes: {
        HomeScreen.routeName:(_) => HomeScreen(),
      },
      initialRoute: HomeScreen.routeName,
    );
  }
}
