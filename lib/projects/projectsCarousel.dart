import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/link.dart';

import '../common/responsiveSizes.dart';

class ProjectsCarousel extends StatefulWidget {
  const ProjectsCarousel({Key? key}) : super(key: key);

  @override
  _ProjectsCarouselState createState() => _ProjectsCarouselState();
}

List carouselImage = ["1.png", "7676767.jpg", "github.png"];
List links = [
  "https://github.com/PedroCozzati/flutter_whatsapp",
  "https://github.com/PedroCozzati/pokedexFlutter",
  "Em breve...",
];
List texts = [
  "Flutter Whatsapp",
  "Pokedex",
  "+ em breve"
];

class _ProjectsCarouselState extends State<ProjectsCarousel> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: ResponsiveSizes.rHeight(context) / 1,
        width: ResponsiveSizes.rWidth(context) / 2.7,
        child: CarouselSlider.builder(
          itemCount: carouselImage.length,
          itemBuilder: (BuildContext context, int itemIndex,
              int pageView) =>
              Link(
                  uri: Uri.parse(
                      links[itemIndex]),
                  target: LinkTarget.blank,
                  builder:
                      (BuildContext ctx, FollowLink? openLink) {
                    return InkWell(
                      onTap: openLink,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            child: Image.asset(
                              carouselImage[itemIndex],
                              fit: BoxFit.cover,
                              width: double.infinity,
                            ),
                          ),
                          Container(child: Text(texts[itemIndex],style: TextStyle(color: Colors.white,fontSize: 14),)),
                        ],
                      ),
                    );
                  }),
          options: CarouselOptions(
            height: ResponsiveSizes.rHeight(context) / 1,
            autoPlay: false,
            enlargeCenterPage: true,
            initialPage: 0,
          ),
        ),
      ),
    );
  }
}
