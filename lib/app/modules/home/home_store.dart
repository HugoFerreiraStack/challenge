import 'package:dartz/dartz.dart';
import 'package:mobx/mobx.dart';
import '../../shared/constants/api.dart';
import '../../shared/models/movie.dart';
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
}
