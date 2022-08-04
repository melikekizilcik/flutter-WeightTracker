import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:weight_tracker_app/graph_screen.dart';
import 'package:weight_tracker_app/history_screen.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentTab = 0;
  Widget _currentScreen = GraphScreen();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: AppBar(title: Text("TRACK YOUR WEIGHT")),
      body: _currentScreen,
      floatingActionButton: const FloatingActionButton(
        child: Icon(Icons.add),
        backgroundColor: Colors.black,
        onPressed: null,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: animatedBottomNavigationBar(),
    );
  }

  AnimatedBottomNavigationBar animatedBottomNavigationBar() {
    return AnimatedBottomNavigationBar(
      activeColor: Colors.white,
      inactiveColor: Colors.grey,
      backgroundColor: Colors.black,
      icons: const [Icons.show_chart, Icons.history],
      iconSize: 30,
      height: Get.height / 12,
      gapLocation: GapLocation.center,
      notchSmoothness: NotchSmoothness.verySmoothEdge,
      activeIndex: _currentTab,
      onTap: (int) {
        setState(() {
          _currentTab = int;
          _currentScreen = (int == 0) ? GraphScreen() : HistoryScreen();
        });
      },
      //other params
    );
  }
}
