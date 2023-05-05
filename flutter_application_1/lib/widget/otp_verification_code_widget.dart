import 'package:fl_country_code_picker/fl_country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/app_colors.dart';
import 'package:flutter_application_1/views/otp_verification_screen.dart';
import 'package:flutter_application_1/widget/pinput_widget.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

Widget otpVerificationCode() {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Text(
          "Введите код отправленный на номер",
          style: TextStyle(fontSize: 18, color: AppColors.darkBlueColor),
        ),
        const SizedBox(
          height: 20,
        ),
        const Text(
          "+7(707)-605-50-50",
          style: TextStyle(fontSize: 18, color: AppColors.darkBlueColor),
        ),
        const SizedBox(
          height: 40,
        ),
        RoundedWithShadow(),
      ],
    ),
  );
}
