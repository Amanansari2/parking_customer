import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:parkinghawkernew/controller/splash_controller.dart';
import 'package:parkinghawkernew/themes/app_them_data.dart';
import 'package:provider/provider.dart';

import '../utils/dark_theme_provider.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final themeChange = Provider.of<DarkThemeProvider>(context);
    return GetBuilder<SplashController>(
        init: SplashController(),
        builder: (controller) {
          return Scaffold(
            backgroundColor: AppThemData.primary06,
            body:
            Container(
              decoration:  BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                        themeChange.getThem()
                        ? "assets/logo/black_background.png"
                        : "assets/logo/white_background.png"),
                    fit: BoxFit.fill,)),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: Image.asset("assets/logo/phawker_logo_2.png"),
                ),
              ),
            ),
          );
        });
  }
}
