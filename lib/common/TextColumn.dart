// ignore: import_of_legacy_library_into_null_safe
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:portfolio_1/common/responsiveSizes.dart';
import 'package:auto_size_text/auto_size_text.dart';

import '../common/colors.dart';

class TextColumn extends StatelessWidget {
  const TextColumn(
      {Key? key,
      required this.title,
      this.subTitle,
      this.colorText,
      this.body1,
      this.body2,
      this.body3,
      this.body4})
      : super(key: key);
  final String title;
  final String? subTitle;
  final String? colorText;
  final String? body1;
  final String? body2;
  final String? body3;
  final String? body4;

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
                title,
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
              child: AutoSizeText.rich(
                   TextSpan(
                      text: subTitle,
                      style: TextStyle(
                        color: CustomColors.secondaryColor,
                        fontSize: ResponsiveSizes.rFont(context) / 18,
                      ),
                      children: <TextSpan>[
                        TextSpan(
                            text: colorText,
                            style: TextStyle(
                              color: CustomColors.thirdColor,
                              fontWeight: FontWeight.bold,
                            )),
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
              height: ResponsiveSizes.rHeight(context) / 45,
            ),
            SizedBox(
              height: ResponsiveSizes.rHeight(context) / 15,
              width: ResponsiveSizes.rWidth(context) / 1,
              child:  AutoSizeText(
                  body1 ?? "",
                  maxLines: 3,
                  minFontSize: 5,
                  maxFontSize: 28,
                  style: TextStyle(
                    height: ResponsiveSizes.rHeight(context) / 600,
                    fontWeight: FontWeight.bold,
                    color: CustomColors.secondaryColor,
                  ),
                ),
              ),
            SizedBox(
              height: ResponsiveSizes.rHeight(context) / 60,
            ),
            SizedBox(
              height: ResponsiveSizes.rHeight(context) / 15,
              width: ResponsiveSizes.rWidth(context) / 1,
              child: AutoSizeText(
                body2 ?? "",
                maxLines: 3,
                minFontSize: 5,
                maxFontSize: 28,
                style: TextStyle(
                  height: ResponsiveSizes.rHeight(context) / 600,
                  fontWeight: FontWeight.bold,
                  color: CustomColors.secondaryColor,
                ),
              ),
            ),
            SizedBox(
              height: ResponsiveSizes.rHeight(context) / 60,
            ),
            SizedBox(
              height: ResponsiveSizes.rHeight(context) / 20,
              width: ResponsiveSizes.rWidth(context) / 1,
              child: AutoSizeText(
                body3 ?? "",
                maxLines: 3,
                minFontSize: 5,
                maxFontSize: 28,
                style: TextStyle(
                  height: ResponsiveSizes.rHeight(context) / 600,
                  fontWeight: FontWeight.bold,
                  color: CustomColors.secondaryColor,
                ),
              ),
            ),
            SizedBox(
              height: ResponsiveSizes.rHeight(context) / 60,
            ),
            SizedBox(
              height: ResponsiveSizes.rHeight(context) / 20,
              width: ResponsiveSizes.rWidth(context) / 2.5,
              child: AutoSizeText(
                body4 ?? "",
                maxLines: 3,
                minFontSize: 5,
                maxFontSize: 28,
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
