import 'package:flutter/material.dart';
import 'package:portfolio_1/home/home_main.dart';

void main() {
  runApp(const MainPage());
}

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      //showPerformanceOverlay: true,
      home: HomePageMain(),
    );
  }
}
