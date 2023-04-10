import 'dart:async';

import 'package:inspensar/screens/securitykey.dart';

import 'onboardingscreen.dart';

import 'package:flutter/material.dart';

import 'signup.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 4), () {
      Navigator.of(context)
          .pushReplacement(MaterialPageRoute(builder: (_) => Onbording()));
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent.shade200,
      body: Container(
        child: Center(
          child: Text(
            'INSPENSAR',
            style: TextStyle(
                fontFamily: 'neolatina',
                color: Colors.white,
                fontSize: 54.94,
                fontWeight: FontWeight.w400),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
