import 'package:flutter/material.dart';
import 'package:meme/screens/onboarding.dart';
import 'package:meme/screens/splash.dart';
import 'package:meme/utils/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      initialRoute: "/splash",
      routes: {
        "/": (context) => OnBoarding(),
        MyRoutes.onborading: (context) => OnBoarding(),
        MyRoutes.splashRoute: (context) => Splash(),
      },
    );
  }
}
