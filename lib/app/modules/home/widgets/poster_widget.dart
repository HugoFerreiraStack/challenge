// ignore_for_file: prefer_const_constructors

import 'dart:ui';

import 'package:challenge/app/shared/constants/app_colors.dart';
import 'package:flutter/material.dart';

class PosterWidget extends StatelessWidget {
  final String url;
  const PosterWidget({Key? key, required this.url}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SliverAppBar(
      shadowColor: Colors.transparent,
      leading: Padding(
        padding: EdgeInsets.only(left: 5),
        child: ElevatedButton(
          onPressed: () {},
          child: Icon(Icons.arrow_back_ios_new, color: Colors.white),
          style: ElevatedButton.styleFrom(
            shape: CircleBorder(),
            padding: EdgeInsets.all(5),
            primary: AppColors.black,
            onPrimary: AppColors.red,
          ),
        ),
      ),
      automaticallyImplyLeading: false,
      pinned: true,
      snap: false,
      floating: false,
      expandedHeight: size.height / 2,
      flexibleSpace: FlexibleSpaceBar(
        background: Image.network(
          'https://sportshub.cbsistatic.com/i/2022/01/21/6c422820-0c68-41e2-8496-ccc76599f26a/spider-man-no-way-home-multiverse-poster.jpg?auto=webp&width=928&height=1374&crop=0.675:1,smart',
          width: size.width,
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
