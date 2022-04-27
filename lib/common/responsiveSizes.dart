import 'package:flutter/material.dart';

class ResponsiveSizes{

  static MediaQueryData queryData(BuildContext context) {
    MediaQueryData mediaQuery = MediaQuery.of(context);
    return mediaQuery;
  }

  static double rHeight(BuildContext context) => queryData(context).size.height;

  static double rWidth(BuildContext context) => queryData(context).size.width;

  static double rFont(BuildContext context) => queryData(context).size.width;
}