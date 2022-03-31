import 'package:dartz/dartz.dart';

import '../../../shared/models/movie.dart';

abstract class HomeInterface {
  Future<Either<String, Movie>> getMovie(String apiKey);
}
