import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lms_portal/controllers/utills/myapp_colors.dart';
import 'package:lms_portal/controllers/utills/myapp_styles.dart';
import 'package:lms_portal/main.dart';
import 'package:lms_portal/view/widgets/common_botton.dart';
import 'package:lms_portal/view/widgets/common_textfield.dart';
import 'package:svg_flutter/svg.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size mediaQuerySize = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: Container(
            height: mediaQuerySize.height,
            width: mediaQuerySize.width,
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: mediaQuerySize.height * 0.01.h, horizontal: mediaQuerySize.width * 0.03.w),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(Icons.arrow_back_ios),
                  SizedBox(
                    height: mediaQuerySize.height * 0.1.h,
                  ),
                  Text(
                    'Sign up',
                    style: AppTextStyles.headingTextStyle,
                  ),
                  Text(
                    'Please indicate your name and other details',
                    style: AppTextStyles.simpleText,
                  ),
                  Text(
                    'Name',
                    style: AppTextStyles.simpleText,
                  ),
                  CommonTextfield().customTextFormField(
                    bgColor: AppColors.textFieldTextColor,
                    title: 'Name',
                    borderColor: AppColors.primaryColor,
                  ),
                  Text(
                    'Email',
                    style: AppTextStyles.simpleText,
                  ),
                  CommonTextfield().customTextFormField(
                    bgColor: AppColors.textFieldTextColor,
                    title: 'Email',
                    borderColor: AppColors.primaryColor,
                  ),
                  Text(
                    'Password',
                    style: AppTextStyles.simpleText,
                  ),
                  CommonTextfield().customTextFormField(
                    bgColor: AppColors.textFieldTextColor,
                    title: 'Password',
                    borderColor: AppColors.primaryColor,
                  ),
                  Row(children: [CommonBotton().customElevatedButton(width: double.infinity, title: Text('Sign up'))])
                ],
              ),
            )),
      ),
    );
  }
}
