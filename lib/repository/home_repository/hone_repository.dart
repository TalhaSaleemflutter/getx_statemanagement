import 'dart:ui';
import 'package:getx_statemanagement/data/network/network_api_services.dart';
import 'package:getx_statemanagement/models/home/user_list_model.dart';
import 'package:getx_statemanagement/res/app_url/app_url.dart';

class HomeRepository {
  final _apiService  = NetworkApiServices() ;
  Future<UserListModel> userListApi() async{
    dynamic response = await _apiService.getApi(AppUrl.userListApi);
    return UserListModel.fromJson(response);
  }


}