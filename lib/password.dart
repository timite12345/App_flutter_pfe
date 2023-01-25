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
import 'package:projet_flutter/formulaire2.dart';
import 'package:projet_flutter/infosPerso.dart';

class MotdePasse extends StatelessWidget {
 // const MotdePasse({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        automaticallyImplyLeading: true,
        backgroundColor:Colors.white.withOpacity(0),
      ),
      body: SingleChildScrollView(
        child:Column(
          children: [
            SizedBox(height:50,),
               Center(
            
              child: Text("Valider Compte ",
                  style: GoogleFonts.ubuntu(
                      color: Colors.black,
                      fontSize: 30,
                      fontWeight: FontWeight.bold)
                      ),
            ),
             const SizedBox(
              height: 20,
            ),
             const Text(
              "Valider Votre Mot de Passe",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
                color: Colors.blueGrey,
              ),
              ), 
              const SizedBox(
              height: 50,
            ),
            Container(
               padding: const EdgeInsets.only(left: 22, right: 22),
      alignment: Alignment.center,
      child: Form(
        //key: _formKey,
        child: Column(
          children: [
            TextFormField(
              decoration: const InputDecoration(
                  hintText: "Votre Mot de Passe ",
                  hintStyle: TextStyle(color: Colors.blueGrey),
                  labelText: "Mot de Passe",
                  labelStyle: TextStyle(fontSize: 25),
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                  suffixIcon:
                      Icon(
                        Icons.password_sharp,
                      color: Colors.blueGrey, size: 30
                      )
                      ),
            ),
            const SizedBox(
              height: 40,
            ),
            TextFormField(
              decoration: const InputDecoration(
                  hintText: "Confirmer Mot de Passe",
                  hintStyle: TextStyle(color: Colors.blueGrey),
                  labelText: "Confirmation",
                  labelStyle: TextStyle(fontSize: 25),
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(20)
                      ),
                  ),
                  suffixIcon:
                      Icon(
                        Icons.password_sharp, 
                        color: Colors.blueGrey, size: 30
                        )
                        ),
            ),
            const SizedBox(
              height: 30,
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
            )
          
          ],)
         ,),
      
    );
  }
}
