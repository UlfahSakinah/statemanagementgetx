import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Buttom Sheet Example"),
        ),
        body: ButtomSheetExample(),
      ),
    );
  }
}

class ButtomSheetExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
              onPressed: () {
                showModalBottomSheet(
                  context: context,
                  builder: (context) => Container(
                    padding: EdgeInsets.all(16),
                    child: Text("This is a normal buttom sheet"),
                  ),
                );
              },
              child: Text("Show Normal Bottom Sheet")),
          ElevatedButton(
              onPressed: () {
                Get.bottomSheet(Container(
                  color: Colors.white,
                  padding: EdgeInsets.all(16),
                  child: Text("This is a GetX buttom sheet"),
                ));
              },
              child: Text("Show GetX Buttom Sheet")),
        ],
      ),
    );
  }
}
