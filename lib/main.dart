import 'package:flutter/material.dart';
import 'package:lms_portal/view/screens/authScreen/signup_screen.dart';

import 'view/screens/authScreen/login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(),
      home: const LoginScreen(),
    );
  }
}
