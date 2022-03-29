// ignore_for_file: prefer_const_constructors

import 'package:challenge/app/shared/constants/app_colors.dart';
import 'package:flutter/material.dart';

class CustomAppBarWidget extends PreferredSize {
  CustomAppBarWidget({
    Key? key,
  }) : super(
            key: key,
            preferredSize: const Size.fromHeight(80),
            child: AppBar(
              automaticallyImplyLeading: false,
              backgroundColor: Colors.transparent,
              elevation: 0,
              title: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    child: Icon(Icons.arrow_back_ios_new, color: Colors.white),
                    style: ElevatedButton.styleFrom(
                      shape: CircleBorder(),
                      padding: EdgeInsets.all(5),
                      primary: AppColors.black, // <-- Button color
                      onPrimary: AppColors.red, // <-- Splash color
                    ),
                  )
                ],
              ),
            ));
}
