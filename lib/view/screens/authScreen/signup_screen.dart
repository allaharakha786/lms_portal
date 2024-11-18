import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:lms_portal/controllers/utills/myapp_colors.dart';
import 'package:lms_portal/controllers/utills/myapp_styles.dart';
import 'package:lms_portal/controllers/utills/validations.dart';
import 'package:lms_portal/view/screens/authScreen/login_screen.dart';
import 'package:lms_portal/view/widgets/common_botton.dart';
import 'package:lms_portal/view/widgets/common_textfield.dart';

// ignore: must_be_immutable
class SignupScreen extends StatefulWidget {
  SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  GlobalKey<FormState> key = GlobalKey();

  TextEditingController nameController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  RxBool isStudent = true.obs;

  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Size mediaQuerySize = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: Form(
          key: key,
          child: SizedBox(
              height: mediaQuerySize.height,
              width: mediaQuerySize.width,
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: mediaQuerySize.height * 0.01.h, horizontal: mediaQuerySize.width * 0.07.w),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Icon(Icons.arrow_back_ios),
                      SizedBox(
                        height: mediaQuerySize.height * 0.1.h,
                      ),
                      Text(
                        'Sign up',
                        style: AppTextStyles.headingTextStyle,
                      ),
                      SizedBox(
                        height: mediaQuerySize.height * 0.003.h,
                      ),
                      Text(
                        'Please indicate your name and other details',
                        style: AppTextStyles.simpleText,
                      ),
                      SizedBox(
                        height: mediaQuerySize.height * 0.05.h,
                      ),
                      Text(
                        'Name',
                        style: AppTextStyles.simpleText,
                      ),
                      SizedBox(
                        height: mediaQuerySize.height * 0.003.h,
                      ),
                      CommonTextfield().customTextFormField(
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Please fill this field';
                          }

                          return null;
                        },
                        controller: nameController,
                        bgColor: AppColors.textFieldTextColor,
                        title: 'Name',
                        borderColor: AppColors.primaryColor,
                      ),
                      SizedBox(
                        height: mediaQuerySize.height * 0.019.h,
                      ),
                      Text(
                        'Email',
                        style: AppTextStyles.simpleText,
                      ),
                      SizedBox(
                        height: mediaQuerySize.height * 0.003.h,
                      ),
                      CommonTextfield().customTextFormField(
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Please fill this field';
                          }
                          if (value.isValidEmail()) {
                            return 'Please enter correct email';
                          }
                          return null;
                        },
                        controller: emailController,
                        bgColor: AppColors.textFieldTextColor,
                        title: 'Email',
                        borderColor: AppColors.primaryColor,
                      ),
                      SizedBox(
                        height: mediaQuerySize.height * 0.019.h,
                      ),
                      Text(
                        'Password',
                        style: AppTextStyles.simpleText,
                      ),
                      SizedBox(
                        height: mediaQuerySize.height * 0.003.h,
                      ),
                      CommonTextfield().customTextFormField(
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Please fill this field';
                          }
                          if (value.isMinLength()) {
                            return 'Please Enter minimum 6 characters';
                          }
                          return null;
                        },
                        controller: passwordController,
                        bgColor: AppColors.textFieldTextColor,
                        title: 'Password',
                        borderColor: AppColors.primaryColor,
                      ),
                      SizedBox(
                        height: mediaQuerySize.height * 0.019.h,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: mediaQuerySize.width * 0.07),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Obx(() => Row(
                                  children: [
                                    Radio<bool>(
                                      activeColor: AppColors.primaryColor,
                                      value: true,
                                      groupValue: isStudent.value,
                                      onChanged: (value) {
                                        isStudent.value = value!;
                                      },
                                    ),
                                    Text('Student', style: AppTextStyles.simpleText),
                                  ],
                                )),
                            const Spacer(),
                            Obx(() => Row(
                                  children: [
                                    Radio<bool>(
                                      activeColor: AppColors.primaryColor,
                                      value: false,
                                      groupValue: isStudent.value,
                                      onChanged: (value) {
                                        isStudent.value = value!;
                                      },
                                    ),
                                    Text('Teacher', style: AppTextStyles.simpleText),
                                  ],
                                )),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: mediaQuerySize.height * 0.019.h,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: CommonBotton().customElevatedButton(
                              onTap: () {
                                if (key.currentState!.validate()) {
                                  Get.off(() => LoginScreen(
                                        category: isStudent.value ? 'Student' : 'Teacher',
                                      ));
                                }
                              },
                              borderRadius: 10,
                              title: Text(
                                'Sign up',
                                style: TextStyle(color: AppColors.whiteColor),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              )),
        ),
      ),
    );
  }
}
