// ignore_for_file: prefer_const_constructors

import 'package:challenge/app/modules/splash/repository/splash_interface.dart';
import 'package:challenge/app/shared/models/movie.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import '../../../shared/constants/api.dart';

class SplashRepository implements SplashInterface {
  Dio client = Dio();

  @override
  Future<Either<String, String>> getToken(String apiKey) async {
    try {
      final response = await client.get(
          Api.BASE_URL + 'authentication/token/new',
          queryParameters: {'api_key': apiKey});

      if (response.statusCode == 200) {
        return Right(response.data['request_token']);
      } else if (response.statusCode == 401) {
        return Left(response.data['status_message']);
      } else if (response.statusCode == 404) {
        return Left(response.data['status_message']);
      } else {
        return Left(response.data['Failed to connect api']);
      }
    } catch (e) {
      return Left(e.toString());
    }
  }

  @override
  Future<Either<String, List<Genres>>> getGenres(String apiKey) async {
    List<Genres> genres = <Genres>[];

    try {
      final response = await client.get(Api.BASE_URL + 'genre/movie/list',
          queryParameters: {'api_key': apiKey});

      if (response.statusCode == 200) {
        genres =
            (response.data as List).map((c) => Genres?.fromJson(c)).toList();

        return Right(genres);
      } else if (response.statusCode == 400) {
        return Left('Não autorizado');
      } else {
        return Left('Erro ao buscar generos');
      }
    } catch (e) {
      Left(e.toString());
    }
    return Right(genres);
  }
}
