import 'dart:async';

import 'package:flutter/material.dart';
import 'package:meme/screens/onboarding.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    moveToNext();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Center(
          child: Container(
            // padding:  EdgeInsets.only(top: 50),
            child: Image.asset(
              "assets/images/meme_world.png",
              fit: BoxFit.cover,
              height: 300,
            ),
          ),
        ),
      ),
    );
  }

  void moveToNext() {
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => OnBoarding()));
    });
  }
}
