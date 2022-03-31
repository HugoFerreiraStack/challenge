import 'package:dartz/dartz.dart';

import '../../../shared/models/movie.dart';
import '../../../shared/models/similar_movies.dart';

abstract class HomeInterface {
  Future<Either<String, Movie>> getMovie(String apiKey);
  Future<Either<String, List<Results>>> getMovies(String apiKey);
}
