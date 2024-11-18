import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lms_portal/controllers/utills/myapp_colors.dart';
import 'package:lms_portal/controllers/utills/myapp_styles.dart';
import 'package:lms_portal/main.dart';

class CommonTextfield {
  Widget customTextFormField(
      {TextEditingController? controller,
      String? title,
      bool? readOnly,
      TextInputType? keyBoardType,
      int? maxLine,
      Color? bgColor,
      Color? borderColor,
      String? prefix,
      Widget? lineImage,
      double? width,
      double? horizentalPadding,
      double? verticalPadding,
      String? Function(String?)? validator,
      void Function(String)? onChnage,
      void Function(String)? onFieldSubmitted}) {
    return TextFormField(
      onFieldSubmitted: onFieldSubmitted,
      onChanged: onChnage,
      validator: validator,
      controller: controller,
      readOnly: readOnly ?? false,
      keyboardType: keyBoardType,
      maxLines: maxLine,
      cursorColor: AppColors.primaryColor,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(3),
        ),
        hintText: title ?? 'Email',
        hintStyle: AppTextStyles.simpleText.copyWith(fontSize: 12.sp, color: AppColors.greyButton),
        filled: true,
        fillColor: bgColor ?? AppColors.textFieldColor,
        isCollapsed: true,
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: AppColors.primaryColor),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: borderColor ?? AppColors.textFieldColor),
        ),
        contentPadding: EdgeInsets.symmetric(
          horizontal: horizentalPadding ?? 8.w,
          vertical: verticalPadding ?? 8.h,
        ),
      ),
    );
  }
}
