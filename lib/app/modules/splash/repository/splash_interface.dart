import 'package:dartz/dartz.dart';

abstract class SplashInterface {
  Future<Either<String, String>> getToken(String apiKey);
}
