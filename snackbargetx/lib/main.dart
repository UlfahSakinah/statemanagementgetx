import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("SnackBar Example"),
        ),
        body: SnackBarExample(),
      ),
    );
  }
}

class SnackBarExample extends StatelessWidget {
  const SnackBarExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
              onPressed: () {
                Get.snackbar(
                  "Hallo",
                  "This is GetX SnackBar",
                  snackPosition: SnackPosition.BOTTOM,
                );
              },
              child: Text("Show GetX SnackBar")),
        ],
      ),
    );
  }
}
