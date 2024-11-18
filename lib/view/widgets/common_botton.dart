import 'package:flutter/material.dart';
import 'package:lms_portal/controllers/utills/myapp_colors.dart';

class CommonBotton {
  Widget customElevatedButton({Widget? title, Color? bgColor, double? width, double? borderRadius, void Function()? onTap}) {
    return ElevatedButton(
        onPressed: onTap,
        style: ButtonStyle(
          shape: WidgetStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(borderRadius ?? 4))),
          backgroundColor: WidgetStatePropertyAll(bgColor ?? AppColors.primaryColor),
        ),
        child: title);
  }
}
