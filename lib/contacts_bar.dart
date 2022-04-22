import 'package:flutter/material.dart';
import 'package:url_launcher/link.dart';

class ContactsBar extends StatefulWidget {
  const ContactsBar({Key? key}) : super(key: key);

  @override
  _ContactsBarState createState() => _ContactsBarState();
}

class _ContactsBarState extends State<ContactsBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Link(
            uri: Uri.parse('https://www.linkedin.com/in/pedrocozzati/'),
            target: LinkTarget.blank,
            builder: (BuildContext ctx, FollowLink? openLink) {
              return FloatingActionButton(
                splashColor: Colors.white,
                  foregroundColor:Colors.white,
                  focusColor: Colors.white,
                  backgroundColor: Colors.white,
                  hoverColor: Colors.white,
                  tooltip: "Ir para o meu perfil no linkedin",
                  heroTag: 1,
                  onPressed: openLink,
                  child: const Image(
                    image: AssetImage("assets/linkedin.jpg"),
                    fit: BoxFit.fill,
                  ));

            },
          ),
          Link(
            uri: Uri.parse('https://github.com/PedroCozzati'),
            target: LinkTarget.blank,
            builder: (BuildContext ctx, FollowLink? openLink) {
              return FloatingActionButton(
                  foregroundColor:Colors.white,
                  focusColor: Colors.white,
                  backgroundColor: Colors.white,
                  hoverColor: Colors.white,
                  tooltip: "Ir para o meu perfil no github",
                  heroTag: 2,
                  onPressed: openLink,
                  child: const Image(
                    image: AssetImage("assets/github.png"),
                    fit: BoxFit.fill,
                  ));
            },
          ),
        ],
      ),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(50)),
      height: 30,
      width: 120,
    );
  }
}
