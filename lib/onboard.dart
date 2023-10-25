import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:spotify_clone/login.dart';
import 'package:spotify_clone/phonenum.dart';
import 'package:spotify_clone/signupfree.dart';

class Onboard extends StatefulWidget {
  const Onboard({Key? key}) : super(key: key);

  @override
  State<Onboard> createState() => _OnboardState();
}

class _OnboardState extends State<Onboard> {
  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.light,
      child: Scaffold(
        body: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Colors.black87, Colors.black],
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: SafeArea(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(height: 30),
                    FaIcon(
                      FontAwesomeIcons.spotify,
                      size: 100,
                      color: Colors.white,
                    ),
                    SizedBox(height: 30),
                    Text("Millions of songs. \n Free on Spotify.",
                        style: GoogleFonts.montserrat(
                            fontSize: 32,
                            fontWeight: FontWeight.bold,
                            color: Colors.white)),
                    SizedBox(height: 100),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => SignUpFree()));
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(top: 10, bottom: 10),
                        child: Container(
                          height: 60,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              color: HexColor("#1DB954"),
                              borderRadius: BorderRadius.circular(50)),
                          child: Center(
                              child: Text(
                            "Sign up free",
                            style: GoogleFonts.montserrat(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 16),
                          )),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) => Phone()));
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(top: 10, bottom: 10),
                        child: Container(
                            height: 60,
                            width: double.infinity,
                            decoration: BoxDecoration(
                                color: Colors.transparent,
                                border: Border.all(color: Colors.grey),
                                borderRadius: BorderRadius.circular(50)),
                            child: ListTile(
                              leading: FaIcon(
                                FontAwesomeIcons.mobileScreen,
                                color: Colors.white,
                                size: 25,
                              ),
                              title: Text(
                                "Continue with phone\n number",
                                style: GoogleFonts.montserrat(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold),
                                textAlign: TextAlign.center,
                              ),
                            )),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10, bottom: 10),
                      child: Container(
                          height: 60,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              color: Colors.transparent,
                              border: Border.all(color: Colors.grey),
                              borderRadius: BorderRadius.circular(50)),
                          child: ListTile(
                            leading: FaIcon(
                              FontAwesomeIcons.google,
                              color: Colors.white,
                              size: 25,
                            ),
                            title: Text(
                              "Continue with Google",
                              style: GoogleFonts.montserrat(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold),
                              textAlign: TextAlign.center,
                            ),
                          )),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10, bottom: 10),
                      child: Container(
                          height: 60,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              color: Colors.transparent,
                              border: Border.all(color: Colors.grey),
                              borderRadius: BorderRadius.circular(50)),
                          child: ListTile(
                            leading: FaIcon(
                              FontAwesomeIcons.facebook,
                              color: Colors.white,
                              size: 25,
                            ),
                            title: Text(
                              "Continue with Facebook",
                              style: GoogleFonts.montserrat(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold),
                              textAlign: TextAlign.center,
                            ),
                          )),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) => Login()));
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text(
                          "Log In",
                          style: GoogleFonts.montserrat(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 16),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
