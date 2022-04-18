import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

import '../colors.dart';
import 'homeStrings.dart';

class TextColumn extends StatelessWidget {
  const TextColumn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 25,
          width: 135,
          child: Align(
            alignment: Alignment.centerLeft,
            child: AnimatedTextKit(
              repeatForever: true,
              animatedTexts: [
                WavyAnimatedText(HomeStrings.title,
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
          child: RichText(
            text: TextSpan(
                text: HomeStrings.title2,
                style: TextStyle(
                  color: CustomColors.secondaryColor,
                  fontSize: 20,
                ),
                children: <TextSpan>[
                  TextSpan(
                      text: HomeStrings.title3,
                      style: TextStyle(
                        color: CustomColors.thirdColor,
                        fontSize: 20,
                        fontWeight: FontWeight.bold
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
        const SizedBox(
          height: 50,
        ),
        SizedBox(
          height: 80,
          width: 280,
          child: Text(
            HomeStrings.subTitle,
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
            HomeStrings.languages,
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
