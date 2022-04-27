import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio_1/common/TextColumn.dart';
import 'package:portfolio_1/common/colors.dart';
import 'package:portfolio_1/common/contacts_bar.dart';
import 'package:portfolio_1/common/responsiveSizes.dart';
import 'package:portfolio_1/home/home_strings.dart';

import '../common/custom_nav_bar.dart';

class NoScalingAnimation extends FloatingActionButtonAnimator {
  @override
  Offset getOffset(
      {required Offset begin, required Offset end, required double progress}) {
    return end;
  }

  @override
  Animation<double> getRotationAnimation({required Animation<double> parent}) {
    return Tween<double>(begin: 0.0, end: 0.0).animate(parent);
  }

  @override
  Animation<double> getScaleAnimation({required Animation<double> parent}) {
    return Tween<double>(begin: 0.0, end: 0.0).animate(parent);
  }
}

class HomeMobile extends StatefulWidget {
  const HomeMobile({Key? key}) : super(key: key);

  @override
  _HomeMobileState createState() => _HomeMobileState();
}

class _HomeMobileState extends State<HomeMobile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonAnimator: NoScalingAnimation(),
      appBar: const CustomNavBar(
        showHomeIndicator: true,
        showAboutIndicator: false,
        showProjectsIndicator: false,
        showArticlesIndicator: false,
      ),
      body: Container(
        color: CustomColors.mainColor,
        height: double.maxFinite,
        width: double.maxFinite,
        child: Padding(
          padding: const EdgeInsets.all(45.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextColumn(
                title: HomeStrings.title,
                subTitle: HomeStrings.title2,
                colorText: HomeStrings.title3,
                body1: HomeStrings.subTitle,
                body4: HomeStrings.languages,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    height: ResponsiveSizes.rHeight(context)/3.5,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        SizedBox(
                          width: ResponsiveSizes.rWidth(context)/3.5,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Image.asset(
                                "assets/logo1.png",
                                width: ResponsiveSizes.rWidth(context)/10,
                                height: ResponsiveSizes.rWidth(context)/10,
                              ),
                              Image.asset(
                                "assets/flutter-logo.png",
                                width: ResponsiveSizes.rWidth(context)/10,
                                height: ResponsiveSizes.rWidth(context)/10,
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          width: ResponsiveSizes.rWidth(context)/3.5,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Image.asset(
                                "assets/html5.png",
                                width: ResponsiveSizes.rWidth(context)/10,
                                height: ResponsiveSizes.rWidth(context)/10,
                              ),
                              Image.asset(
                                "assets/c.png",
                                width: ResponsiveSizes.rWidth(context)/10,
                                height: ResponsiveSizes.rWidth(context)/10,
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          width: ResponsiveSizes.rWidth(context)/3.5,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Image.asset(
                                "assets/js.png",
                                width: ResponsiveSizes.rWidth(context)/10,
                                height: ResponsiveSizes.rWidth(context)/10,
                              ),
                              Image.asset(
                                "assets/css.png",
                                width: ResponsiveSizes.rWidth(context)/10,
                                height: ResponsiveSizes.rWidth(context)/10,
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          width: ResponsiveSizes.rWidth(context)/3.5,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Image.asset(
                                "assets/py.png",
                                width: ResponsiveSizes.rWidth(context)/10,
                                height: ResponsiveSizes.rWidth(context)/10,
                              ),
                              Image.asset(
                                "assets/java-logo-3.png",
                                width: ResponsiveSizes.rWidth(context)/10,
                                height: ResponsiveSizes.rWidth(context)/10,
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Column(
                    children: [
                      CircleAvatar(
                        radius: ResponsiveSizes.rWidth(context)/7.5,
                        backgroundColor: CustomColors.thirdColor,
                        child: CircleAvatar(
                          radius: ResponsiveSizes.rWidth(context)/8,
                          backgroundImage:
                              const ExactAssetImage("assets/profile3.png"),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const ContactsBar(),
                    ],
                  ),
                  //Image.asset("profile.png",scale: 5,),child: Image.asset("profile.png",scale: 5,))
                ],
              ),
              Center(
                  child: SizedBox(
                height: ResponsiveSizes.rHeight(context)/20,
                width: ResponsiveSizes.rWidth(context)/1,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Center(
                      child:  Text(
                        "Feito com ",
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white,fontSize: ResponsiveSizes.rFont(context)/30),
                      ),
                    ),
                    Image.asset("assets/flutter-logo.png"),
                  ],
                ),
              ))
            ],
          ),
        ),
      ),
    );
  }
}
