// ignore: import_of_legacy_library_into_null_safe
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../colors.dart';
import 'home_strings.dart';

class TextColumn extends StatelessWidget {
  const TextColumn({Key? key}) : super(key: key);

  MediaQueryData queryData(BuildContext context) {
    MediaQueryData mediaQuery = MediaQuery.of(context);
    return mediaQuery;
  }

  double rHeight (BuildContext context)=> queryData(context).size.height;
  double rWidth(BuildContext context)=> queryData(context).size.width;
  double rFont(BuildContext context)=> queryData(context).size.width;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: rHeight(context)/20,
          width: rWidth(context)/2.4,
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
                      fontSize: rFont(context)/15.5,
                      color: CustomColors.secondaryColor,
                    )),
              ],
            ),
          ),
        ),
        SizedBox(
          height: rHeight(context)/40,
          width: rWidth(context)/1,
          child: RichText(
            text: TextSpan(
                text: HomeStrings.title2,
                style: TextStyle(
                  color: CustomColors.secondaryColor,
                  fontSize: rFont(context)/18,
                ),
                children: <TextSpan>[
                  TextSpan(
                      text: HomeStrings.title3,
                      style: TextStyle(
                        color: CustomColors.thirdColor,
                        fontSize: rFont(context)/18,
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
       SizedBox(
          height: rHeight(context)/30,
        ),
        SizedBox(
          height: rHeight(context)/10,
          width: rWidth(context)/1,
          child: Text(
            HomeStrings.subTitle,
            style: TextStyle(
              height: rHeight(context)/600,
              fontSize: rFont(context)/30,
              fontWeight: FontWeight.bold,
              color: CustomColors.secondaryColor,
            ),
          ),
        ),

        SizedBox(
          height: rHeight(context)/15,
          width: rWidth(context)/2.5,
          child: Text(
            HomeStrings.languages,
            style: TextStyle(
              height: rHeight(context)/600,
              fontSize: rFont(context)/30,
              fontWeight: FontWeight.bold,
              color: CustomColors.secondaryColor,
            ),
          ),
        ),
      ],
    );
  }
}
