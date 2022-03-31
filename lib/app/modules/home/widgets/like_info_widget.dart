// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'dart:math' as math;
import '../../../shared/models/movie.dart';

class LikeInfoWidget extends SliverPersistentHeaderDelegate {
  final Movie movie;
  const LikeInfoWidget({Key? key, required this.movie});

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(
                FontAwesomeIcons.solidHeart,
                size: 15,
              ),
              SizedBox(width: 5),
              Text(movie.voteCount.toString() + ' Likes')
            ],
          ),
          SizedBox(
            width: 20,
          ),
          Row(
            children: [
              Transform.rotate(
                  angle: -90 * math.pi / 180,
                  child: Icon(
                    FontAwesomeIcons.circleHalfStroke,
                    size: 15,
                  )),
              SizedBox(width: 5),
              Text(movie.popularity.toString() + ' Watched')
            ],
          ),
        ],
      ),
    );
  }

  @override
  double get maxExtent => 30;

  @override
  double get minExtent => 20;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return true;
  }
}
