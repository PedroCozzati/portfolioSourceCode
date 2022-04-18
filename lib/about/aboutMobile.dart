import 'package:flutter/material.dart';
import 'package:portfolio_1/about/textColumnAbout.dart';
import 'package:portfolio_1/contactsBar.dart';

import '../colors.dart';
import '../customNavBar.dart';
import '../home/textColumn.dart';

class AboutMobile extends StatelessWidget {
  const AboutMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomNavBar(),
      body: Container(
        color: CustomColors.mainColor,
        height: double.maxFinite,
        width: double.maxFinite,
        child: Padding(
          padding: const EdgeInsets.all(45.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const TextColumnAbout(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 225,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          width: 120,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Image.asset(
                                "logo1.png",
                                scale: 25,
                              ),
                              Image.asset(
                                "logo1.png",
                                scale: 25,
                              )
                            ],
                          ),
                        ),
                        Container(
                          width: 120,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Image.asset(
                                "logo1.png",
                                scale: 25,
                              ),
                              Image.asset(
                                "logo1.png",
                                scale: 25,
                              )
                            ],
                          ),
                        ),
                        Container(
                          width: 120,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Image.asset(
                                "logo1.png",
                                scale: 25,
                              ),
                              Image.asset(
                                "logo1.png",
                                scale: 25,
                              )
                            ],
                          ),
                        ),
                        Container(
                          width: 120,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Image.asset(
                                "logo1.png",
                                scale: 25,
                              ),
                              Image.asset(
                                "logo1.png",
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
                        child:  const CircleAvatar(
                          radius: 55,
                          backgroundImage: ExactAssetImage("profile3.png",scale: 10),

                        ),
                      ),
                      SizedBox(height: 20,),
                      ContactsBar(),
                    ],
                  ),
                  //Image.asset("profile.png",scale: 5,),child: Image.asset("profile.png",scale: 5,))
                ],
              )
            ],
          ),

                  //Image.asset("profile.png",scale: 5,),child: Image.asset("profile.png",scale: 5,))

        ),
      ),
    );
  }
}
