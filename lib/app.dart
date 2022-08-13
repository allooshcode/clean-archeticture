import 'package:clean_archeticture/core/utils/app_colors.dart';
import 'package:clean_archeticture/core/utils/hex_color.dart';
import 'package:flutter/material.dart';

import 'config/themes/app_theme.dart';
import 'features/random_qoute/presentation/pages/qoute_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: appTheme(),
      home: const QouteScreen(
        title: 'Flutter Demo Home Page',
        key: Key(''),
      ),
    );
  }
}
