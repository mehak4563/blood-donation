import 'package:flutter/material.dart';
import 'package:project/signupscreen.dart';
import 'package:project/splach_screen.dart';

import 'doner.dart';
import 'managerdetail.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, 
             home: SplashScreen(),
               // home: manager_detail(),


      
    );
  }
}
