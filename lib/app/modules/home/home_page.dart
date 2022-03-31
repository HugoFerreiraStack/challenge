// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:developer';

import 'package:challenge/app/modules/home/widgets/like_info_widget.dart';
import 'package:challenge/app/shared/constants/api.dart';
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
    store.getSimilarsMovies().then((value) => value.fold((l) => log(l), (r) {
          store.updateListMovies(r);
        }));

    super.initState();
  }

  Widget buildGenresText(List<int> ids) {
    List<Genres> generos = <Genres>[];
    for (var element in ids) {
      if (element == 28) {
        generos.add(Genres(id: 28, name: 'Action'));
      } else if (element == 12) {
        generos.add(Genres(id: 12, name: 'Adventure'));
      } else if (element == 16) {
        generos.add(Genres(id: 16, name: 'Animation'));
      } else if (element == 35) {
        generos.add(Genres(id: 35, name: 'Comedy'));
      } else if (element == 80) {
        generos.add(Genres(id: 80, name: 'Crime'));
      } else if (element == 99) {
        generos.add(Genres(id: 99, name: 'Documentary'));
      } else if (element == 18) {
        generos.add(Genres(id: 18, name: 'Drama'));
      } else if (element == 10751) {
        generos.add(Genres(id: 10751, name: 'Family'));
      } else if (element == 14) {
        generos.add(Genres(id: 14, name: 'Fantasy'));
      } else if (element == 36) {
        generos.add(Genres(id: 36, name: 'History'));
      } else if (element == 27) {
        generos.add(Genres(id: 27, name: 'Horror'));
      } else if (element == 10402) {
        generos.add(Genres(id: 10402, name: 'Music'));
      } else if (element == 9648) {
        generos.add(Genres(id: 9648, name: 'Romance'));
      } else if (element == 10749) {
        generos.add(Genres(id: 10749, name: 'Horror'));
      } else if (element == 878) {
        generos.add(Genres(id: 878, name: 'Science Fiction'));
      } else if (element == 10770) {
        generos.add(Genres(id: 10770, name: 'TV Movie'));
      } else if (element == 53) {
        generos.add(Genres(id: 53, name: 'Thriller'));
      } else if (element == 10752) {
        generos.add(Genres(id: 10752, name: 'War'));
      } else if (element == 37) {
        generos.add(Genres(id: 37, name: 'Western'));
      }
    }
    return Row(
      children: List.generate(
        generos.length,
        (index) => Padding(
          padding: const EdgeInsets.only(right: 5.0),
          child: Text(generos[index].name! +
              (generos[index] == generos.last ? '' : ',')),
        ),
      ),
    );
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
          slivers: [
            PosterWidget(movie: store.movie!),
            SliverPersistentHeader(
                delegate: LikeInfoWidget(movie: store.movie!)),
            SliverList(
                delegate: SliverChildBuilderDelegate(
                    (BuildContext context, int index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListTile(
                  leading: Image.network(
                      Api.BASE_IMAGE_URL + store.moviesList[index].posterPath),
                  title: Text(
                    store.moviesList[index].title,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: Row(
                    children: [
                      Text(store.moviesList[index].releaseDate.substring(0, 4)),
                      SizedBox(
                        width: 10,
                      ),
                      buildGenresText(store.moviesList[index].genreIds)
                    ],
                  ),
                ),
              );
            }, childCount: store.moviesList.length))
          ],
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
