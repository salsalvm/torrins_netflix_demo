import 'package:flutter/foundation.dart';
import 'package:torrins_test/data/network/base_api_services.dart';
import 'package:torrins_test/data/network/network_api_services.dart';
import 'package:torrins_test/model/movie_data.dart';

import 'package:torrins_test/res/app_urls.dart';

class HomeRepository {
  BaseApiServices apiServices = NetworkApiService();

Apis api =Apis();
  Future<MovieResponse> fetchPopularDatas() async {
    try {
      dynamic response =
          await apiServices.getGetApiResponse(url:api.topMovie,auth:api.authorization);

      return response = MovieResponse.fromJson(response as Map<String, dynamic>);
    } catch (e) {
      if (kDebugMode) {
        print(e.toString());
      }
      rethrow;
    }
  }

    Future<MovieResponse> fetchTopDatas() async {
    try {
      dynamic response =
          await apiServices.getGetApiResponse(url:api.popularMovie,auth:api.authorization);

      return response = MovieResponse.fromJson(response as Map<String, dynamic>);
    } catch (e) {
      if (kDebugMode) {
        print(e.toString());
      }
      rethrow;
    }
  }
}
