import 'package:flutter/material.dart';
import 'package:weather_app/core/app_themes/app_themes.dart';
import 'package:weather_app/presentations/tabs/home_screen/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        title: 'Weather',
        theme:AppTheme.lightTheme ,
        darkTheme: AppTheme.darkTheme,
        themeMode: ThemeMode.system,
        home: HomeScreen(),
      );
  }
}
