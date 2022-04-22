import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'home_mobile.dart';

class HomePageMain extends StatefulWidget {
  const HomePageMain({Key? key}) : super(key: key);

  @override
  _HomePageMainState createState() => _HomePageMainState();
}

class _HomePageMainState extends State<HomePageMain> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: const HomeMobile(),
    );
    // tablet: HomeTab(),
    //
    //desktop: HomeMobile(),
  }
}
