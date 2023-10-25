import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:spotify_clone/home.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: BackButton(color: Colors.white),
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Email or username",
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
                  cursorColor: Colors.white,
                  decoration: InputDecoration(border: InputBorder.none),
                  style: GoogleFonts.montserrat(
                      fontWeight: FontWeight.bold, color: Colors.white),
                ),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Text("Password",
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
                  obscureText: true,
                  cursorColor: Colors.white,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                  ),
                  style: GoogleFonts.montserrat(
                      fontWeight: FontWeight.bold, color: Colors.white),
                ),
              ),
            ),
            SizedBox(height: 30),
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Home()));
              },
              child: Center(
                child: Container(
                  width: 100,
                  height: 50,
                  decoration: BoxDecoration(
                      color: Colors.white24,
                      borderRadius: BorderRadius.circular(20)),
                  child: Center(
                      child: Text(
                    "Log in",
                    style: GoogleFonts.montserrat(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  )),
                ),
              ),
            ),
            SizedBox(height: 30),
            Center(
              child: Container(
                width: 250,
                height: 30,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.white24, width: 2),
                    borderRadius: BorderRadius.circular(20)),
                child: Center(
                    child: Text(
                  "Login without password",
                  style: GoogleFonts.montserrat(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.bold),
                )),
              ),
            )
          ],
        ),
      ),
    );
  }
}
