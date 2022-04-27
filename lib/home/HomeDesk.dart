import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class HomeDesk extends StatefulWidget {
  const HomeDesk({Key? key}) : super(key: key);

  @override
  _HomeDeskState createState() => _HomeDeskState();
}

class _HomeDeskState extends State<HomeDesk> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          height: double.infinity,
          width: double.infinity,
          color: Colors.black,
          child: Center(
              child: AutoSizeText(
            "Em desenvolvimento para desktop 👾",
            maxFontSize: 40,
            minFontSize: 20,
            style: TextStyle(color: Colors.white),
          )),
        ),
      ),
    );
  }
}
