import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class HomeTab extends StatefulWidget {
  const HomeTab({Key? key}) : super(key: key);

  @override
  _HomeTabState createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          height: double.infinity,
          width: double.infinity,
          color: Colors.black,
          child: const Center(
              child: AutoSizeText(
                "Em desenvolvimento para tablet 👾",
                maxFontSize: 40,
                minFontSize: 20,
                style: TextStyle(color: Colors.white),
              )),
        ),
      ),
    );
  }
}
