import 'package:flutter/material.dart';
import 'package:test_app/Class/Home/Views/BooksView.dart';
import 'package:test_app/Class/Home/Views/MoviesView.dart';
import 'package:test_app/Class/Home/Views/NewsView.dart';

class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> with SingleTickerProviderStateMixin,AutomaticKeepAliveClientMixin {

  TabController tabController;
  var index = 0;
  @override
  void initState() {
    // TODO: implement initState
    tabController = TabController(
      length: 3,
      vsync: this,
    );
    super.initState();

  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text('首页',style: TextStyle(fontSize: 22),),
        bottom: TabBar(
          indicatorColor: Colors.white,
          indicatorSize: TabBarIndicatorSize.label,
          unselectedLabelStyle: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w500,
          ),

          unselectedLabelColor: Colors.white54,

          labelColor: Colors.white,

          labelStyle: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w500
          ),
          controller: tabController,
          tabs: <Widget>[
             Tab(text: '电影',),
             Tab(text: '读书',),
             Tab(text: '新闻',),
          ],

        ),
        
      ),
      body: TabBarView(
        controller: tabController,
        children: <Widget>[
          MoviesView(),
          BooksView(),
          NewsView(),
        ],
      ),
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
    tabController.dispose();
    super.dispose();
  }

  @override
  bool get wantKeepAlive => true;
}