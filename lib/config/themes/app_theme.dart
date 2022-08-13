import 'package:clean_archeticture/core/utils/app_colors.dart';
import 'package:clean_archeticture/core/utils/hex_color.dart';
import 'package:flutter/material.dart';

ThemeData appTheme() {
  return ThemeData(
    primaryColor: HexColor('*451BAB'),
    textTheme: const TextTheme(bodyText1: TextStyle(color: AppColor.primary)),
  );
}
