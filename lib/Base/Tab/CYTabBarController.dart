import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test_app/Class/Home/HomeView.dart';
import 'package:test_app/Class/Discover/DisCoverView.dart';
import 'package:test_app/Class/Live/LiveView.dart';
import 'package:test_app/Class/MyZone/MyZoneView.dart';

class CYTabBarController extends StatefulWidget {
  @override
  _CYTabBarControllerState createState() => _CYTabBarControllerState();
}

class _CYTabBarControllerState extends State<CYTabBarController> with SingleTickerProviderStateMixin {

  TabController tabController;

  int currentIndex = 0;



  @override
  void initState() {
    // TODO: implement initState
    tabController = TabController(
      length: 4,
      vsync: this,
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          items: [BottomNavigationBarItem(icon: Icon(Icons.home),title: Text('首页')),
                   BottomNavigationBarItem(icon: Icon(Icons.live_tv),title: Text('直播')),
                   BottomNavigationBarItem(icon: Icon(Icons.find_in_page),title: Text('发现')),
                   BottomNavigationBarItem(icon: Icon(Icons.my_location),title: Text('我的')),],
          currentIndex: currentIndex,
          selectedFontSize: 13,
          unselectedFontSize: 13,
          selectedItemColor: Colors.green,
          onTap: (index) {
            setState(() {
              currentIndex = index;
            });
          },
        ),
        body: IndexedStack(
          children: <Widget>[
            HomeView(),
            LiveView(),
            DiscoverView(),
            MyZoneView(),
          ],
          index: currentIndex,
        ),
      ),
      
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
    tabController.dispose();
    super.dispose();
  }
}