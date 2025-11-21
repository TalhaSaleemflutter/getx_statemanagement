import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:getx_statemanagement/view_models/controller/favorite/favorite_view_model.dart';

class Favourite extends StatefulWidget {
  const Favourite({super.key});

  @override
  State<Favourite> createState() => _FavouriteState();
}

class _FavouriteState extends State<Favourite> {
  FavouriteController favourite = Get.put(FavouriteController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Favourite file')),
      body: Column(
        children: [
          ListView.builder(
            itemCount: favourite.fruitList.length,
            itemBuilder: (context, index) {
              return Card(
                child: ListTile(
                  onTap: () {
                    if (favourite.tempFruitList.contains(
                      favourite.fruitList[index].toString(),
                    )) {
                      favourite.removeFromFavourtite(
                        favourite.fruitList[index].toString(),
                      );
                    } else {
                      favourite.addToFavourite(
                        favourite.fruitList[index].toString(),
                      );
                    }
                  },
                  title: Text(favourite.fruitList[index].toString()),
                  trailing: Obx(
                    () => Icon(
                      Icons.favorite,
                      color:
                          favourite.tempFruitList.contains(
                                favourite.fruitList[index].toString(),
                              )
                              ? const Color.fromARGB(255, 184, 51, 41)
                              : Colors.grey,
                    ),
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
