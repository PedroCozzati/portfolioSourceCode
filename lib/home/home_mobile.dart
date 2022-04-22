import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:portfolio_1/colors.dart';
import 'package:portfolio_1/contacts_bar.dart';
import 'package:portfolio_1/home/text_column.dart';

import '../custom_nav_bar.dart';

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
              const TextColumn(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    height: 230,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        SizedBox(
                          width: 120,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Image.asset(
                                "assets/logo1.png",
                                scale: 25,
                              ),
                              Image.asset(
                                "assets/flutter-logo.png",
                                scale: 15,
                              )
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        SizedBox(
                          width: 120,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Image.asset(
                                "assets/html5.png",
                                scale: 55,
                              ),
                              Image.asset(
                                "assets/c.png",
                                scale: 30,
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 120,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Image.asset(
                                "assets/js.png",
                                scale: 20,
                              ),
                              Image.asset(
                                "assets/css.png",
                                scale: 50,
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 120,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Image.asset(
                                "assets/py.png",
                                scale: 12,
                              ),
                              Image.asset(
                                "assets/java-logo-3.png",
                                scale: 65,
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
                        radius: 60,
                        backgroundColor: CustomColors.thirdColor,
                        child: const CircleAvatar(
                          radius: 55,
                          backgroundImage:
                              ExactAssetImage("assets/profile3.png", scale: 10),
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
                height: 20,
                width: 100,
                child: Row(
                  children: [
                    const Text(
                      "Feito com ",
                      style: TextStyle(color: Colors.white),
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
