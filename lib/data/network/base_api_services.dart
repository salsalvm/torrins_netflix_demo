abstract class BaseApiServices {
  //----------whole get methods------//
  Future<dynamic> getGetApiResponse({required String url,required String auth});

  //----------whole post methods------//
  Future<dynamic> getPostApiResponse(
      {required String url, required dynamic data,required 
      String auth});
}
