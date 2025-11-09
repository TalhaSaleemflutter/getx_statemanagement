import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:getx_statemanagement/view/examples/counter_screen.dart';
import 'package:getx_statemanagement/view/examples/favourite.dart';
import 'package:getx_statemanagement/view/examples/opacity.dart';

class Examples extends StatefulWidget {
  const Examples({super.key});

  @override
  State<Examples> createState() => _ExamplesState();
}

class _ExamplesState extends State<Examples> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Examples screen')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: () {
              Get.to(CounterScreen());
            },
            child: Text('Counter Class'),
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              Get.to(OpacityScreen());
            },
            child: Text('Opacity class'),
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              Get.to(Favourite());
            },
            child: Text('Favourite class'),
          ),
        ],
      ),
    );
  }
}
