import 'dart:ui';
import 'package:getx_statemanagement/data/network/network_api_services.dart';
import 'package:getx_statemanagement/res/app_url/app_url.dart';
class LoginRepository {

  final _apiService  = NetworkApiServices() ;

 Future<dynamic> loginApi(Map data) async {
  return await _apiService.postApi(data, AppUrl.loginApi);
}

}