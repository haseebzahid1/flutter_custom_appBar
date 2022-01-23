import 'package:flutter/material.dart';
import 'package:haseeb_demo_app/widget/utils.dart';
import 'button_widget.dart';

class AlertDialogWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) => ButtonWidget(
    text: 'Alert Dialog',
    onClicked: (){
      print("Alert Dialog");
      Utils.showSnackBar(context, title: 'Alert Dialog');
      return showAlertDialog(context);
    },
  );

  void showAlertDialog(BuildContext context) => showDialog(
    context: context,
    builder:(BuildContext context) => AlertDialog(
      title: const Text('Sample Alert Dialog'),
      content: const Text(
        'This is an implementation of the AlertDialog widget in Flutter',
      ),
      actions: [
        ElevatedButton(
          onPressed: (){
            // Navigator.of(context).pop();
            const text = 'Close';
            final snackBar  = SnackBar(content: Text(text));
            ScaffoldMessenger.of(context)..removeCurrentSnackBar()..showSnackBar(snackBar);
            Navigator.pop(context);
          },
          child: const Text('Close'),
        )
      ],
    ),
  );
}
