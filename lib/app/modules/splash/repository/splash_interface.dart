import 'package:challenge/app/shared/models/movie.dart';
import 'package:dartz/dartz.dart';

abstract class SplashInterface {
  Future<Either<String, String>> getToken(String apiKey);
  Future<Either<String, List<Genres>>> getGenres(String apiKey);
}
