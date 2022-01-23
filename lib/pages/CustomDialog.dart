import 'package:flutter/material.dart';
import 'package:haseeb_demo_app/widget/about_dialog_widget.dart';
import 'package:haseeb_demo_app/widget/alert_widget.dart';
import 'package:haseeb_demo_app/widget/custom_dialog_widget.dart';
import 'package:haseeb_demo_app/widget/simple_dialog_widget.dart';

class CustomDialog extends StatelessWidget {
  const CustomDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
  final Size size  = MediaQuery.of(context).size;
    return  Scaffold(
      body: Container(
        width: size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:  [
            SimpleDialogWidget(),
            SizedBox(height: 20,),
            AlertDialogWidget(),
            SizedBox(height: 20,),
            CustomDialogWidget(),
            SizedBox(height: 20,),
            AboutDialogWidget(),
          ],
        ),
      ),
    );
  }
}
