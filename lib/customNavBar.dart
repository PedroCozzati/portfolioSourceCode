import 'package:flutter/material.dart';
import 'package:portfolio_1/colors.dart';

import 'about/aboutMobile.dart';
import 'home/homeMobile.dart';

class CustomNavBar extends StatelessWidget implements PreferredSizeWidget {
  final double height;

  const CustomNavBar({
    Key? key,
    this.height = kToolbarHeight * 1,
  }) : super(key: key);

  @override
  Size get preferredSize => Size.fromHeight(height);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            color: CustomColors.mainColor,
          ),
          width: double.maxFinite,
          alignment: Alignment.center,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: IconButton(
                  tooltip: "Inicio",
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => HomeMobile()));
                  },
                  icon: Icon(
                    Icons.home,
                    color: CustomColors.secondaryColor,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: IconButton(
                    tooltip: "Projetos",
                    onPressed: () {
                      Navigator.defaultRouteName;
                    },
                    icon: Icon(
                      Icons.menu,
                      color: CustomColors.secondaryColor,
                    )),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: IconButton(
                    tooltip: "Sobre",
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => AboutMobile()));
                    },
                    icon: Icon(
                      Icons.info,
                      color: CustomColors.secondaryColor,
                    )),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: IconButton(
                    tooltip: "Artigo",
                    onPressed: () {},
                    icon: Icon(
                      Icons.menu,
                      color: CustomColors.secondaryColor,
                    )),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
