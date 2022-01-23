import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:haseeb_demo_app/pages/Custom_AppBar.dart';
import 'BottomModelSheet.dart';
import 'CustomDialog.dart';
import 'DetailPage.dart';
import 'home_page.dart';

class RootPage extends StatefulWidget {
   const RootPage({Key? key}) : super(key: key);
  @override
  State<RootPage> createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
   int currentIndex = 2;
   final GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();
   dynamic  appbar;
   final items = [
     const Icon(Icons.home,size:28.0),
     const Icon(Icons.search,size:28.0),
     const Icon(Icons.favorite,size:28.0),
     const Icon(Icons.settings,size:28.0),
     const Icon(Icons.person,size:28.0),

   ];
  @override
  Widget build(BuildContext context) {

    return  SafeArea(
      top: false,
      child: Scaffold(
        extendBody: true,
        body: getBody(),
        appBar: getAppBar(),
        bottomNavigationBar:Theme(
          data: Theme.of(context).copyWith(
            iconTheme: IconThemeData(color: Colors.white)
          ),
          child: CurvedNavigationBar(
            animationCurve: Curves.easeInOut,
            animationDuration:Duration(milliseconds: 300),
            key: _bottomNavigationKey,
            buttonBackgroundColor: Colors.purple,
            color: Colors.lightBlueAccent,
            backgroundColor: Colors.transparent,
            index: currentIndex,
            height: 60.0,
            items:items,
            onTap: (int value){
              setState(() {
                currentIndex =value;
              });
            },
          ),
        ) ,
      ),
    );
  }

   Widget getBody(){
     return IndexedStack(
       index: currentIndex,
       children:   [
         HomePage(),
         Custom_AppBar(),
         CustomDialog(),
         BottomModelSheet(),
         DetailPage(),
       ],
     );
   }

   PreferredSizeWidget? getAppBar() {
     switch (currentIndex) {
       case 0:
         appbar = null;
         break;
       case 1:
         return AppBar(
           elevation: 0,
           centerTitle: true,
           backgroundColor: Colors.blueAccent,
           title: const Text("CustomAppBar", style: TextStyle(color: Colors.white),
           ),
         );
         break;
       case 2:
         return AppBar(
           elevation: 0,
           centerTitle: true,
           backgroundColor: Colors.blueAccent,
           title: const Text("Detail Page", style: TextStyle(color: Colors.white),
           ),
         );
         break;
       case 3:
         return AppBar(
           elevation: 0,
           centerTitle: true,
           backgroundColor: Colors.orange,
           title: const Text(
             "CART", style: TextStyle(color: Colors.white),
           ),
         );
         break;
       case 4:
         return AppBar(
           elevation: 0,
           centerTitle: true,
           backgroundColor: Colors.purple,
           title: const Text("Map", style: TextStyle(color: Colors.white),
           ),
         );
         break;
       default:
     }
   }
}


