import 'package:flutter/material.dart';
import 'package:netflix_ui_clone/screens/splash_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Netflix UI clone',
      theme: ThemeData(
        brightness: Brightness.dark,
        appBarTheme: const AppBarTheme(
            backgroundColor: Colors.transparent, elevation: 0),
        scaffoldBackgroundColor: Colors.black,
        primarySwatch: Colors.grey,
      ),
      home: const SplashScreen(),
    );
  }
}
