// ignore_for_file: prefer_const_constructors

import 'package:auto_size_text/auto_size_text.dart';
import 'package:challenge/app/modules/home/home_store.dart';
import 'package:challenge/app/shared/constants/api.dart';
import 'package:challenge/app/shared/constants/app_colors.dart';
import 'package:challenge/app/shared/models/movie.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PosterWidget extends StatelessWidget {
  final Movie movie;
  const PosterWidget({Key? key, required this.movie}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final HomeStore store = Modular.get();
    var size = MediaQuery.of(context).size;
    return SliverAppBar(
      collapsedHeight: size.height / 2,
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
        titlePadding: EdgeInsets.only(left: 15),
        centerTitle: false,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              width: size.width / 2,
              child: AutoSizeText(
                movie.originalTitle!,
                maxFontSize: 18,
                maxLines: 2,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            IconButton(
              onPressed: () {
                store.setIsLiked(store.isLiked);
              },
              icon: Observer(
                builder: (context) {
                  return Icon(
                    FontAwesomeIcons.solidHeart,
                    color: store.isLiked ? Colors.red : Colors.white,
                    size: 20,
                  );
                },
              ),
            )
          ],
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
