import 'package:flutter/material.dart';
import 'package:flutter_carrot/screens/my_carrot/components/card_icon_menu.dart';
import 'package:flutter_carrot/screens/my_carrot/components/my_carrot_header.dart';

import '../../models/icon_menu.dart';

class MyCarrotScreen extends StatelessWidget {
  const MyCarrotScreen();
  @override
  Widget build(BuildContext context) {
    print("MyCarrotScreen build");
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: const Text('나의 당근'),
        actions: [
          IconButton(icon: const Icon(Icons.settings), onPressed: () {}),
        ],
        bottom: const PreferredSize(
          preferredSize: Size.fromHeight(0.5),
          child: Divider(thickness: 0.5, height: 0.5, color: Colors.grey),
        ),
      ),
      body: ListView(
        children: [
          MyCarrotHeader(),
          const SizedBox(height: 8.0),
          CardIconMenu(iconMenuList: iconMenu1),
          const SizedBox(height: 8.0),
          CardIconMenu(iconMenuList: iconMenu2),
          const SizedBox(height: 8.0),
          CardIconMenu(iconMenuList: iconMenu3),
        ],
      ),
    );
  }
}
