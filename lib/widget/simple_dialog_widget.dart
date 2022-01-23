import 'package:flutter/material.dart';
import 'package:haseeb_demo_app/widget/utils.dart';

import 'button_widget.dart';

class SimpleDialogWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) => ButtonWidget(
    text: 'Simple Dialog',
    onClicked: (){
      print("Simple Dialog");
      Utils.showSnackBar(context, title: 'Simple Dialog');
      return showSimpleDialog(context);
    },
  );

  void showSimpleDialog(BuildContext context) => showDialog(
    context: context,
    builder:(BuildContext context)=> SimpleDialog(
      title: const Text('Select Option'),
      children: <Widget>[
        SimpleDialogOption(
          padding: EdgeInsets.symmetric(horizontal: 24, vertical: 20),
          onPressed: () {
            Utils.showSnackBar(context, title: 'Selected Option 1');
            Navigator.pop(context);
          },
          child: Text('Option 1', style: TextStyle(fontSize: 16)),
        ),
        SimpleDialogOption(
          padding: EdgeInsets.symmetric(horizontal: 24, vertical: 20),
          child: Text('Option 2', style: TextStyle(fontSize: 16)),
          onPressed: () {
            Utils.showSnackBar(context, title: 'Selected Option 2');
            Navigator.pop(context);
          },
        ),
        SimpleDialogOption(
          padding: EdgeInsets.symmetric(horizontal: 24, vertical: 20),
          child: Text('Option 3', style: TextStyle(fontSize: 16)),
          onPressed: () {
            Utils.showSnackBar(context, title: 'Selected Option 3');
            Navigator.pop(context);
          },
        ),
      ],
    ),
  );
}
