import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lms_portal/view/screens/splash_screen.dart';

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
      child: GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(),
        home: const SplashScreen(),
      ),
    );
  }
}
