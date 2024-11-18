import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lms_portal/controllers/utills/myapp_colors.dart';
import 'package:lms_portal/controllers/utills/myapp_styles.dart';
import 'package:lms_portal/view/widgets/common_botton.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size mediaQuerySize = MediaQuery.of(context).size;

    return Scaffold(
      body: SizedBox(
        height: mediaQuerySize.height,
        width: mediaQuerySize.width,
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: mediaQuerySize.height * 0.01.h, horizontal: mediaQuerySize.width * 0.07.w),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: mediaQuerySize.height * 0.1.h,
                ),
                Container(
                  height: mediaQuerySize.height * 0.4.h,
                  width: mediaQuerySize.width * 0.8.w,
                  decoration: const BoxDecoration(image: DecorationImage(fit: BoxFit.contain, image: const AssetImage('assets/pngs/welcome_image.png'))),
                ),
                SizedBox(
                  height: mediaQuerySize.height * 0.05.h,
                ),
                Row(
                  children: [
                    Expanded(
                      child: CommonBotton().customElevatedButton(
                        borderRadius: 10,
                        title: Text(
                          'Continue as student',
                          style: TextStyle(color: AppColors.whiteColor),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: mediaQuerySize.height * 0.01.h,
                ),
                Row(
                  children: [
                    Expanded(
                      child: CommonBotton().customElevatedButton(
                        borderRadius: 10,
                        title: Text(
                          'Continue as teacher',
                          style: TextStyle(color: AppColors.whiteColor),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: mediaQuerySize.height * 0.01.h,
                ),
                RichText(
                    text: TextSpan(
                  children: [
                    TextSpan(text: "Don't have an account? ", style: AppTextStyles.simpleText),
                    TextSpan(text: 'Sign up', style: AppTextStyles.simpleText.copyWith(color: AppColors.primaryColor)),
                  ],
                ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
