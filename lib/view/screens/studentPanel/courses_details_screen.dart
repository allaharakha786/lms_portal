import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:lms_portal/controllers/utills/myapp_colors.dart';
import 'package:lms_portal/controllers/utills/myapp_styles.dart';
import 'package:lms_portal/view/screens/lesson_details.dart';

class CoursesDetailsScreen extends StatelessWidget {
  const CoursesDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size mediaQuerySize = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: AppColors.whiteColor,
        ),
        backgroundColor: AppColors.primaryColor,
        title: Text(
          'Course Detail',
          style: AppTextStyles.headingTextStyle.copyWith(color: AppColors.whiteColor, fontSize: 18),
        ),
        centerTitle: true,
      ),
      body: Container(
        width: mediaQuerySize.width,
        height: mediaQuerySize.height,
        color: AppColors.whiteColor,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: mediaQuerySize.width * 0.04.w),
          child: Column(
            children: [
              SizedBox(
                height: mediaQuerySize.height * 0.05.h,
              ),
              GestureDetector(
                onTap: () {
                  Get.to(() => LessonDetailsScreen());
                },
                child: Container(
                  height: mediaQuerySize.height * 0.3.h,
                  width: mediaQuerySize.width,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(15), color: AppColors.primaryColor, image: DecorationImage(fit: BoxFit.cover, image: AssetImage('assets/pngs/lessons_image.jpg'))),
                  child: Container(
                    height: mediaQuerySize.height * 0.3.h,
                    width: mediaQuerySize.width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: AppColors.blackColor.withOpacity(0.75),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Lessons',
                          style: AppTextStyles.headingTextStyle.copyWith(color: Colors.amber, fontSize: 25),
                        ),
                        Text(
                          'Engaging lessons to build knowledge.',
                          style: AppTextStyles.simpleText.copyWith(color: AppColors.whiteColor, fontSize: 13),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: mediaQuerySize.height * 0.03,
              ),
              Container(
                height: mediaQuerySize.height * 0.3.h,
                width: mediaQuerySize.width,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(15), color: AppColors.primaryColor, image: DecorationImage(opacity: 0.6, fit: BoxFit.cover, image: AssetImage('assets/pngs/quiz_image.jpg'))),
                child: Container(
                  height: mediaQuerySize.height * 0.3.h,
                  width: mediaQuerySize.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: AppColors.blackColor.withOpacity(0.75),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Quizes',
                        style: AppTextStyles.headingTextStyle.copyWith(color: Colors.amber, fontSize: 25),
                      ),
                      Text(
                        'Test your knowledge with quizzes.',
                        style: AppTextStyles.simpleText.copyWith(color: AppColors.whiteColor, fontSize: 13),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
