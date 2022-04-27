import 'package:flutter/material.dart';
import 'package:portfolio_1/home/HomeDesk.dart';
import 'package:portfolio_1/home/custom_splash.dart';
import 'package:portfolio_1/home/home_tab.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:splashscreen/splashscreen.dart';

import '../common/colors.dart';
import 'home_mobile.dart';

class HomePageMain extends StatefulWidget {
  const HomePageMain({Key? key}) : super(key: key);

  @override
  _HomePageMainState createState() => _HomePageMainState();
}

Widget _callSplashScreen(Widget afterSplash) {
  return SplashScreen(
      seconds: 7,
      navigateAfterSeconds: afterSplash,
      // title: Text(
      //   'Olá\n\n:)',
      //   style: TextStyle(
      //       fontWeight: FontWeight.bold,
      //       fontSize: 20.0,
      //       color: CustomColors.secondaryColor),
      // ),
      backgroundColor: CustomColors.mainColor,
      styleTextUnderTheLoader: const TextStyle(),
      photoSize: 100.0,
      loaderColor: CustomColors.thirdColor);
}

class _HomePageMainState extends State<HomePageMain> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      breakpoints: const ScreenBreakpoints(
          tablet: 600,
          desktop: 950,
          watch: 300
      ),
      mobile: const HomeMobile(),
      desktop: const HomeDesk(),
      tablet: const HomeTab(),
    );
    // tablet: HomeTab(),
    //
    //desktop: HomeMobile(),
  }
}
