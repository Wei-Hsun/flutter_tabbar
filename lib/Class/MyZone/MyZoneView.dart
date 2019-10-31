import 'package:flutter/material.dart';


class MyZoneView extends StatefulWidget {
  @override
  _MyZoneViewState createState() => _MyZoneViewState();
}

class _MyZoneViewState extends State<MyZoneView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('我的'),
        backgroundColor: Colors.green,
      ),
    );
  }
}