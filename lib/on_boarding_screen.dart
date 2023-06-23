import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tour_ci/authentification.dart';
import 'package:tour_ci/dhomepage.dart';

import 'main.dart';

class OnBoardingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/background.png'),
                fit: BoxFit.fitHeight,
              ),
            ),
          ),
          Opacity(
            opacity: 0.95,
            child: Container(
              decoration: const BoxDecoration(color: Colors.white),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                'assets/caf.png',
                alignment: Alignment.centerLeft,
                height: 70.0,
              ),
              const SizedBox(
                height: 15,
              ),
              Padding(
                padding: EdgeInsets.only(left: 30.0),
                child: Text(
                  'Vivez la',
                  style: GoogleFonts.poppins(
                      fontSize: 40, fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 30.0),
                child: Text(
                  'CAN 2024',
                  style: GoogleFonts.poppins(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: Colors.orangeAccent,
                      height: 0.8),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Padding(
                padding: EdgeInsets.only(left: 30.0),
                child: Text(
                  'Dans une autre\ndimension.',
                  style: GoogleFonts.poppins(
                      fontSize: 25, fontWeight: FontWeight.bold, height: 1),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Padding(
                padding: EdgeInsets.only(left: 30.0),
                child: Text(
                  'TourCI vous offre\nl\'opportunité de vivre\nla CAN comme vous ne\nl\'avez jamais vécu...',
                  style: GoogleFonts.poppins(fontSize: 20),
                ),
              ),
              const SizedBox(
                height: 150,
              ),
              InkWell(
                onTap: () {
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                    builder: (BuildContext context) => Authentification(),
                  ));
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          decoration: const BoxDecoration(
                            color: Colors.orangeAccent,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(13.0),
                                bottomLeft: Radius.circular(13.0)),
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Center(
                              child: Text(
                                'Connexion',
                                style: GoogleFonts.poppins(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 1,
                      ),
                      Expanded(
                        child: InkWell(
                          onTap:  () {
                              Navigator.of(context).pushReplacement(MaterialPageRoute(
                                 builder: (BuildContext context) => Authentification(),
                              ));
                          },
                          child: Container(
                            decoration: const BoxDecoration(
                              color: Colors.orangeAccent,
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(13.0),
                                  bottomRight: Radius.circular(13.0)),
                            ),
                            child: Padding(
                              padding: EdgeInsets.all(10.0),
                              child: Center(
                                child: Text(
                                  'S\'inscrire',
                                  style: GoogleFonts.poppins(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 50,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
