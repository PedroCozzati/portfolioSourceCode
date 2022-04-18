import 'package:flutter/material.dart';
import 'package:portfolio_1/colors.dart';

import 'about/about_mobile.dart';
import 'home/home_mobile.dart';

class CustomNavBar extends StatefulWidget implements PreferredSizeWidget {
  final double height;

  const CustomNavBar({
    Key? key,
    this.height = kToolbarHeight * 1,
  }) : super(key: key);

  Size get preferredSize => Size.fromHeight(height);

  @override
  State<CustomNavBar> createState() => _CustomNavBarState();
}

class _CustomNavBarState extends State<CustomNavBar> {
  @override
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
                    setState(() {
                      selectColorIcon1 = CustomColors.thirdColor;
                    });
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => HomeMobile()));
                  },
                  icon: Icon(
                    Icons.home,
                    color: selectColorIcon1,
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
                padding: EdgeInsets.all(10.0),
                child: IconButton(
                    tooltip: "Sobre",
                    onPressed: () {
                      setState(() {
                        selectColorIcon3 = CustomColors.thirdColor;
                      });
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => AboutMobile()));
                    },
                    icon: Icon(

                      Icons.info,
                      color: selectColorIcon3,
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
