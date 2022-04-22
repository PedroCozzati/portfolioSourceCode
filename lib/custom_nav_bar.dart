import 'package:flutter/material.dart';
import 'package:portfolio_1/colors.dart';

import 'about/about_mobile.dart';
import 'home/home_mobile.dart';

class CustomNavBar extends StatefulWidget implements PreferredSizeWidget {
  final double height;
  final bool showHomeIndicator;
  final bool showAboutIndicator;
  final bool showProjectsIndicator;
  final bool showArticlesIndicator;

  const CustomNavBar({
    Key? key,
    this.height = kToolbarHeight * 1,
    required this.showHomeIndicator,
    required this.showAboutIndicator, required this.showProjectsIndicator, required this.showArticlesIndicator,
  }) : super(key: key);

  @override
  Size get preferredSize => Size.fromHeight(height);

  @override
  State<CustomNavBar> createState() => _CustomNavBarState();
}

class _CustomNavBarState extends State<CustomNavBar> {
  Color selectColorIcon1 = CustomColors.secondaryColor;
  Color selectColorIcon2 = CustomColors.secondaryColor;
  Color selectColorIcon3 = CustomColors.secondaryColor;
  Color selectColorIcon4 = CustomColors.secondaryColor;

  @override
  void initState() {
    // TODO: implement initState

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        decoration: BoxDecoration(
          color: CustomColors.mainColor,
        ),
        width: double.maxFinite,
        alignment: Alignment.center,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  IconButton(
                    tooltip: "Inicio",
                    onPressed: () {
                      setState(() {
                        selectColorIcon1 = CustomColors.thirdColor;
                      });
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const HomeMobile()));
                    },
                    icon: Icon(
                      Icons.home,
                      color: selectColorIcon1,
                    ),
                  ),
                  widget.showHomeIndicator
                      ? Container(
                          width: 25,
                          height: 5,
                          color: CustomColors.thirdColor,
                        )
                      : Container()
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  IconButton(
                      tooltip: "Projetos",
                      onPressed: () {
                        Navigator.defaultRouteName;
                      },
                      icon: Icon(
                        Icons.menu,
                        color: CustomColors.secondaryColor,
                      )),
                  widget.showProjectsIndicator
                      ? Container(
                    width: 25,
                    height: 5,
                    color: CustomColors.thirdColor,
                  )
                      : Container()
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  IconButton(
                      tooltip: "Sobre",
                      onPressed: () {
                        setState(() {
                          selectColorIcon3 = CustomColors.thirdColor;
                        });
                        Navigator.pushReplacement(context,
                            MaterialPageRoute(builder: (context) => const AboutMobile()));
                      },
                      icon: Icon(
                        Icons.info,
                        color: selectColorIcon3,
                      )),
                  widget.showAboutIndicator
                      ? Container(
                    width: 25,
                    height: 5,
                    color: CustomColors.thirdColor,
                  )
                      : Container()
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  IconButton(
                      tooltip: "Artigo",
                      onPressed: () {},
                      icon: Icon(
                        Icons.menu,
                        color: CustomColors.secondaryColor,
                      )),
                  widget.showArticlesIndicator
                      ? Container(
                    width: 25,
                    height: 5,
                    color: CustomColors.thirdColor,
                  )
                      : Container()
                ],
              ),
            ),
          ],
        ),
      )
    ]);
  }
}
