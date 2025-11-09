import 'package:get/get.dart';

class FavouriteController extends GetxController{

 RxList<String> fruitList = ['banana','mango','apple'].obs;
 RxList tempFruitList = [].obs;

addToFavourite(String value){
  tempFruitList.add(value);
}

removeFromFavourtite(String value){
  tempFruitList.remove(value);
}

}