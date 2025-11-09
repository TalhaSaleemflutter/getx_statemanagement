import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_statemanagement/view_models/controller/counter/counter_view_model.dart';

// Counter Controller
class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});
  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  // Register the controller with GetX
  final CounterController controller = Get.put(CounterController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GetX Tutorials'),
      ),
      body: Center(
        child: Obx(
          () => Text(
            controller.counter.toString(),
            style: const TextStyle(fontSize: 60),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          controller.increamentCounter();
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
