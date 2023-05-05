import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/app_colors.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

Widget Otp_Screen_logo_widget() {
  return Container(
    width: Get.width,
    height: Get.height * 0.35,
    color: AppColors.darkBlueColor,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Верификация",
          style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: AppColors.whiteColor),
        ),
      ],
    ),
  );
}
