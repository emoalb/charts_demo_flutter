import 'package:charts_demo_flutter/my_app_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CreateNewLabelForm extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _CreateNewLabelFormState();
  }
}

class _CreateNewLabelFormState extends State<CreateNewLabelForm> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    TextEditingController textEditingController;

    return Scaffold(
        appBar: MyAppBar(
            title: "Create new label", preferredSize: Size.fromHeight(50)),
        body: Form(
          key: _formKey,
          child: Flex(
            direction: Axis.vertical,
            children: [
              Expanded(flex: 2, child: Text("Enter name:")),
              Expanded(
                  flex: 6,
                  child: TextFormField(
                    keyboardType: TextInputType.text,
                    validator: (val) {
                      if (val.isEmpty) {
                        return "Text is empty";
                      }
                      return null;
                    },
                  )),
              Expanded(
                  flex: 2,
                  child: Padding(
                      padding: EdgeInsets.all(30),
                      child: ElevatedButton(
                        child: Text("Submit!"),
                        onPressed: () {
                          if (_formKey.currentState.validate()) {}
                        },
                      ))),
            ],
          ),
        ));
  }
}
