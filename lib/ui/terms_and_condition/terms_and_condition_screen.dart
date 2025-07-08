import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:get/get.dart';
import 'package:parkinghawkernew/constant/constant.dart';
import 'package:parkinghawkernew/themes/app_them_data.dart';
import 'package:parkinghawkernew/themes/common_ui.dart';
import 'package:parkinghawkernew/utils/dark_theme_provider.dart';
import 'package:provider/provider.dart';

class TermsAndConditionScreen extends StatelessWidget {
  final String? type;

  const TermsAndConditionScreen({super.key, this.type});

  @override
  Widget build(BuildContext context) {
    final themeChange = Provider.of<DarkThemeProvider>(context);

    final String titleText = type == "privacy"
        ? "Parking Hawker App - Privacy Policy"
        : "Parking Hawker App - TERMS AND CONDITIONS";
    return Scaffold(
      appBar: UiInterface().customAppBar(context, themeChange, type == "privacy" ? "privacy_policy".tr : "terms_and_conditions".tr),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 12,
            vertical: 0,
          ),
          child: Column(
            children: [

              Padding(
                padding: const EdgeInsets.fromLTRB(0,15,0,0),
                child: Text(
                  //"Parking Hawker App - Privacy Policy"
                  titleText,
                style: TextStyle(
                  fontSize: 27,
                  fontFamily: AppThemData.bold,
                  color: themeChange.getThem() ? AppThemData.white : AppThemData.labelColorLightPrimary
                ),
                ),
              ),
              Html(
                shrinkWrap: true,
                data: type == "privacy" ? Constant.privacyPolicy : Constant.termsAndConditions,
                // style: {
                //   "body" : Style(margin: Margins.zero, padding: HtmlPaddings.zero),
                // },
              ),
         const   SizedBox(height: 40,),
            ],
          ),
        ),
      ),
    );
  }
}
