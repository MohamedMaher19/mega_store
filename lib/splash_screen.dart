import 'dart:async';

import 'package:flutter/material.dart';

import 'feautures/login/presentation/pages/login_screen.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 6), () {
      Navigator.of(context)
          .pushReplacement(MaterialPageRoute(builder: (_) => LoginScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 25.0),
              child: Image.asset(
                'assets/images/mega_logo.png',
              ),
            ),
          ],
        ),
      ),



    );
  }
}
