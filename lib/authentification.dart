import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'verification_authentification.dart';

class authentification extends StatelessWidget {
  const authentification({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: 'route',
      routes: {
        'route1': (context) => verification_authentification(),
        //'route second': (context) => const (),
      },
      home: (Authentification()),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Authentification extends StatelessWidget {
  const Authentification({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 250, top: 20),
            child: Container(
              height: 130,
              width: 130,
              child: Image.asset(
                'assets/icone mobile.png',
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30),
            child: Container(
              child: Text(
                'Vous y êtes',
                style: GoogleFonts.poppins(fontSize: 50,fontWeight:FontWeight.bold),
              ),
            ),
          ),
          Container(
            child: Padding(
              padding: const EdgeInsets.only(left: 30),
              child: Text('presque!',
                  style: GoogleFonts.poppins(fontSize: 50,fontWeight:FontWeight.bold,color: Colors.orangeAccent),),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30),
            child: Text(
                'Connectez-vous et vivez\nla CAN 2024 avec votre\napplication TourCI',
                style: GoogleFonts.poppins(fontSize: 20,fontWeight:FontWeight.bold),
          ),),
          Padding(
              padding: EdgeInsets.only(top: 50, left: 25, right: 25),
              child: TextField(
                style: TextStyle(
                    color: Color.fromARGB(255, 0, 0, 0),
                    fontSize: 22,
                    fontWeight: FontWeight.w600),
                keyboardType: TextInputType.phone,
                maxLines: 1,
                maxLength: 10,
                decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.phone_android_sharp,
                      color: Color.fromARGB(255, 0, 0, 0),
                    ),
                    labelText: 'Entrez votre numéro de telephone',
                    floatingLabelStyle: TextStyle(color: Colors.orangeAccent),
                    prefixText: '+225  ',
                    hintText: '07 07 07 07 07',
                    hintStyle: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                        fontSize: 22),
                    prefixStyle: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w800,
                        fontSize: 27),
                    labelStyle: TextStyle(
                        color: Color.fromARGB(255, 0, 0, 0).withOpacity(.8)),
                    enabledBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Color.fromARGB(255, 0, 0, 0)),
                        borderRadius: BorderRadius.circular(15)),
                    focusedBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Color.fromARGB(255, 0, 0, 0)),
                        borderRadius: BorderRadius.circular(20))),
              )),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: RichText(
                text: TextSpan(children: [
              TextSpan(
                  text: 'Nous vous envrons ',
                  style: TextStyle(color: Colors.black)),
              TextSpan(
                  text: 'un code de validation ',
                  style: TextStyle(
                      color: Colors.orangeAccent, fontWeight: FontWeight.bold)),
              TextSpan(
                  text: 'sur le numero que vous avez etrer',
                  style: TextStyle(color: Colors.black)),
            ])),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 50, right: 50, top: 30),
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.orangeAccent,
                  borderRadius: BorderRadius.circular(10)),
              child: Center(
                child: TextButton(
                  onPressed: () {
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                    builder: (BuildContext context) => Verification_authentification(),
                  ));
                  },
                  child: InkWell(
                    onTap:() {
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                                 builder: (BuildContext context) => Verification_authentification(),
                              ));
                    },
                    child: Text(
                      'OBTENIR MON CODE DE VERIFICATION',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontWeight: FontWeight.w800),
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
