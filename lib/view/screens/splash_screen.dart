import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:lms_portal/controllers/utills/myapp_colors.dart';
import 'package:lms_portal/view/screens/authScreen/welcome_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 3), () => Get.off(() => const WelcomeScreen()));

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size mediaQuerySize = MediaQuery.of(context).size;

    return Scaffold(
      body: Container(
        color: AppColors.primaryColor,
        height: mediaQuerySize.height,
        width: mediaQuerySize.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: mediaQuerySize.height * 0.4.h,
              width: mediaQuerySize.width * 0.7.w,
              decoration: BoxDecoration(image: DecorationImage(fit: BoxFit.contain, image: AssetImage('assets/pngs/lms_logo.png'))),
            ),
          ],
        ),
      ),
    );
  }
}
