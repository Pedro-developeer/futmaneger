import 'package:flutter/material.dart';

class AppColors {
  static const kRedAccent = Color(0xFFF23041);
  static const kRedDark = Color(0xFFA9000F);
  static const kWhite = Color(0xFFF2F2F2);
  static const kBlueAccent = Color(0xFF4EC9F2);
  static const kBlueDark = Color(0xFF3C1CA5);
  static const kDark = Color(0xFF1D1D1D);
}

class AppTextStyles {
  static const fontButton = TextStyle(
    color: Colors.white,
    fontSize: 16,
    fontFamily: '.SF UI Display',
    fontWeight: FontWeight.bold,
  );

  static const fontTextField = TextStyle(
    fontFamily: '.SF UI Display',
    color: AppColors.kDark,
    fontSize: 16,
    fontWeight: FontWeight.w500,
  );

  static const fontTextButton = TextStyle(
    color: AppColors.kRedAccent,
    fontSize: 18,
    fontFamily: '.SF UI Display',
    fontWeight: FontWeight.bold,
  );

  static const fontTextButtonField = TextStyle(
    color: AppColors.kRedAccent,
    fontSize: 16,
    fontFamily: '.SF UI Display',
    fontWeight: FontWeight.bold,
  );

  static const fontText = TextStyle(
    color: AppColors.kDark,
    fontSize: 15,
    fontFamily: '.SF UI Display',
  );

  static const fontTextTile = TextStyle(
    color: AppColors.kDark,
    fontSize: 18,
    fontFamily: '.SF UI Display',
  );

  static const fontAppBar = TextStyle(
    color: AppColors.kDark,
    fontSize: 18,
    fontFamily: '.SF UI Display',
    fontWeight: FontWeight.bold,
  );
  static const fontAppBarSec = TextStyle(
    color: AppColors.kWhite,
    fontSize: 18,
    fontFamily: '.SF UI Display',
    fontWeight: FontWeight.bold,
  );
}
