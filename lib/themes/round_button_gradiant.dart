import 'package:flutter/material.dart';
import 'package:parkinghawkernew/themes/app_them_data.dart';
import 'package:parkinghawkernew/themes/responsive.dart';

class RoundedButtonGradiant extends StatelessWidget {
  final String title;
  final double? width;
  final double? height;
  final double? fontSize;
  final Function() onPress;

  const RoundedButtonGradiant({super.key, required this.title, this.height, required this.onPress, this.width, this.fontSize,});

  @override
  Widget build(BuildContext context) {
    final isDarkTheme = Theme.of(context).brightness == Brightness.dark;
    return InkWell(
      onTap: () {
        FocusManager.instance.primaryFocus?.unfocus();
        onPress();
      },
      child: Container(
        width: Responsive.width(width ?? 100, context),
        height: Responsive.height(height ?? 6, context),
        decoration: ShapeDecoration(
          // gradient: const LinearGradient(
          //   begin: Alignment(0.00, 1.00),
          //   end: Alignment(0, -1),
          //   colors: AppThemData.gradient05,
          // ),
          color: AppThemData.primary09,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(200),
          ),
        ),
        child: Center(
          child: Text(
            title.toString(),
            textAlign: TextAlign.center,
            style: TextStyle(
              fontFamily: AppThemData.medium,
              color: isDarkTheme ? AppThemData.white: AppThemData.labelColorLightPrimary ,
              fontSize: fontSize ?? 16,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
    );
  }
}
