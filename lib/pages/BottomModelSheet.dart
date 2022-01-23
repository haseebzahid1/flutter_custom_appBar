import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:haseeb_demo_app/widget/button_widget.dart';

class BottomModelSheet extends StatefulWidget {
   BottomModelSheet({Key? key}) : super(key: key);

  @override
  State<BottomModelSheet> createState() => _BottomModelSheetState();
}

class _BottomModelSheetState extends State<BottomModelSheet> {
  String _selectedItem = '';

  int _index = 0;

  @override
  Widget build(BuildContext context) {
    return   SafeArea(
      child: Scaffold(
        body:  Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:  [
            Container(width: double.infinity,),
            const Text("Detail page",style: TextStyle(fontSize: 28,color: Colors.white,fontWeight: FontWeight.w600),),
            const SizedBox(height: 20),
            buildButton(text:"Simple Dialog" ,onClicked: ()=>showModalBottomSheet(
                backgroundColor: Colors.red,
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.vertical(top: Radius.circular(20))
                ),
                isScrollControlled: true,
                context: context, builder: (BuildContext context){
              return  buildSheet();
            }
            )),

             const SizedBox(height: 20),
            buildButton(text:"scrollable sheet" ,onClicked: ()=>showModalBottomSheet(
              backgroundColor: Colors.red,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.vertical(top: Radius.circular(20))
              ),
              // isScrollControlled: true,,
                context: context, builder: (BuildContext context){
                return  buildSheet_3();
            }
            )),
            const SizedBox(height: 20),
            buildButton(
              text:'Full Screen Sheet',
              onClicked:() => showModalBottomSheet(
                  isScrollControlled: true,
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.vertical(top: Radius.circular(20))
                  ),
                  context: context,
                  builder: (BuildContext context){
                    return buildSheet_2();
                  }),
            ),
          ],
        ),
      ),
    );
  }





  Widget buildButton({
    required String text,
    required VoidCallback onClicked,
  }){
    return  ElevatedButton(
      style: ElevatedButton.styleFrom(
        shape: StadiumBorder(),
        padding: EdgeInsets.symmetric(horizontal: 30,vertical: 14),
      ),
      child: Text(
        text,
        style: TextStyle(fontSize: 20),
      ),
      onPressed: onClicked,
    );
  }


  //Simple bottom sheet start
  Widget buildSheet()=> Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
    color: Colors.white,
    ),
    padding: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
    child: Column(
      mainAxisSize:MainAxisSize.min,
      children: [
        Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Nunc mi ipsum faucibus vitae aliquet nec ullamcorper. Magna sit amet purus gravida. Amet risus nullam eget felis eget nunc lobortis mattis. Ornare suspendisse sed nisi lacus sed viverra tellus. Venenatis a condimentum vitae sapien pellentesque habitant morbi tristique. Sed lectus vestibulum mattis ullamcorper velit. Scelerisque viverra mauris in aliquam. Aenean pharetra magna ac ",style: TextStyle(fontSize: 18,height: 1.5),),
        SizedBox(height: 20,),
        ButtonWidget(text: "Close",onClicked: (){Navigator.of(context).pop();},)
      ],
    ),
  );Widget buildSheet_3()=> Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
    color: Colors.white,
    ),
    padding: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
    child: ListView(
      children: [
        Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Nunc mi ipsum faucibus vitae aliquet nec ullamcorper. Magna sit amet purus gravida. Amet risus nullam eget felis eget nunc lobortis mattis. Ornare suspendisse sed nisi lacus sed viverra tellus. Venenatis a condimentum vitae sapien pellentesque habitant morbi tristique. Sed lectus vestibulum mattis ullamcorper velit. Scelerisque viverra mauris in aliquam. Aenean pharetra magna ac ",style: TextStyle(fontSize: 18,height: 1.5),),
        SizedBox(height: 20,),
        Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Nunc mi ipsum faucibus vitae aliquet nec ullamcorper. Magna sit amet purus gravida. Amet risus nullam eget felis eget nunc lobortis mattis. Ornare suspendisse sed nisi lacus sed viverra tellus. Venenatis a condimentum vitae sapien pellentesque habitant morbi tristique. Sed lectus vestibulum mattis ullamcorper velit. Scelerisque viverra mauris in aliquam. Aenean pharetra magna ac ",style: TextStyle(fontSize: 18,height: 1.5),),
        SizedBox(height: 20,),
        ButtonWidget(text: "Close",onClicked: (){Navigator.of(context).pop();},)
      ],
    ),
  );
//Simple bottom sheet end


  Widget buildSheet_2()=> makeDismissible(
      child:DraggableScrollableSheet(
        initialChildSize: 0.9,
        minChildSize: 0.5,
        maxChildSize: 1,
        builder: (_, controller) => Container(
          color: Colors.white,
          padding: const EdgeInsets.all(16),
          child: ListView(
            controller: controller,
            children: [
              Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Nunc mi ipsum faucibus vitae aliquet nec ullamcorper. Magna sit amet purus gravida. Amet risus nullam eget felis eget nunc lobortis mattis. Ornare suspendisse sed nisi lacus sed viverra tellus. Venenatis a condimentum vitae sapien pellentesque habitant morbi tristique. Sed lectus vestibulum mattis ullamcorper velit. Scelerisque viverra mauris in aliquam. Aenean pharetra magna ac ",style: TextStyle(fontSize: 18,height: 1.5),),
              Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Nunc mi ipsum faucibus vitae aliquet nec ullamcorper. Magna sit amet purus gravida. Amet risus nullam eget felis eget nunc lobortis mattis. Ornare suspendisse sed nisi lacus sed viverra tellus. Venenatis a condimentum vitae sapien pellentesque habitant morbi tristique. Sed lectus vestibulum mattis ullamcorper velit. Scelerisque viverra mauris in aliquam. Aenean pharetra magna ac ",style: TextStyle(fontSize: 18,height: 1.5),),
              Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Nunc mi ipsum faucibus vitae aliquet nec ullamcorper. Magna sit amet purus gravida. Amet risus nullam eget felis eget nunc lobortis mattis. Ornare suspendisse sed nisi lacus sed viverra tellus. Venenatis a condimentum vitae sapien pellentesque habitant morbi tristique. Sed lectus vestibulum mattis ullamcorper velit. Scelerisque viverra mauris in aliquam. Aenean pharetra magna ac ",style: TextStyle(fontSize: 18,height: 1.5),),
            ],
          ),
        ),
      ));


  Widget makeDismissible({required Widget child}){
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: (){
        return Navigator.of(context).pop();

      },
      child: GestureDetector(onTap: (){},child: child,),
    );
  }
}
