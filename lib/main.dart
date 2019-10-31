import 'package:flutter/material.dart';
import 'Base/Tab/CYTabBarController.dart';

void main () => runApp(LiveApp());

class LiveApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CYTabBarController();
  }
}