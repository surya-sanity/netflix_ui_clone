import 'dart:async';
import 'package:flutter/material.dart';
import 'package:netflix_ui_clone/screens/whos_watching.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(const Duration(milliseconds: 800))
        .then((value) => Navigator.push(
              context,
              PageRouteBuilder(
                pageBuilder: (context, __, ___) => const WhosWatching(),
                transitionDuration: const Duration(seconds: 0),
              ),
            ));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Align(
                alignment: Alignment.center,
                child: Image.asset(
                  "assets/images/netflix-logo.png",
                  height: 200,
                  width: 200,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
