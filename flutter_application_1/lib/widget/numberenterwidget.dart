import 'package:fl_country_code_picker/fl_country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/app_colors.dart';
import 'package:flutter_application_1/views/otp_verification_screen.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

Widget numEnter(
  CountryCode countryCode,
) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Text(
          "Введите ваш номер",
          style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: AppColors.darkBlueColor),
        ),
        const SizedBox(
          height: 40,
        ),
        Container(
          width: double.infinity,
          height: 65,
          decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.1),
                  spreadRadius: 2,
                  blurRadius: 2,
                )
              ],
              borderRadius: BorderRadius.circular(8)),
          child: Row(
            children: [
              Expanded(
                flex: 1,
                child: InkWell(
                  child: Container(
                    child: Row(
                      children: [
                        const SizedBox(
                          width: 5,
                        ),
                        Expanded(
                          child: Container(
                            child: countryCode.flagImage,
                          ),
                        ),
                        Text(countryCode.dialCode),
                        const SizedBox(
                          width: 5,
                        )
                        //const SizedBox(width: 10,),
                        // Icon(Icons.keyboard_arrow_down_rounded)
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                width: 1,
                height: 55,
                color: AppColors.darkBlueColor.withOpacity(0.2),
              ),
              Expanded(
                flex: 3,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: TextField(
                    onTap: () {
                      Get.to(() => OtpVerificationScreen());
                    },
                    decoration: InputDecoration(
                        hintStyle: GoogleFonts.poppins(
                            fontSize: 12, fontWeight: FontWeight.normal),
                        hintText: "Введите ваш номер",
                        border: InputBorder.none),
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 40,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
                style: TextStyle(color: AppColors.darkBlueColor, fontSize: 12),
                children: [
                  TextSpan(
                    text: "Создавая новую учётную запись, вы соглашаетесь с ",
                  ),
                  TextSpan(
                      text: "Правилами и условиями сервиса ",
                      style: GoogleFonts.poppins(fontWeight: FontWeight.bold)),
                  TextSpan(
                    text: "и",
                  ),
                  TextSpan(
                      text: " Политикиой конфиденциальности.",
                      style: GoogleFonts.poppins(fontWeight: FontWeight.bold))
                ]),
          ),
        )
      ],
    ),
  );
}
