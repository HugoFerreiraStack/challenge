// ignore_for_file: deprecated_member_use

import 'package:challenge/app/shared/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Challenge Mobile2You',
      theme:
          ThemeData(brightness: Brightness.dark, primaryColor: AppColors.red),
    ).modular();
  }
}
