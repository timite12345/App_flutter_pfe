import 'package:flutter/material.dart';
import 'package:projet_flutter/infosPerso.dart';
import 'package:projet_flutter/main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:projet_flutter/password.dart';
import 'SocialPage.dart';
import 'animation.dart';
import 'package:projet_flutter/BackgroundImage.dart';
import 'package:projet_flutter/Variable.dart';
import 'package:projet_flutter/SocialPage.dart';
import 'package:projet_flutter/formulaire2.dart';
import 'package:projet_flutter/LoginPage1.dart';
import 'package:projet_flutter/formulaire.dart';

import "package:curved_navigation_bar/curved_navigation_bar.dart";

class BottomNavBar extends StatefulWidget {
  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _page = 0;
  GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();
  Widget? body;
  Widget navigation(int page) {
    Widget widget = HommePage();
    switch (page) {
      case 0:
        widget = HommePage();
        break;
      case 1:
        widget = Formulaire();
        break;
      case 2:
        widget = InfosPerso();
        break;
        
      default:
        widget =MotdePasse ();
        break;
    }
    return widget;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        key: _bottomNavigationKey,
        index: 0,
        height: 60.0,
        // ignore: prefer_const_literals_to_create_immutables
        items: <Widget>[
          Icon(Icons.home, size: 25),
          Icon(Icons.perm_identity, size: 25),
          Icon(Icons.settings, size: 25),
          Icon(Icons.contact_phone, size: 25),
          Icon(Icons.account_box, size: 25),
        ],
        color: Colors.blueAccent,
        buttonBackgroundColor: Colors.white,
        backgroundColor: Colors.white,
        animationCurve: Curves.easeInOut,
        animationDuration: Duration(milliseconds: 600),
        onTap: (index) {
          setState(() {
            body = navigation(index);
          });
        },
        letIndexChange: (index) => true,
      ),
      body: body == null ? HommePage() : body,
    );
  }
}
