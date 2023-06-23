import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/otp_text_field.dart';
import 'package:otp_text_field/style.dart';

import 'main.dart';

class verification_authentification extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Verification_authentification(),
    );
  }
}

class Verification_authentification extends StatefulWidget {
  Verification_authentification({Key? key}) : super(key: key);

  @override
  _Verification_authentificationState createState() =>
      _Verification_authentificationState();
}

class _Verification_authentificationState
    extends State<Verification_authentification> {
  OtpFieldController otpController = OtpFieldController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 250, top: 60),
              child: Container(
                height: 130,
                width: 130,
                child: Image.asset(
                  'assets/icone mobile.png',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Text(
                'Veuillez saisir le code que vous avez reçu par SMS',
                style: GoogleFonts.poppins(fontSize: 24,fontWeight:FontWeight.w600),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(35.0),
              child: Center(
                child: OTPTextField(
                  controller: otpController,
                  length: 5,
                  width: MediaQuery.of(context).size.width,
                  textFieldAlignment: MainAxisAlignment.spaceAround,
                  fieldWidth: 45,
                  fieldStyle: FieldStyle.underline,
                  outlineBorderRadius: 11,
                  style: GoogleFonts.poppins(fontSize: 27,fontWeight:FontWeight.bold),
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                  builder: (BuildContext context) => HomePage(),
                ));
              },
              child: Container(
                height: 50,
                width: 150,
                child: Padding(
                  padding: EdgeInsets.all(14.0),
                  child: Center(
                    child: Text(
                      'Verify',
                      style: GoogleFonts.poppins(fontSize: 20,fontWeight:FontWeight.w800),
                    ),
                  ),
                ),
                decoration: BoxDecoration(
                    color: Colors.orangeAccent,
                    borderRadius: BorderRadius.circular(10)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 40, left: 25),
              child: Row(
                children: [
                  RichText(
                      text: TextSpan(children: [
                    TextSpan(
                        text: "Code de vérification non recu?",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 19,
                            fontWeight: FontWeight.w200)),
                    TextSpan(
                        text: '\nRenvoyez le code ',
                        style: TextStyle(
                            color: Colors.orangeAccent,
                            fontWeight: FontWeight.w600,
                            fontSize: 18)),
                  ])),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
