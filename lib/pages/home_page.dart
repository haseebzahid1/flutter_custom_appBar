import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key,}) : super(key: key);
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(
        decoration: const BoxDecoration(
        color: Colors.blueAccent,
          image: DecorationImage(
            alignment: Alignment.center,
            image: AssetImage("assets/images/pic 1.jpg"),fit:BoxFit.cover
          )
        ),
      ),
    );
  }
}