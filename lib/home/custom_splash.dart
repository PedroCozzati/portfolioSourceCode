import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:portfolio_1/common/colors.dart';
import 'package:portfolio_1/home/home_main.dart';

import '../common/responsiveSizes.dart';
import 'home_strings.dart';

class CustomSplash extends StatefulWidget {
  const CustomSplash({Key? key}) : super(key: key);

  @override
  State<CustomSplash> createState() => _CustomSplashState();

}


class _CustomSplashState extends State<CustomSplash> {

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 1)).then((_){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>const HomePageMain()));
    });
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: CustomColors.mainColor,
        body: Padding(
          padding: EdgeInsets.symmetric(vertical: ResponsiveSizes.rHeight(context) / 15,horizontal: 10),
          child: SizedBox(
            child: DefaultTextStyle(
              style: TextStyle(
                fontSize: ResponsiveSizes.rFont(context) / 25,
              ),
              child: Align(
                alignment: Alignment.topLeft,
                child: AnimatedTextKit(
                  totalRepeatCount: 0,
                  isRepeatingAnimation: false,
                  animatedTexts: [
                    TypewriterAnimatedText(
                      HomeStrings.splashText,
                      curve: Curves.easeIn,
                      speed: const Duration(milliseconds: 100),
                      textStyle: TextStyle(
                          fontSize: ResponsiveSizes.rFont(context) / 25,
                          fontWeight: FontWeight.bold,
                          color: CustomColors.secondaryColor),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
