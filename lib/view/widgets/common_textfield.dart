import 'package:flutter/material.dart';
import 'package:lms_portal/controllers/utills/myapp_colors.dart';
import 'package:lms_portal/controllers/utills/myapp_styles.dart';

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
        hintStyle: AppTextStyles.simpleText.copyWith(fontSize: 12, color: AppColors.blackColor),
        filled: true,
        fillColor: bgColor ?? AppColors.textFieldColor,
        isCollapsed: true,
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(3),
          borderSide: BorderSide(color: AppColors.primaryColor),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(3),
          borderSide: BorderSide(color: borderColor ?? AppColors.textFieldColor),
        ),
        contentPadding: EdgeInsets.symmetric(
          horizontal: horizentalPadding ?? 1.2,
          vertical: verticalPadding ?? 2,
        ),
      ),
    );
  }
}
