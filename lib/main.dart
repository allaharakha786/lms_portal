import 'package:flutter/material.dart';
import 'package:lms_portal/view/screens/authScreen/signup_screen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    Size mediaQuerySize = MediaQuery.of(context).size;
    return ScreenUtilInit(
      minTextAdapt: true,
      splitScreenMode: true,
      designSize: Size(mediaQuerySize.width, mediaQuerySize.height),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(),
        home: const SignupScreen(),
      ),
    );
  }
}
