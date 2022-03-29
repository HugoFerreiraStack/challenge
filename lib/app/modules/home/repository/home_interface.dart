import 'package:dartz/dartz.dart';

abstract class HomeInterface {
  Future<Either<String, String>> getToken(String apiKey);
}
