// ignore: import_of_legacy_library_into_null_safe
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../colors.dart';
import 'about_strings.dart';

class TextColumnAbout extends StatelessWidget {
  const TextColumnAbout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
            crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Apenas algumas ',
                  style: TextStyle(fontSize: 20.0,color: CustomColors.secondaryColor,),
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 140,
                      height: 25,
                      child: AnimatedTextKit(animatedTexts: [
                          WavyAnimatedText(AboutStrings.titleAnimated,textStyle: TextStyle(
                                      letterSpacing: 2,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                      color: CustomColors.secondaryColor,
                                    )),
                        ],repeatForever: true,),
                    ),
                    Text(
                        AboutStrings.title,
                        style: TextStyle(
                            color: CustomColors.thirdColor,
                            fontSize: 20,
                            fontWeight: FontWeight.bold)),
                  ],
                ),
              ],
            ),
            // child: AnimatedTextKit(
            //   repeatForever: true,
            //   animatedTexts: [
            //     WavyAnimatedText(AboutStrings.titleAnimated,
            //         textAlign: TextAlign.left,
            //         textStyle: TextStyle(
            //           letterSpacing: 2,
            //           fontWeight: FontWeight.bold,
            //           fontSize: 20,
            //           color: CustomColors.secondaryColor,
            //         )),
            //   ],
            // ),

        const SizedBox(
          height: 50,
        ),
        SizedBox(
          height: 60,
          width: 280,
          child: Text(
            AboutStrings.subtitle,
            style: TextStyle(
              height: 1.5,
              fontSize: 12,
              fontWeight: FontWeight.bold,
              color: CustomColors.secondaryColor,
            ),
          ),
        ),
        SizedBox(
          height: 80,
          width: 280,
          child: Text(
            AboutStrings.sub2,
            style: TextStyle(
              height: 1.5,
              fontSize: 12,
              fontWeight: FontWeight.bold,
              color: CustomColors.secondaryColor,
            ),
          ),
        ),
        SizedBox(
          height: 40,
          width: 280,
          child: Text(
            AboutStrings.sub3,
            style: TextStyle(
              height: 1.5,
              fontSize: 12,
              fontWeight: FontWeight.bold,
              color: CustomColors.secondaryColor,
            ),
          ),
        ),
        SizedBox(
          height: 80,
          width: 280,
          child: Text(
            AboutStrings.sub4,
            style: TextStyle(
              height: 1.5,
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
