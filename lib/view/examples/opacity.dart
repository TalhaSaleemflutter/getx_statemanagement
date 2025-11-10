import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_statemanagement/view_models/controller/counter/counter_view_model.dart';

class OpacityScreen extends StatefulWidget {
  const OpacityScreen({super.key});

  @override
  State<OpacityScreen> createState() => _OpacityScreenState();
}

class _OpacityScreenState extends State<OpacityScreen> {
  final CounterController controller = Get.put(CounterController());

  @override
  Widget build(BuildContext context) {
    print('build');
    return Scaffold(
      appBar: AppBar(title: const Text('GetX Tutorials')),
      body: Column(
        children: [
          Text('Opacity using Slider'),
          SizedBox(height: 20,),
          Obx(
            () => Container(
              height: 200,
              width: 200,
              color: Colors.red.withOpacity(controller.opacity.value),
            ),
          ),
          Obx(
            () => Slider(
              value: controller.opacity.value,
              onChanged: (value) {
                print(value);
                controller.opacity.value = value;
              },
            ),
          ),
        ],
      ),
    );
  }
}
