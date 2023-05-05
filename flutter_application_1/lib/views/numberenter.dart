import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/app_colors.dart';
import 'package:flutter_application_1/widget/logo_intro_widget.dart';
import 'package:flutter_application_1/widget/numberenterWidget.dart';
import 'package:flutter_application_1/widget/plus_logo.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fl_country_code_picker/fl_country_code_picker.dart';

class numberenter extends StatefulWidget {
  const numberenter({Key? key}) : super(key: key);

  @override
  State<numberenter> createState() => _numberenterState();
}

class _numberenterState extends State<numberenter> {
  final countryPicker = const FlCountryCodePicker();
  CountryCode countryCode =
      CountryCode(name: 'Kazakhstan', code: 'KZ', dialCode: '+7');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              plus_lg(),
              const SizedBox(
                height: 20,
              ),
              numEnter(
                countryCode,
              )
            ],
          ),
        ),
      ),
    );
  }
}
