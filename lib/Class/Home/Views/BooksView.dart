import 'package:flutter/material.dart';

class BooksView extends StatefulWidget {
  @override
  _BooksViewState createState() => _BooksViewState();
}

class _BooksViewState extends State<BooksView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text('读书',style: TextStyle(fontSize: 18)),
      ),
    );
  }
}