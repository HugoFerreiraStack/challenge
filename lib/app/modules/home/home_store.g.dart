// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HomeStore on HomeStoreBase, Store {
  Computed<bool>? _$isLoadingTokenComputed;

  @override
  bool get isLoadingToken =>
      (_$isLoadingTokenComputed ??= Computed<bool>(() => super.isLoadingToken,
              name: 'HomeStoreBase.isLoadingToken'))
          .value;
  Computed<bool>? _$isLoadingMoviesComputed;

  @override
  bool get isLoadingMovies =>
      (_$isLoadingMoviesComputed ??= Computed<bool>(() => super.isLoadingMovies,
              name: 'HomeStoreBase.isLoadingMovies'))
          .value;

  final _$accessTokenAtom = Atom(name: 'HomeStoreBase.accessToken');

  @override
  String? get accessToken {
    _$accessTokenAtom.reportRead();
    return super.accessToken;
  }

  @override
  set accessToken(String? value) {
    _$accessTokenAtom.reportWrite(value, super.accessToken, () {
      super.accessToken = value;
    });
  }

  final _$getMovieAtom = Atom(name: 'HomeStoreBase.getMovie');

  @override
  ObservableFuture<Either<String, Movie>>? get getMovie {
    _$getMovieAtom.reportRead();
    return super.getMovie;
  }

  @override
  set getMovie(ObservableFuture<Either<String, Movie>>? value) {
    _$getMovieAtom.reportWrite(value, super.getMovie, () {
      super.getMovie = value;
    });
  }

  final _$movieAtom = Atom(name: 'HomeStoreBase.movie');

  @override
  Movie? get movie {
    _$movieAtom.reportRead();
    return super.movie;
  }

  @override
  set movie(Movie? value) {
    _$movieAtom.reportWrite(value, super.movie, () {
      super.movie = value;
    });
  }

  final _$isLikedAtom = Atom(name: 'HomeStoreBase.isLiked');

  @override
  bool get isLiked {
    _$isLikedAtom.reportRead();
    return super.isLiked;
  }

  @override
  set isLiked(bool value) {
    _$isLikedAtom.reportWrite(value, super.isLiked, () {
      super.isLiked = value;
    });
  }

  final _$similarsMoviesAtom = Atom(name: 'HomeStoreBase.similarsMovies');

  @override
  ObservableFuture<Either<String, List<Results>>>? get similarsMovies {
    _$similarsMoviesAtom.reportRead();
    return super.similarsMovies;
  }

  @override
  set similarsMovies(ObservableFuture<Either<String, List<Results>>>? value) {
    _$similarsMoviesAtom.reportWrite(value, super.similarsMovies, () {
      super.similarsMovies = value;
    });
  }

  final _$moviesListAtom = Atom(name: 'HomeStoreBase.moviesList');

  @override
  ObservableList<Results> get moviesList {
    _$moviesListAtom.reportRead();
    return super.moviesList;
  }

  @override
  set moviesList(ObservableList<Results> value) {
    _$moviesListAtom.reportWrite(value, super.moviesList, () {
      super.moviesList = value;
    });
  }

  final _$getSimilarsMoviesAsyncAction =
      AsyncAction('HomeStoreBase.getSimilarsMovies');

  @override
  Future<Either<String, List<Results>>> getSimilarsMovies() {
    return _$getSimilarsMoviesAsyncAction.run(() => super.getSimilarsMovies());
  }

  final _$HomeStoreBaseActionController =
      ActionController(name: 'HomeStoreBase');

  @override
  void setToken(String value) {
    final _$actionInfo = _$HomeStoreBaseActionController.startAction(
        name: 'HomeStoreBase.setToken');
    try {
      return super.setToken(value);
    } finally {
      _$HomeStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  Future<Either<String, Movie>> getMovieInformation() {
    final _$actionInfo = _$HomeStoreBaseActionController.startAction(
        name: 'HomeStoreBase.getMovieInformation');
    try {
      return super.getMovieInformation();
    } finally {
      _$HomeStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setMovie(Movie value) {
    final _$actionInfo = _$HomeStoreBaseActionController.startAction(
        name: 'HomeStoreBase.setMovie');
    try {
      return super.setMovie(value);
    } finally {
      _$HomeStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setIsLiked(bool value) {
    final _$actionInfo = _$HomeStoreBaseActionController.startAction(
        name: 'HomeStoreBase.setIsLiked');
    try {
      return super.setIsLiked(value);
    } finally {
      _$HomeStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void updateListMovies(List<Results> value) {
    final _$actionInfo = _$HomeStoreBaseActionController.startAction(
        name: 'HomeStoreBase.updateListMovies');
    try {
      return super.updateListMovies(value);
    } finally {
      _$HomeStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
accessToken: ${accessToken},
getMovie: ${getMovie},
movie: ${movie},
isLiked: ${isLiked},
similarsMovies: ${similarsMovies},
moviesList: ${moviesList},
isLoadingToken: ${isLoadingToken},
isLoadingMovies: ${isLoadingMovies}
    ''';
  }
}
