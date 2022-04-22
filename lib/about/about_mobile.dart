import 'package:flutter/material.dart';
import 'package:portfolio_1/about/text_column_about.dart';
import 'package:portfolio_1/contacts_bar.dart';

import '../colors.dart';
import '../custom_nav_bar.dart';

class AboutMobile extends StatelessWidget {
  const AboutMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomNavBar(
        showAboutIndicator: true,
        showHomeIndicator: false,
        showArticlesIndicator: false,
        showProjectsIndicator: false,
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
              const TextColumnAbout(),
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
                                "assets/logo1.png",
                                scale: 25,
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
                                "assets/logo1.png",
                                scale: 25,
                              ),
                              Image.asset(
                                "assets/logo1.png",
                                scale: 25,
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
                                "assets/logo1.png",
                                scale: 25,
                              ),
                              Image.asset(
                                "assets/logo1.png",
                                scale: 25,
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
                                "assets/logo1.png",
                                scale: 25,
                              ),
                              Image.asset(
                                "assets/logo1.png",
                                scale: 25,
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
              )),
            ],
          ),

          //Image.asset("profile.png",scale: 5,),child: Image.asset("profile.png",scale: 5,))
        ),
      ),
    );
  }
}
