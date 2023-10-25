import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class Phone extends StatefulWidget {
  const Phone({super.key});

  @override
  State<Phone> createState() => _PhoneState();
}

class _PhoneState extends State<Phone> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: BackButton(color: Colors.white),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text("Enter phone number?",
                  style: GoogleFonts.montserrat(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.white)),
              SizedBox(height: 10),
              Container(
                  height: 140,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.white24,
                      borderRadius: BorderRadius.circular(8)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        height: 60,
                        width: double.infinity,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "India",
                                style: GoogleFonts.montserrat(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16),
                              ),
                            ),
                            Spacer(),
                            Padding(
                              padding: const EdgeInsets.all(25.0),
                              child: FaIcon(
                                FontAwesomeIcons.chevronRight,
                                color: Colors.white,
                              ),
                            )
                          ],
                        ),
                      ),
                      Divider(color: Colors.white24),
                      Container(
                          height: 60,
                          width: double.infinity,
                          child: ListTile(
                            leading: Container(
                              height: 60,
                              width: 50,
                              decoration: BoxDecoration(
                                  border: Border(
                                      right:
                                          BorderSide(color: Colors.white24))),
                              child: Center(
                                child: Text(
                                  "+91",
                                  style: GoogleFonts.montserrat(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                            title: TextFormField(
                              keyboardType: TextInputType.phone,
                              cursorColor: Colors.white,
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: "Phone number",
                                  hintStyle: GoogleFonts.montserrat(
                                      color: Colors.grey)),
                              style: GoogleFonts.montserrat(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          )),
                    ],
                  )),
              SizedBox(height: 25),
              Text("We'll send you a code by SMS to confirm your phone number.",
                  style: GoogleFonts.montserrat(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.white)),
              SizedBox(height: 25),
              Text("We may occasionally send you service-based messages.",
                  style: GoogleFonts.montserrat(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.white)),
              SizedBox(height: 25),
              Center(
                child: Container(
                  width: 100,
                  height: 50,
                  decoration: BoxDecoration(
                      color: Colors.white24,
                      borderRadius: BorderRadius.circular(20)),
                  child: Center(
                      child: Text(
                    "Next",
                    style: GoogleFonts.montserrat(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  )),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
