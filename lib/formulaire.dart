// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:projet_flutter/main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'SocialPage.dart';
import 'animation.dart';
import 'package:projet_flutter/BackgroundImage.dart';
import 'package:projet_flutter/Variable.dart';
import 'package:projet_flutter/SocialPage.dart';
import 'package:projet_flutter/formulaire2.dart';
import 'package:projet_flutter/NavBar.dart';

class Formulaire extends StatelessWidget {
  const Formulaire({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        automaticallyImplyLeading: true,
        backgroundColor: Colors.white.withOpacity(0),
        // leading: const  IconButton(

        //   icon: Icon( Icons.arrow_back,
        //     color: Colors.black,
        //     size: 30,
        //   ),onPressed:(){

        //   },),

        centerTitle: true,
        title: Container(
          margin: EdgeInsets.only(top: 10),
          child: Text("Sign Up",
              style: GoogleFonts.ubuntu(
                color: Colors.blueGrey,
                fontWeight: FontWeight.bold,
                fontSize: 20,
              )),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            Center(
              child: Text("Créer Compte",
                  style: GoogleFonts.ubuntu(
                      color: Colors.black,
                      fontSize: 30,
                      fontWeight: FontWeight.bold)),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "Remplir le formulaire avec vos informations personnelle",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
                color: Colors.blueGrey,
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Formulaire1(),
            // BottomNavBar(),
          ],
        ),
      ),
    );
  }
}
