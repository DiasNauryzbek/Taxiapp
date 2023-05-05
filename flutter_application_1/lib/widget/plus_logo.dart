import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/app_colors.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

Widget plus_lg() {
  return Container(
    width: Get.width,
    height: Get.height * 0.6,
    decoration: BoxDecoration(
      color: AppColors.darkBlueColor,
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset('assets/main.svg'),
      ],
    ),
  );
}
