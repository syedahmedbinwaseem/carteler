import 'dart:async';

import 'package:carteler/screens/login_and_signup/welcome.dart';
import 'package:carteler/utils/colors.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), onClose);
  }

  void onClose() {
    Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => const WelcomeScreen()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: navyBlue,
      body: Center(
        child: Container(
            padding: const EdgeInsets.all(10),
            child: Image.asset('assets/images/logo.png')),
      ),
    );
  }
}
