// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_client.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps,no_leading_underscores_for_local_identifiers

class _ApiClient implements ApiClient {
  _ApiClient(
    this._dio, {
    this.baseUrl,
  });

  final Dio _dio;

  String? baseUrl;

  @override
  Future<RecipesDiscoverResponse> getRandomRecipes({
    required sort,
    addRecipeInformation = 'true',
    number = Constants.numberOfRecipes,
    offset,
    type,
    fillIngredients = 'true',
  }) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'sort': sort,
      r'addRecipeInformation': addRecipeInformation,
      r'number': number,
      r'offset': offset,
      r'type': type,
      r'fillIngredients': fillIngredients,
    };
    queryParameters.removeWhere((k, v) => v == null);
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<RecipesDiscoverResponse>(Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/recipes/complexSearch',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = RecipesDiscoverResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<RecipeResponse> getRecipeDetails({
    required id,
    includeNutrition = true,
  }) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'includeNutrition': includeNutrition
    };
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio
        .fetch<Map<String, dynamic>>(_setStreamType<RecipeResponse>(Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/recipes/${id}/information',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = RecipeResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<List<RecipeRecommendedResponse>> getRecommendedRecipes({
    required id,
    number = Constants.numberOfRecipes,
  }) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{r'number': number};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<List<dynamic>>(
        _setStreamType<List<RecipeRecommendedResponse>>(Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/recipes/${id}/similar',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    var value = _result.data!
        .map((dynamic i) =>
            RecipeRecommendedResponse.fromJson(i as Map<String, dynamic>))
        .toList();
    return value;
  }

  @override
  Future<List<SearchRecipesSuggestionResponse>> autocompleteRecipeSearch({
    required searchQuery,
    numberOfRecipes = Constants.numberOfRecipes,
  }) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'query': searchQuery,
      r'number': numberOfRecipes,
    };
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<List<dynamic>>(
        _setStreamType<List<SearchRecipesSuggestionResponse>>(Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/recipes/autocomplete',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    var value = _result.data!
        .map((dynamic i) =>
            SearchRecipesSuggestionResponse.fromJson(i as Map<String, dynamic>))
        .toList();
    return value;
  }

  @override
  Future<RecipesDiscoverResponse> searchRecipes({
    includeIngredients,
    excludeIngredients,
    cuisine,
    type,
    diet,
    intolerances,
    maxReadyTime,
    sort,
    sortDirection,
    minCalories,
    maxCalories,
    required query,
    addRecipeInformation = 'true',
    fillIngredients = 'true',
    number = Constants.numberOfRecipes,
  }) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'includeIngredients': includeIngredients,
      r'excludeIngredients': excludeIngredients,
      r'cuisine': cuisine,
      r'type': type,
      r'diet': diet,
      r'intolerances': intolerances,
      r'maxReadyTime': maxReadyTime,
      r'sort': sort,
      r'sortDirection': sortDirection,
      r'minCalories': minCalories,
      r'maxCalories': maxCalories,
      r'query': query,
      r'addRecipeInformation': addRecipeInformation,
      r'fillIngredients': fillIngredients,
      r'number': number,
    };
    queryParameters.removeWhere((k, v) => v == null);
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<RecipesDiscoverResponse>(Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/recipes/complexSearch',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = RecipesDiscoverResponse.fromJson(_result.data!);
    return value;
  }

  RequestOptions _setStreamType<T>(RequestOptions requestOptions) {
    if (T != dynamic &&
        !(requestOptions.responseType == ResponseType.bytes ||
            requestOptions.responseType == ResponseType.stream)) {
      if (T == String) {
        requestOptions.responseType = ResponseType.plain;
      } else {
        requestOptions.responseType = ResponseType.json;
      }
    }
    return requestOptions;
  }
}
