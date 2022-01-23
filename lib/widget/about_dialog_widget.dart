import 'package:flutter/material.dart';
import 'package:haseeb_demo_app/widget/utils.dart';
import 'button_widget.dart';

class AboutDialogWidget extends StatelessWidget {
  const AboutDialogWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ButtonWidget(
      text: 'About Dialog',
      onClicked: () {
          print("About Dialog");
          Utils.showSnackBar(context, title: 'About Dialog');
         return showAboutDialog(
            context: context,
            applicationIcon: FlutterLogo(),
            applicationVersion: '1.0.0',
            applicationName: 'Dialogs Example',
            applicationLegalese: 'Johannes',
        );
      },);
  }
}
