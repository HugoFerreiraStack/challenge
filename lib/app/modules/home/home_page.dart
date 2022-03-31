// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:developer';

import 'package:flutter_mobx/flutter_mobx.dart';

import 'package:challenge/app/modules/home/widgets/poster_widget.dart';
import 'package:challenge/app/shared/models/movie.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../shared/constants/app_colors.dart';
import 'home_store.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key? key, this.title = "Home"}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeStore> {
  @override
  void initState() {
    store
        .getMovieInformation()
        .then((value) => value.fold((l) => log(l), (r) => store.setMovie(r)));
    super.initState();
  }

  Widget buildBody(Movie? movie) {
    if (movie == null) {
      return Scaffold(
        backgroundColor: Colors.black,
        body: SizedBox(
          height: MediaQuery.of(context).size.height,
          width: double.infinity,
          child: Center(
            child: CircularProgressIndicator(color: AppColors.red),
          ),
        ),
      );
    } else {
      return Scaffold(
        backgroundColor: Colors.black,
        body: CustomScrollView(
          slivers: [PosterWidget(movie: store.movie!)],
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (_) {
        return buildBody(store.movie);
      },
    );
  }
}
