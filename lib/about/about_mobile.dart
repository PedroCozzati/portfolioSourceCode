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
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight * 1), // Set this height
        child: Container(
          color: Colors.black,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomNavBar(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(height: 5,width: 50,color: CustomColors.mainColor,),
                  Container(height: 5,width: 50,color: CustomColors.mainColor,),
                  Container(height: 5,width: 50,color: CustomColors.mainColor,),
                  Container(height: 5,width: 50,color: CustomColors.thirdColor,),
                  Container(height: 5,width: 50,color: CustomColors.mainColor,),
                  Container(height: 5,width: 50,color: CustomColors.mainColor,),
                ],
              ),
            ],
          ),
        ),
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
                  Container(
                    height: 230,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
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
                        Container(
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
                        Container(
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
                        Container(
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
                        child:  const CircleAvatar(
                          radius: 55,
                          backgroundImage: ExactAssetImage("assets/profile3.png",scale: 10),

                        ),
                      ),
                      SizedBox(height: 20,),
                      ContactsBar(),
                    ],
                  ),
                  //Image.asset("profile.png",scale: 5,),child: Image.asset("profile.png",scale: 5,))
                ],
              ),
              Center(child: Container(height: 20,width: 100,
                child: Row(
                  children: [
                    Text("Feito com ",style: TextStyle(color: Colors.white),),
                    Image.asset("assets/flutter-logo.png"),
                  ],
                ),)),
            ],

          ),

                  //Image.asset("profile.png",scale: 5,),child: Image.asset("profile.png",scale: 5,))

        ),
      ),
    );
  }
}
