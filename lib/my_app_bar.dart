import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'form_widget.dart';
import 'home_widget.dart';

class MyAppBar extends StatelessWidget with PreferredSizeWidget {
  @override
  final Size preferredSize;

  MyAppBar({this.title, this.preferredSize});

  String title = "App";

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(this.title),
      actions: [
        IconButton(
            icon: Icon(Icons.home),
            onPressed: () => {Navigator.pushNamed(context, '/')}),
        IconButton(
            icon: Icon(Icons.create_new_folder),
            onPressed: () => {Navigator.pushNamed(context, '/create')}),
        IconButton(
          icon: Icon(Icons.list_alt),
          onPressed: () => {Navigator.pushNamed(context, '/list')},
        )
      ],
    );
  }
}
