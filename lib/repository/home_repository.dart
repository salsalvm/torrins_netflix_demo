import 'package:flutter/foundation.dart';
import 'package:torrins_test/data/network/base_api_services.dart';
import 'package:torrins_test/data/network/network_api_services.dart';
import 'package:torrins_test/model/result.dart';
import 'package:torrins_test/res/app_urls.dart';

class HomeRepository {
  BaseApiServices apiServices = NetworkApiService();

  Future<Result> fetchHomeDatas() async {
    try {
      dynamic response =
          await apiServices.getGetApiResponse(url:"https://dummy.restapiexample.com/api/v1/employees");

      return response = Result.fromJson(response as Map<String, dynamic>);
    } catch (e) {
      if (kDebugMode) {
        print(e.toString());
      }
      rethrow;
    }
  }
}
