import 'package:flutter/material.dart';

class AppColors {
  static const kGreen = Color(0xFF377140);
  static const kRedDark = Color(0xFFEF5350);
  static const kWhite = Color(0xFFF5F5F5);
  static const kDark = Color(0xFF171716);
  static const kGrey = Color(0xFF767672);
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
    color: AppColors.kGreen,
    fontSize: 15,
    fontFamily: '.SF UI Display',
    fontWeight: FontWeight.bold,
  );

  static const fontTextButtonField = TextStyle(
    color: AppColors.kGreen,
    fontSize: 16,
    fontFamily: '.SF UI Display',
    fontWeight: FontWeight.bold,
  );

  static const fontText = TextStyle(
    color: AppColors.kDark,
    fontSize: 15,
    fontFamily: '.SF UI Display',
  );

  static const fontTextSub = TextStyle(
    color: AppColors.kGrey,
    fontSize: 15,
    fontFamily: '.SF UI Display',
  );
  static const fontTextSubRed = TextStyle(
    color: AppColors.kRedDark,
    fontSize: 15,
    fontFamily: '.SF UI Display',
  );

  static const fontTextTile = TextStyle(
    color: AppColors.kDark,
    fontSize: 18,
    fontFamily: '.SF UI Display',
  );

  static const fontTextTileTitle = TextStyle(
    color: AppColors.kDark,
    fontSize: 18,
    fontFamily: '.SF UI Display',
    fontWeight: FontWeight.w500,
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
