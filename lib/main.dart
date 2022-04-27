import 'package:flutter/material.dart';
import 'package:portfolio_1/home/home_main.dart';

import 'home/custom_splash.dart';

ImageCache? get imageCache => PaintingBinding.instance?.imageCache;

void _preCacheAllAssets(BuildContext context) {
  precacheImage(const AssetImage("assets/13.png"), context);
  precacheImage(const AssetImage("assets/c.png"), context);
  precacheImage(const AssetImage("assets/css.png"), context);
  precacheImage(const AssetImage("assets/flutter-logo.png"), context);
  precacheImage(const AssetImage("assets/git.png"), context);
  precacheImage(const AssetImage("assets/github.png"), context);
  precacheImage(const AssetImage("assets/html5.png"), context);
  precacheImage(const AssetImage("assets/java.png"), context);
  precacheImage(const AssetImage("assets/java-logo-3.png"), context);
  precacheImage(const AssetImage("assets/js.png"), context);
  precacheImage(const AssetImage("assets/linkedin.jpg"), context);
  precacheImage(const AssetImage("assets/logo1.png"), context);
  precacheImage(const AssetImage("assets/profile3.png"), context);
  precacheImage(const AssetImage("assets/py.png"), context);
}

void main() {
  imageCache;
  runApp(const MaterialApp(
    home: CustomSplash(),
  ));
}

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    _preCacheAllAssets(context);
    return const MaterialApp(
      //showPerformanceOverlay: true,
      home: HomePageMain(),
    );
  }
}
