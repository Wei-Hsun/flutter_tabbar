import 'package:flutter/material.dart';


class LiveView extends StatefulWidget {
  @override
  _LiveViewState createState() => _LiveViewState();
}

class _LiveViewState extends State<LiveView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('直播'),
        backgroundColor: Colors.green,
      ),
    );
  }
}