// ignore: import_of_legacy_library_into_null_safe
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:portfolio_1/common/responsiveSizes.dart';

import '../common/colors.dart';
import 'home_strings.dart';

class TextColumnold extends StatelessWidget {
  const TextColumnold({Key? key}) : super(key: key);

  Widget _typeWriter(BuildContext context) {
    return SizedBox(
      child: DefaultTextStyle(
        style: TextStyle(
          fontSize: ResponsiveSizes.rFont(context) / 15,
        ),
        child: Align(
          alignment: Alignment.centerLeft,
          child: AnimatedTextKit(
            repeatForever: true,
            animatedTexts: [
              TypewriterAnimatedText(
                'Bem vindo!',
                curve: Curves.easeIn,
                speed: const Duration(milliseconds: 100),
                textStyle: TextStyle(
                    fontSize: ResponsiveSizes.rFont(context) / 15,
                    fontWeight: FontWeight.bold,
                    color: CustomColors.secondaryColor),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: ResponsiveSizes.rHeight(context) / 22,
              width: ResponsiveSizes.rWidth(context) / 1,
              child: _typeWriter(context),
            ),
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: ResponsiveSizes.rHeight(context) / 15,
              width: ResponsiveSizes.rWidth(context) / 1,
              child: RichText(
                text: TextSpan(
                    text: HomeStrings.title2,
                    style: TextStyle(
                      color: CustomColors.secondaryColor,
                      fontSize: ResponsiveSizes.rFont(context) / 18,
                    ),
                    children: <TextSpan>[
                      TextSpan(
                          text: HomeStrings.title3,
                          style: TextStyle(
                              color: CustomColors.thirdColor,
                              fontSize: ResponsiveSizes.rFont(context) / 18,
                              fontWeight: FontWeight.bold,)),
                      // child: Text(
                      //   HomeStrings.title2,
                      //   style: TextStyle(
                      //     letterSpacing: 1.5,
                      //     fontSize: 20,
                      //     fontWeight: FontWeight.bold,
                      //     color: CustomColors.secondaryColor,
                      //   ),
                      // ),
                    ]),
              ),
            ),
            SizedBox(
              height: ResponsiveSizes.rHeight(context) / 30,
            ),
            SizedBox(
              height: ResponsiveSizes.rHeight(context) / 10,
              width: ResponsiveSizes.rWidth(context) / 1,
              child: Text(
                HomeStrings.subTitle,
                style: TextStyle(
                  height: ResponsiveSizes.rHeight(context) / 600,
                  fontSize: ResponsiveSizes.rFont(context) / 30,
                  fontWeight: FontWeight.bold,
                  color: CustomColors.secondaryColor,
                ),
              ),
            ),
            SizedBox(
              height: ResponsiveSizes.rHeight(context) / 15,
              width: ResponsiveSizes.rWidth(context) / 2.5,
              child: Text(
                HomeStrings.languages,
                style: TextStyle(
                  height: ResponsiveSizes.rHeight(context) / 600,
                  fontSize: ResponsiveSizes.rFont(context) / 30,
                  fontWeight: FontWeight.bold,
                  color: CustomColors.secondaryColor,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
