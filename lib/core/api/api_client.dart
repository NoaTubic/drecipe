import 'package:dio/dio.dart';
import 'package:drecipe/core/api/api_constants.dart';
import 'package:retrofit/retrofit.dart';

part 'api_client.g.dart';

@RestApi()
abstract class ApiClient {
  factory ApiClient.createDefault(Dio dio) = _ApiClient;

  @GET('/recipes/random')
  Future<String> getRandomRecipes({
    // @Query('limitLicense') bool limitLicense = true,
    // @Query('tags') String tags = 'vegetarian',
    @Query('number') int number = ApiConstants.numberOfRecipes,
  });
}
