import 'package:dartz/dartz.dart';
import 'package:mobx/mobx.dart';
import '../../shared/constants/api.dart';
import '../../shared/models/movie.dart';
import '../../shared/models/similar_movies.dart';
import 'repository/home_interface.dart';
part 'home_store.g.dart';

class HomeStore = HomeStoreBase with _$HomeStore;

abstract class HomeStoreBase with Store {
  final HomeInterface repository;

  HomeStoreBase(this.repository);

  @observable
  String? accessToken;

  @action
  void setToken(String value) {
    accessToken = value;
  }

  @observable
  ObservableFuture<Either<String, Movie>>? getMovie;

  @action
  Future<Either<String, Movie>> getMovieInformation() {
    return getMovie = repository.getMovie(Api.API_KEY).asObservable();
  }

  @computed
  bool get isLoadingToken {
    if (getMovie == null) return false;
    return getMovie!.status == FutureStatus.pending;
  }

  @observable
  Movie? movie;

  @action
  void setMovie(Movie value) {
    movie = value;
  }

  @observable
  bool isLiked = false;

  @action
  void setIsLiked(bool value) {
    isLiked = !isLiked;
  }

  @observable
  ObservableFuture<Either<String, List<Results>>>? similarsMovies;

  @action
  Future<Either<String, List<Results>>> getSimilarsMovies() async {
    return similarsMovies = repository.getMovies(Api.API_KEY).asObservable();
  }

  @computed
  bool get isLoadingMovies {
    if (similarsMovies == null) return false;
    return similarsMovies!.status == FutureStatus.pending;
  }

  @observable
  ObservableList<Results> moviesList = <Results>[].asObservable();

  @action
  void updateListMovies(List<Results> value) {
    moviesList = value.asObservable();
  }

  @observable
  ObservableList<Genres> genres = <Genres>[].asObservable();

  @action
  void updateListGenres(List<Genres> value) {
    genres = value.asObservable();
  }
}
