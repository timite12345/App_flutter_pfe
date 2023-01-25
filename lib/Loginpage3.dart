import 'package:flutter/material.dart';
import 'package:projet_flutter/main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'SocialPage.dart';
import 'animation.dart';
import 'package:projet_flutter/BackgroundImage.dart';
import 'package:projet_flutter/Variable.dart';
import 'package:projet_flutter/SocialPage.dart';
import 'package:projet_flutter/Loginpage3.dart';
import 'package:projet_flutter/LoginPage1.dart';
import 'package:projet_flutter/formulaire.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          automaticallyImplyLeading: true,
          backgroundColor: Colors.white.withOpacity(0),
          leading: IconButton(
            icon: Icon(
              Icons.close,
              color: Colors.black,
              size: 30,
            ), 
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.symmetric(
                  vertical: 40,
                  horizontal: 30,
                ),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      DelayedAnimation(
                        duration: 1000,
                        children: Container(
                          child: Text(
                            "Connectez Votre Adresse Email",
                            style: GoogleFonts.poppins(
                              color: d_red,
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      DelayedAnimation(
                        duration: 1000,
                        children: Container(
                          height: 300,
                          child: Text(
                            "de texte pour réaliser un livre spécimen de polices de texte."
                            "Il n'a pas fait que survivre ci",
                            style: GoogleFonts.poppins(
                              color: Colors.grey,
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      DelayedAnimation(
                          duration: 3500,
                          children: Container(
                              margin: const EdgeInsets.symmetric(
                                vertical: 14,
                                horizontal: 40,
                              ),
                              child: Column(
                                children: [
                                  ElevatedButton(
                                      onPressed: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) => LoginPage(),
                                          ),
                                        );
                                      },
                                      style: ElevatedButton.styleFrom(
                                        shape: StadiumBorder(),
                                        primary: d_red,
                                        padding: const EdgeInsets.all(13),
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          SizedBox(height: 20),
                                          Text(
                                            "Confirmer",
                                            style: GoogleFonts.poppins(
                                              color: Colors.white,
                                              fontSize: 15,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                        ],
                                      )
                                      ),
                                  SizedBox(height: 10),
                                
                                ],
                              )
                              )
                              ),
                    ]),
              )
            ],
          ),
        )
        );
  }
}

