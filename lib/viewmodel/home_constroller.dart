import 'package:get/state_manager.dart';
import 'package:torrins_test/data/response/api_response.dart';
import 'package:torrins_test/model/movie_data.dart';
import 'package:torrins_test/repository/home_repository.dart';

class HomeController extends GetxController {
  final HomeRepository homeRepo = HomeRepository();


  @override
  void onInit() {
    getTrendingMovie();
    getTopMovie();
    super.onInit();
  }

 List<Movie> topMovi = <Movie>[].obs;
 List<Movie> popularMovi = <Movie>[].obs;
  //---------//
  ApiResponse<MovieResponse> homeDatas = ApiResponse<MovieResponse>.loading();
  void setHomeDatas(ApiResponse<MovieResponse> response) {
    homeDatas = response;
    update();
  }

  Future<void> getTrendingMovie() async {
    setHomeDatas(ApiResponse<MovieResponse>.loading());

    homeRepo.fetchPopularDatas().then((MovieResponse data ) {
      setHomeDatas(ApiResponse<MovieResponse>.complete(data));
      popularMovi = data.results.obs;
    }).onError((Object? error, StackTrace stackTrace) {
      setHomeDatas(ApiResponse<MovieResponse>.error(error.toString()));
    });
    update();
  }


  Future<void> getTopMovie() async {
    homeRepo.fetchTopDatas().then((MovieResponse data ) {
      setHomeDatas(ApiResponse<MovieResponse>.complete(data));
  
      topMovi = data.results.obs;

    }).onError((Object? error, StackTrace stackTrace) {
      
      setHomeDatas(ApiResponse<MovieResponse>.error(error.toString()));
    });
    update();
  }

}
