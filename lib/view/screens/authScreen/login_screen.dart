import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lms_portal/controllers/utills/myapp_colors.dart';
import 'package:lms_portal/controllers/utills/validations.dart';

import '../../../controllers/utills/myapp_styles.dart';
import '../../widgets/common_botton.dart';
import '../../widgets/common_textfield.dart';

// ignore: must_be_immutable
class LoginScreen extends StatefulWidget {
  String category;
  LoginScreen({super.key, required this.category});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  GlobalKey<FormState> key = GlobalKey();

  @override
  Widget build(BuildContext context) {
    Size mediaQuerySize = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: Form(
          key: key,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: mediaQuerySize.height * 0.1,
                  ),
                  Center(
                    child: Container(
                      height: mediaQuerySize.height * 0.3.h,
                      width: mediaQuerySize.width * 0.5.w,
                      decoration: BoxDecoration(
                        image: DecorationImage(fit: BoxFit.cover, image: AssetImage('assets/pngs/rafiki.png')),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 5, bottom: 12),
                    child: Align(
                      alignment: Alignment.bottomLeft,
                      child: Text(
                        '${widget.category} sign in',
                        style: TextStyle(fontFamily: 'bold', fontSize: 36),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 80),
                    child: Text(
                      'Please enter your email and password',
                      style: AppTextStyles.simpleText,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Align(
                      alignment: Alignment.bottomLeft,
                      child: Text(
                        ' Email',
                        style: AppTextStyles.myCustom,
                      )),
                  CommonTextfield().customTextFormField(
                    bgColor: AppColors.textFieldTextColor,
                    title: 'Enter your Email',
                    borderColor: AppColors.primaryColor,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please fill this field';
                      }
                      if (!value.isValidEmail()) {
                        return 'Please Enter Valid Email';
                      }
                      return null;
                    },
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Align(
                      alignment: Alignment.bottomLeft,
                      child: Text(
                        ' Password',
                        style: AppTextStyles.myCustom,
                      )),
                  CommonTextfield().customTextFormField(
                    bgColor: AppColors.textFieldTextColor,
                    title: 'Enter your Password',
                    borderColor: AppColors.primaryColor,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please fill this field';
                      }
                      if (value.isMinLength()) {
                        return 'Please Enter minimum 6 characters';
                      }
                      return null;
                    },
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: CommonBotton().customElevatedButton(
                          title: Text('Sign In', style: TextStyle(color: AppColors.whiteColor)),
                          width: mediaQuerySize.width * 0.1.w,
                          borderRadius: 10,
                          onTap: () {
                            if (key.currentState!.validate()) {}
                          },
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
