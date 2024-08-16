import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'demo.dart';
import 'screen/New Project/screen/splash_screen.dart';
import 'screen/login_screen.dart';
import 'screen/pop_screen.dart';
import 'screen/profile_screen.dart';
import 'screen/web_screen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: ProfileScreen(),
    );
  }
}

