
import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';
import 'package:torrins_test/data/response/api_response.dart';
import 'package:torrins_test/model/result.dart';
import 'package:torrins_test/repository/home_repository.dart';
import 'package:torrins_test/utils/routes/routes_name.dart';

class HomeController extends GetxController {
  final HomeRepository homeRepo = HomeRepository();

  var homeList =[];
  var demo ="";
  @override
  void onInit() {
    getHomeDatas();

    super.onInit();
  }

  RxBool test = true.obs;
  //---------//
  ApiResponse<Result> homeDatas = ApiResponse<Result>.loading();
  void setHomeDatas(ApiResponse<Result> response) {
    homeDatas = response;
    update();
  }

  Future<void> getHomeDatas() async {
    setHomeDatas(ApiResponse<Result>.loading());

    homeRepo.fetchHomeDatas().then((Result data ) {
      setHomeDatas(ApiResponse<Result>.complete(data));
      print(data.date.toString());
    }).onError((Object? error, StackTrace stackTrace) {
      setHomeDatas(ApiResponse<Result>.error(error.toString()));
    });
    update();
  }


    void viewDetailScreen(BuildContext context, Result product) {
    Navigator.pushNamed(context, KRoutesName.details);
  }
}
