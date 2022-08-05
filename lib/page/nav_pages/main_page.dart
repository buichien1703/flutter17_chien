import 'package:app_music/page/nav_pages/bar_item_page.dart';
import 'package:app_music/page/nav_pages/home_page.dart';
import 'package:app_music/page/nav_pages/my_page.dart';
import 'package:app_music/page/nav_pages/search_page.dart';
import 'package:app_music/themes/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List pages = [
    HomePage(),
    BarItemPage(),
    SearchPage(),
    MyPage(),

  ];
  int currentIndex = 0;
  void onTap(int index) {
    setState((){
      currentIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTap,
        currentIndex: currentIndex,
        selectedItemColor: AppColors.mainColor,
        unselectedItemColor: AppColors.mainColor.withOpacity(0.2),
        showSelectedLabels: false,
        showUnselectedLabels: false,
        elevation: 0,
        items: [
          BottomNavigationBarItem(label:("Home"),icon: Icon(Icons.home)),
          BottomNavigationBarItem(label:("Bar"),icon: Icon(Icons.bar_chart_sharp)),
          BottomNavigationBarItem(label:("Search"),icon: Icon(Icons.saved_search)),
          BottomNavigationBarItem(label:("Person"),icon: Icon(Icons.person))
        ],
      ),
    );
  }
}
