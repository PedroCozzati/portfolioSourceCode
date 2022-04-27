import 'package:flutter/material.dart';
import 'package:portfolio_1/about/about_mobile.dart';
import 'package:portfolio_1/home/HomeDesk.dart';
import 'package:portfolio_1/home/custom_splash.dart';
import 'package:portfolio_1/home/home_tab.dart';
import 'package:portfolio_1/projects/projects_mobile.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:splashscreen/splashscreen.dart';

import '../common/colors.dart';

class ProjectsPageMain extends StatefulWidget {
  const ProjectsPageMain({Key? key}) : super(key: key);

  @override
  _ProjectsPageMainState createState() => _ProjectsPageMainState();
}

class _ProjectsPageMainState extends State<ProjectsPageMain> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      breakpoints: const ScreenBreakpoints(
          tablet: 600,
          desktop: 950,
          watch: 300
      ),
      mobile: const ProjectsMobile(),
      desktop: const HomeDesk(),
      tablet: const HomeTab(),
    );
    // tablet: HomeTab(),
    //
    //desktop: HomeMobile(),
  }
}
