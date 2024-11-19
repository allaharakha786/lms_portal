import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:lms_portal/controllers/utills/myapp_colors.dart';
import 'package:lms_portal/controllers/utills/myapp_styles.dart';
import 'package:lms_portal/main.dart';
import 'package:lms_portal/view/screens/studentPanel/courses_details_screen.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size mediaQuerySize = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(
            color: AppColors.whiteColor,
          ),
          backgroundColor: AppColors.primaryColor,
          title: Text(
            'Home Screen',
            style: AppTextStyles.headingTextStyle.copyWith(color: AppColors.whiteColor, fontSize: 18),
          ),
          centerTitle: true,
        ),
        drawer: Drawer(
          backgroundColor: AppColors.primaryColor,
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: mediaQuerySize.height * 0.03.h, horizontal: mediaQuerySize.width * 0.05.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Container(
                      height: mediaQuerySize.height * 0.08.h,
                      width: mediaQuerySize.width * 0.18.w,
                      decoration: BoxDecoration(color: AppColors.whiteColor, shape: BoxShape.circle, image: DecorationImage(image: AssetImage('assets/pngs/welcome_image.png'))),
                    ),
                    SizedBox(
                      width: mediaQuerySize.width * 0.02.w,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Ayun Ali',
                          style: AppTextStyles.simpleText.copyWith(color: AppColors.whiteColor),
                        ),
                        Text(
                          'abc@gmail.com',
                          style: AppTextStyles.simpleText.copyWith(color: AppColors.whiteColor),
                        ),
                      ],
                    )
                  ],
                ),
                Divider(),
                ListTile(
                  contentPadding: EdgeInsets.all(0),
                  leading: Icon(
                    size: 30,
                    Icons.home,
                    color: AppColors.whiteColor,
                  ),
                  title: Padding(
                    padding: const EdgeInsets.only(left: 0),
                    child: Text('Home', style: AppTextStyles.headingTextStyle.copyWith(color: AppColors.whiteColor, fontSize: 17)),
                  ),
                  trailing: Icon(
                    Icons.arrow_forward,
                    color: AppColors.whiteColor,
                  ),
                ),
                ListTile(
                  contentPadding: EdgeInsets.all(0),
                  leading: Icon(
                    size: 30,
                    Icons.logout_outlined,
                    color: AppColors.whiteColor,
                  ),
                  title: Padding(
                    padding: const EdgeInsets.only(left: 0),
                    child: Text('Logout', style: AppTextStyles.headingTextStyle.copyWith(color: AppColors.whiteColor, fontSize: 17)),
                  ),
                  trailing: Icon(
                    Icons.arrow_forward,
                    color: AppColors.whiteColor,
                  ),
                ),
              ],
            ),
          ),
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
                  height: mediaQuerySize.height * 0.1.h,
                ),
                GestureDetector(
                  onTap: () {
                    Get.to(() => CoursesDetailsScreen());
                  },
                  child: Container(
                    height: mediaQuerySize.height * 0.3.h,
                    width: mediaQuerySize.width,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(15), color: AppColors.primaryColor, image: DecorationImage(fit: BoxFit.cover, image: AssetImage('assets/pngs/courses_image.jpg'))),
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
                            'Courses',
                            style: AppTextStyles.headingTextStyle.copyWith(color: Colors.amber, fontSize: 25),
                          ),
                          Text(
                            'Explore courses to enhance skills',
                            style: AppTextStyles.simpleText.copyWith(color: AppColors.whiteColor, fontSize: 13),
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
