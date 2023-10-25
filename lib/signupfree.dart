import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUpFree extends StatefulWidget {
  const SignUpFree({super.key});

  @override
  State<SignUpFree> createState() => _SignUpFreeState();
}

class _SignUpFreeState extends State<SignUpFree> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: BackButton(color: Colors.white),
        title: Text(
          "Create account",
          style: GoogleFonts.montserrat(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 10),
              Text("What's your email?",
                  style: GoogleFonts.montserrat(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.white)),
              SizedBox(height: 10),
              Container(
                height: 60,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.white24,
                    borderRadius: BorderRadius.circular(8)),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    cursorColor: Colors.white,
                    decoration: InputDecoration(border: InputBorder.none),
                    style: GoogleFonts.montserrat(
                        fontWeight: FontWeight.bold, color: Colors.white),
                  ),
                ),
              ),
              SizedBox(height: 10),
              Text("You'll need to confirm this email later.",
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
