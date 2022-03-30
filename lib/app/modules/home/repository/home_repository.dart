import 'package:challenge/app/modules/home/repository/home_interface.dart';
import 'package:challenge/app/shared/constants/api.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepository implements HomeInterface {
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
}
