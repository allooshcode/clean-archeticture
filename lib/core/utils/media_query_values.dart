import 'package:flutter/material.dart';

extension MediaQueryValuesX on BuildContext {
  double get width => MediaQuery.of(this).size.width;

  double get top => MediaQuery.of(this).viewPadding.top;
}
