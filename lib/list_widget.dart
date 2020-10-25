import 'package:charts_demo_flutter/my_app_bar.dart';
import 'package:flutter/material.dart';

class MyListWidget extends StatelessWidget {
  final List<String> myList = ["one", "two"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: MyAppBar(
          title: "List View",
          preferredSize: Size.fromHeight(50),
        ),
        body: ListView.builder(
          itemCount: myList.length,
          itemBuilder: (context, index) {
            return Text(myList[index]);
          },
        ));
  }
}
