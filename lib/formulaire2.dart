import 'package:flutter/material.dart';
import 'package:projet_flutter/main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'SocialPage.dart';
import 'animation.dart';
import 'package:projet_flutter/BackgroundImage.dart';
import 'package:projet_flutter/Variable.dart';
import 'package:projet_flutter/SocialPage.dart';
import 'package:projet_flutter/formulaire.dart';
import 'package:projet_flutter/infosPerso.dart';

class Formulaire1 extends StatelessWidget {
  //const Form({ Key? key }) : super(key: key);
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return (Container
          (
      padding: const EdgeInsets.only(left: 22, right: 22),
      alignment: Alignment.center,
      child: Form(
        key: _formKey,
        child: Column(
          children: [
            TextFormField(
              decoration: const InputDecoration(
                  hintText: "Votre Nom",
                  hintStyle: TextStyle(color: Colors.blueGrey),
                  labelText: "Nom",
                  labelStyle: TextStyle(fontSize: 25),
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                  suffixIcon:
                      Icon(Icons.person, color: Colors.blueGrey, size: 30)),
            ),
            const SizedBox(
              height: 40,
            ),
            TextFormField(
              decoration: const InputDecoration(
                  hintText: "Votre Prenom",
                  hintStyle: TextStyle(color: Colors.blueGrey),
                  labelText: "Prenom",
                  labelStyle: TextStyle(fontSize: 25),
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                  suffixIcon:
                      Icon(Icons.person, color: Colors.blueGrey, size: 30)),
            ),
            const SizedBox(
              height: 40,
            ),
            TextFormField(
              decoration: const InputDecoration(
                  hintText: "Votre Medecin",
                  hintStyle: TextStyle(color: Colors.blueGrey),
                  labelText: "Medecin",
                  labelStyle: TextStyle(fontSize: 25),
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                  suffixIcon:
                      Icon(Icons.person, color: Colors.blueGrey, size: 30)),
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.blueGrey,
                  shape: StadiumBorder(),
                  padding: EdgeInsets.all(12),
                ),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => InfosPerso(),
                      ));
                },
                child: const Text(
                  "Continuer",
                  style: TextStyle(
                    fontSize: 25,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
