import 'package:charts_demo_flutter/db_helper.dart';
import 'package:charts_demo_flutter/form_widget.dart';
import 'package:charts_demo_flutter/home_widget.dart';
import 'package:charts_demo_flutter/list_widget.dart';
import 'package:charts_demo_flutter/my_app_bar.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:charts_demo_flutter/chart.dart';
import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Charts Demo'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  initState()  {

    super.initState();

  }

  @override
  void dispose() {

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(routes: {
      '/': (context) => HomeWidget(),
      '/create': (context) => CreateNewLabelForm(),
      '/list':(context) => MyListWidget()
    }, initialRoute: '/');
  }
}
