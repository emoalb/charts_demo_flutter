import 'package:charts_demo_flutter/my_app_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        title: "Home Root",
        preferredSize: Size.fromHeight(50),
      ),
      body:Center(child: Flex(
        direction: Axis.vertical,

        children: [
          Expanded(
            flex: 5,
            child: Padding(
              padding: EdgeInsets.all(5),
              child: FittedBox(
                  child: Icon(Icons.flip_camera_android, color: Colors.green),
                  fit: BoxFit.fill),
            ),
          ),
          Expanded(
              flex: 5,
              child:Padding(padding:EdgeInsets.all(5),child: Text(
                "Welcome to my app!!!",
              ))),
        ],
      ),
    ));
  }
}
