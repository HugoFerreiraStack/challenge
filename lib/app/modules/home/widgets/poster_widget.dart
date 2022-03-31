// ignore_for_file: prefer_const_constructors

import 'dart:ui';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:challenge/app/shared/constants/api.dart';
import 'package:challenge/app/shared/constants/app_colors.dart';
import 'package:challenge/app/shared/models/movie.dart';
import 'package:flutter/material.dart';

class PosterWidget extends StatelessWidget {
  final Movie movie;
  const PosterWidget({Key? key, required this.movie}) : super(key: key);

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
        titlePadding: EdgeInsets.only(left: 15, bottom: 15),
        centerTitle: false,
        title: SizedBox(
          width: size.width / 3,
          child: Text(
            movie.originalTitle!,
            maxLines: 2,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        background: Image.network(
          Api.BASE_IMAGE_URL + movie.posterPath!,
          width: size.width,
          fit: BoxFit.fill,
          filterQuality: FilterQuality.high,
        ),
      ),
    );
  }
}
