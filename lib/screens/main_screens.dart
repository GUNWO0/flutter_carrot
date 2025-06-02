import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_carrot/screens/chatting/chatting_screen.dart';
import 'package:flutter_carrot/screens/home/home_screen.dart';
import 'package:flutter_carrot/screens/my_carrot/my_carrot_screen.dart';
import 'package:flutter_carrot/screens/near_me/near_me_screen.dart';
import 'package:flutter_carrot/screens/neighborhood_life/neighborhood_life_screen.dart';

class MainScreens extends StatefulWidget {
  @override
  State<MainScreens> createState() => _MainScreensState();
}

class _MainScreensState extends State<MainScreens> {
  int selectedIndex = 0;
  List<int> loadPages = [0]; // 크기는 1

  void selectBottomMenu(int index) {
    // List<int> pages = loadPages; // [0]

    if (!loadPages.contains(index)) {
      loadPages.add(index); // [0,1]
    }

    selectedIndex = index;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: selectedIndex,
        children: [
          loadPages.contains(0) ? const HomeScreen() : Container(),
          loadPages.contains(1) ? const NeighborhoodLifeScreen() : Container(),
          loadPages.contains(2) ? const NearMeScreen() : Container(),
          loadPages.contains(3) ? const ChattingScreen() : Container(),
          loadPages.contains(4) ? const MyCarrotScreen() : Container(),
        ],
      ),
      bottomNavigationBar: _bottomNavigationBar(),
    );
  }

  BottomNavigationBar _bottomNavigationBar() {
    return BottomNavigationBar(
      //showSelectedLabels: false,
      //showUnselectedLabels: false,
      type: BottomNavigationBarType.fixed,
      selectedFontSize: 12.0,
      unselectedFontSize: 12.0,
      selectedItemColor: Colors.orange,
      unselectedItemColor: Colors.black54,
      currentIndex: selectedIndex,
      onTap: selectBottomMenu,
      items: [
        BottomNavigationBarItem(label: "홈", icon: Icon(CupertinoIcons.home)),
        BottomNavigationBarItem(label: "동네 생활", icon: Icon(CupertinoIcons.square_on_square)),
        BottomNavigationBarItem(label: "내근처", icon: Icon(CupertinoIcons.placemark)),
        BottomNavigationBarItem(label: "채팅", icon: Icon(CupertinoIcons.chat_bubble_2)),
        BottomNavigationBarItem(label: "나의 당근", icon: Icon(CupertinoIcons.person)),
      ],
    );
  }
}
