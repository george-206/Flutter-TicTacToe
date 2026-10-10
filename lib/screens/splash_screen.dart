import 'dart:async';

import 'package:flutter/material.dart';
import 'package:xo/screens/home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) {
            return HomeScreen();
          },
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFFA949F2), Color(0xFF3304B3)],
            begin: AlignmentGeometry.topCenter,
          ),
        ),
        child: Column(
          children: [
            SizedBox(height: 300),
            Text(
              "X_O",
              style: TextStyle(
                fontSize: 80,
                fontWeight: FontWeight.bold,
                color: Colors.yellowAccent,
              ),
            ),
            SizedBox(height: 30),
            CircularProgressIndicator(color: Colors.yellowAccent),
          ],
        ),
      ),
    );
  }
}
