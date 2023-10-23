import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project/signupscreen.dart';

import 'LOGIN/login.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Use a Future.delayed to navigate to the login screen after 2 seconds
    Future.delayed(Duration(seconds: 2), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) => SignupScreen(),
        ),
      );
    });

    return Scaffold(
      backgroundColor: Colors.red,
      body: Center(
        child: Text(
          'Zindaghi',
          style: TextStyle(
            fontSize: 32,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}