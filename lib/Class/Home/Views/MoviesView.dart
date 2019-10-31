import 'package:flutter/material.dart';

class MoviesView extends StatefulWidget {
  @override
  _MoviesViewState createState() => _MoviesViewState();
}

class _MoviesViewState extends State<MoviesView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text('电影',style: TextStyle(fontSize: 18)),
      ),
    );
  }
}