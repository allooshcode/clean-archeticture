import 'package:clean_archeticture/core/utils/app_colors.dart';
import 'package:clean_archeticture/core/utils/media_query_values.dart';
import 'package:flutter/material.dart';

class QouteScreen extends StatelessWidget {
  const QouteScreen({required Key key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: SizedBox(
          width: context.width,
          child: const Text(
            'qoute',
            style: TextStyle(fontSize: 25, color: AppColor.hint),
          ),
        ),
      ),
    );
  }
}
