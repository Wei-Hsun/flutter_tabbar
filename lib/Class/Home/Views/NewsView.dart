import 'package:flutter/material.dart';

class NewsView extends StatefulWidget {
  @override
  _NewsViewState createState() => _NewsViewState();
}

class _NewsViewState extends State<NewsView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text('新闻',style: TextStyle(fontSize: 18)),
      ),
    );
  }
}