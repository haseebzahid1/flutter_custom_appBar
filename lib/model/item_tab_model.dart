import 'package:flutter/material.dart';

class ItemsTab {
  final double size;
  final IconData icon;
  ItemsTab({
    required this.size,
    required this.icon,
  });
}

List<ItemsTab> itemsTab = [
  ItemsTab(icon: Icons.home,size:28.0),
  ItemsTab(icon: Icons.search,size:28.0),
  ItemsTab(icon: Icons.favorite,size:28.0),
  ItemsTab(icon: Icons.settings,size:28.0),
  ItemsTab(icon: Icons.person,size:28.0),

];

List<ItemsTab> itemsTab_2 = [
  ItemsTab(icon: Icons.home,size:28.0),
  ItemsTab(icon: Icons.location_on,size:28.0),
  ItemsTab(icon: Icons.person,size:28.0),
  ItemsTab(icon: Icons.local_mall,size:28.0),
  ItemsTab(icon: Icons.more_horiz,size:28.0),

];