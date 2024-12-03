import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CounterController extends GetxController {
  var counter = 0.obs;

  void increment() {
    counter++;
  }
}

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp();

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("State Management Example"),
        ),
        body: Column(
          children: [
            StatelessExample(),
            StatefullExample(),
            GetExample(),
          ],
        ),
      ),
    );
  }
}

class StatelessExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("Hello from Stateless Widget"),
    );
  }
}

class StatefullExample extends StatefulWidget {
  @override
  State<StatefullExample> createState() => _StatefullExampleState();
}

class _StatefullExampleState extends State<StatefullExample> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('Counter: $counter'),
        ElevatedButton(
            onPressed: () {
              setState(() {
                counter++;
              });
            },
            child: Text("Increment Statefull"))
      ],
    );
  }
}

class GetExample extends StatelessWidget {
  final CounterController c = Get.put(CounterController());

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Obx(() => Text('Counter: ${c.counter}')),
        ElevatedButton(
            onPressed: c.increment, child: Text("Increment with GetX")),
      ],
    );
  }
}
