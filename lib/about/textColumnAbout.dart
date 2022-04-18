import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:portfolio_1/about/aboutStrings.dart';

import '../colors.dart';
class TextColumnAbout extends StatelessWidget {
  const TextColumnAbout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 25,
          width: 120,
          child: Align(
            alignment: Alignment.centerLeft,
            child: AnimatedTextKit(
              animatedTexts: [
                WavyAnimatedText(AboutStrings.title,
                    textAlign: TextAlign.left,
                    textStyle: TextStyle(
                      letterSpacing: 2,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: CustomColors.secondaryColor,
                    )),
              ],
            ),
          ),
        ),
        SizedBox(
          height: 20,
          width: 280,
          child: Text(
            AboutStrings.title,
            style: TextStyle(
              letterSpacing: 1.5,
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: CustomColors.secondaryColor,
            ),
          ),
        ),
        const SizedBox(
          height: 70,
        ),
        SizedBox(
          height: 80,
          width: 280,
          child: Text(
            AboutStrings.title,
            style: TextStyle(
              height: 1.5,
              fontSize: 12,
              fontWeight: FontWeight.bold,
              color: CustomColors.secondaryColor,
            ),
          ),
        ),
        SizedBox(
          height: 50,
          width: 150,
          child: Text(
            AboutStrings.title,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.bold,
              color: CustomColors.secondaryColor,
            ),
          ),
        ),
      ],
    );
  }
}
