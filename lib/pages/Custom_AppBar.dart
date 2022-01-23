import 'package:flutter/material.dart';

class Custom_AppBar extends StatelessWidget {
  const Custom_AppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("App Bar"),
          //centerTitle: true,
          leading: IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () {},
          ),
          actions: [
            IconButton(
              icon: const Icon(Icons.notifications_none),
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(Icons.search),
              onPressed: () {},
            )
          ],
          //backgroundColor: Colors.purple,
          flexibleSpace: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.purple, Colors.red],
                begin: Alignment.bottomRight,
                end: Alignment.topLeft,
              ),
            ),
          ),
          bottom: const TabBar(
            //isScrollable: true,
            indicatorColor: Colors.white,
            indicatorWeight: 5,
            tabs: [
              Tab(icon: Icon(Icons.home), text: 'Home'),
              Tab(icon: Icon(Icons.star), text: 'Feed'),
              Tab(icon: Icon(Icons.face), text: 'Profile'),
              Tab(icon: Icon(Icons.settings), text: 'Settings'),
            ],
          ),
          elevation: 20,
          titleSpacing: 20,
        ),
        body: TabBarView(
          children: [
            buildPage('Home Page'),
            buildPage('Feed Page'),
            buildPage('Profile Page'),
            buildPage('Settings Page'),
          ],
        ),
      ),
    );
  }

  Widget buildPage(String text) => Center(
    child: Text(
      text,
      style: TextStyle(fontSize: 28),
    ),
  );
}
