import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio_1/common/responsiveSizes.dart';
import 'package:url_launcher/link.dart';

class ContactsBar extends StatefulWidget {
  const ContactsBar({Key? key}) : super(key: key);

  @override
  _ContactsBarState createState() => _ContactsBarState();
}

class _ContactsBarState extends State<ContactsBar> {
  @override
  Widget build(BuildContext context) {
    return FittedBox(
      fit: BoxFit.fitWidth,
      child: Container(
        height: ResponsiveSizes.rHeight(context) / 22,
        width: ResponsiveSizes.rWidth(context) / 4,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Link(
              uri: Uri.parse('https://www.linkedin.com/in/pedrocozzati/'),
              target: LinkTarget.blank,
              builder: (BuildContext ctx, FollowLink? openLink) {
                return Container(
                  height: ResponsiveSizes.rHeight(context) / 30,
                  child: GestureDetector(
                  onTap: openLink,
                  child: Image(
                    image: AssetImage("assets/linkedin.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),);
              },
            ),
            Link(
              uri: Uri.parse('https://github.com/PedroCozzati'),
              target: LinkTarget.blank,
              builder: (BuildContext ctx, FollowLink? openLink) {
                return Container(
                  height: ResponsiveSizes.rHeight(context) / 30,
                  child: GestureDetector(
                      onTap: openLink,
                      child: Image(
                        image: AssetImage("assets/github.png"),
                        fit: BoxFit.cover,
                      )
                  ),
                );
              },
            ),
          ],
        ),
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(50)),
      ),
    );
  }
}
