import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio_1/common/TextColumn.dart';
import 'package:portfolio_1/common/colors.dart';
import 'package:portfolio_1/common/contacts_bar.dart';
import 'package:portfolio_1/common/responsiveSizes.dart';
import 'package:portfolio_1/home/home_strings.dart';
import 'package:portfolio_1/projects/projectColumn.dart';
import 'package:portfolio_1/projects/projects_strings.dart';
import 'package:url_launcher/link.dart';

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

class ProjectsMobile extends StatefulWidget {
  const ProjectsMobile({Key? key}) : super(key: key);

  @override
  _ProjectsMobileState createState() => _ProjectsMobileState();
}

class _ProjectsMobileState extends State<ProjectsMobile> {
  final String _url5 = "https://github.com/PedroCozzati/flutter_whatsapp";
  final String _errorImage =
      "https://i.ytimg.com/vi/z8wrRRR7_qU/maxresdefault.jpg";
  List carouselImage = ["github.png", "", ""];
  List links = [
    "https://github.com/PedroCozzati/flutter_whatsapp",
    "https://github.com/PedroCozzati/flutter_whatsapp",
    "https://github.com/PedroCozzati/flutter_whatsapp",
    "https://github.com/PedroCozzati/flutter_whatsapp",
    "https://github.com/PedroCozzati/flutter_whatsapp",
  ];

  @override
  void initState() {
    super.initState();
  }

  // bool _getUrlValid(String url) {
  //   bool _isUrlValid = AnyLinkPreview.isValidLink(
  //     url,
  //     protocols: ['http', 'https'],
  //     hostWhitelist: ['https://youtube.com/'],
  //     hostBlacklist: ['https://facebook.com/'],
  //   );
  //   return _isUrlValid;
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonAnimator: NoScalingAnimation(),
      appBar: const CustomNavBar(
        showHomeIndicator: false,
        showAboutIndicator: false,
        showProjectsIndicator: true,
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
              ProjectColumn(
                title: ProjectsStrings.titleAnimated,
                subTitle: ProjectsStrings.subtitle,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
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
