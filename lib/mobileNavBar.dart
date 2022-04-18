import 'package:flutter/material.dart';
import 'package:portfolio_1/colors.dart';

import 'home/homeMobile.dart';

class MobileNavBar extends StatelessWidget implements PreferredSizeWidget {
  final double height;

  const MobileNavBar({
    Key? key,
    this.height = kToolbarHeight * 1,
  }) : super(key: key);

  @override
  Size get preferredSize => Size.fromHeight(height);

  @override
  Widget build(BuildContext context) {
    return
        DefaultTabController(
          length: 4,
          initialIndex: 0,
          child: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.blueGrey.shade900,
              bottom: TabBar(
                unselectedLabelColor: Colors.white70,
                labelColor: Colors.tealAccent,
                isScrollable: true,
                indicatorColor: Colors.tealAccent,
                labelPadding:
                    EdgeInsets.symmetric(horizontal: 16.0, vertical: 0.5),
                tabs: [
                  Tab(
                    icon: Icon(Icons.camera_alt_rounded),
                  ),
                  Tab(
                    child: Row(
                      children: <Widget>[
                        Text('CONVERSAS '),
                        Icon(
                          Icons.circle,
                          size: 19,
                        ),
                      ],
                    ),
                  ),
                  Tab(text: ('STATUS')),
                  Tab(text: ('CHAMADAS')),
                ],
              ),
              title: Text('Whatsapp', style: TextStyle(color: Colors.white70)),
              actions: <Widget>[
                IconButton(
                  icon: Icon(
                    Icons.search,
                    color: Colors.white70,
                  ),
                  onPressed: () {
                    // do something
                  },
                ),
                IconButton(
                    icon: Icon(
                      Icons.more_vert,
                      color: Colors.white70,
                    ),
                    onPressed: () {})
              ],
            ),

          ),
    );
  }
}
