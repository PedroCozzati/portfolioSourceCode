// ignore: import_of_legacy_library_into_null_safe
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:portfolio_1/common/responsiveSizes.dart';
import 'package:portfolio_1/projects/projectsCarousel.dart';

import '../common/colors.dart';

class ProjectColumn extends StatelessWidget {
  const ProjectColumn(
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
              height: ResponsiveSizes.rHeight(context) / 60,
            ),
            SizedBox(
              height: ResponsiveSizes.rHeight(context) / 15,
              width: ResponsiveSizes.rWidth(context) / 1,
              child: RichText(
                text: TextSpan(
                    text: subTitle,
                    style: TextStyle(
                      color: CustomColors.secondaryColor,
                      fontSize: ResponsiveSizes.rFont(context) / 30,
                    ),
                    children: <TextSpan>[
                      TextSpan(
                          text: colorText,
                          style: TextStyle(
                            color: CustomColors.thirdColor,
                            fontSize: ResponsiveSizes.rFont(context) / 18,
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
              height: ResponsiveSizes.rHeight(context) / 30,
            ),
            Center(
              child: FittedBox(
                fit: BoxFit.fitWidth,
                child: SizedBox(
                  height: ResponsiveSizes.rHeight(context)/2.4,
                  child: ProjectsCarousel(),
                ),
              ),
            ),
            SizedBox(
              height: ResponsiveSizes.rHeight(context) / 80,
            ),
          ],
        ),
      ],
    );
  }
}
