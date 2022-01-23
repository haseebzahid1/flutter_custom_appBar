
import 'package:flutter/material.dart';
import 'package:haseeb_demo_app/widget/utils.dart';
import 'button_widget.dart';

class CustomDialogWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) => ButtonWidget(
    text: 'Custom Dialog',
    onClicked: (){
      print("Custom Dialog");
      Utils.showSnackBar(context, title: 'Custom Dialog');
      return showCustomDialog(context);
    },
  );

  void showCustomDialog(BuildContext context) => showDialog(
    context: context,
    barrierDismissible: false,
    builder:(BuildContext context) =>Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 12),
            const Text(
              'This is a Custom Dialog',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            SizedBox(height: 12),
            const Text(
              'You get more customisation freedom in this type of dialogs',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20),
            ),
            const SizedBox(height: 12),
            ElevatedButton(
              child: const Text('Close'),
              onPressed: () => Navigator.of(context).pop(),
            )
          ],
        ),
      ),
    ),
  );
}
