import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class Player extends StatefulWidget {
  const Player({super.key});

  @override
  State<Player> createState() => _PlayerState();
}

class _PlayerState extends State<Player> {
  double _currentslidervalue = 20;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      height: double.infinity,
      width: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Colors.red.shade400,
            Colors.red.shade600,
            Colors.red.shade700,
            Colors.red.shade900,
          ],
        ),
      ),
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.keyboard_arrow_down,
                    color: Colors.white,
                    size: 40,
                  ),
                  Column(
                    children: [
                      Text(
                        "PLAYING FROM SEARCH",
                        style: GoogleFonts.montserrat(
                            color: Colors.white, fontWeight: FontWeight.w500),
                      ),
                      Text(
                        "Recent Searches",
                        style: GoogleFonts.montserrat(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Icon(
                    Icons.more_vert,
                    color: Colors.white,
                    size: 30,
                  ),
                ],
              ),
              SizedBox(height: 25),
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15),
                child: Container(
                  height: 400,
                  width: 400,
                  decoration: BoxDecoration(
                      color: Colors.black54,
                      image: DecorationImage(
                          image: AssetImage("assets/edsh.jpg"),
                          fit: BoxFit.cover),
                      borderRadius: BorderRadius.circular(5)),
                ),
              ),
              SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.only(left: 25, right: 25),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Perfect",
                          style: GoogleFonts.montserrat(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                        Text(
                          "Ed Sheeran",
                          style: GoogleFonts.montserrat(
                              color: Colors.white, fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                    Spacer(),
                    Icon(
                      Icons.favorite,
                      color: Colors.green.shade400,
                      size: 45,
                    )
                  ],
                ),
              ),
              SizedBox(height: 20),
              Slider(
                inactiveColor: Colors.white24,
                activeColor: Colors.white,
                value: _currentslidervalue,
                max: 100,
                onChanged: (double value) {
                  setState(() {
                    _currentslidervalue = value;
                  });
                },
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25, right: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "1:37",
                      style: GoogleFonts.montserrat(color: Colors.white),
                    ),
                    Text(
                      "4:23",
                      style: GoogleFonts.montserrat(color: Colors.white),
                    )
                  ],
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Container(
                  height: 80,
                  width: double.infinity,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      FaIcon(
                        FontAwesomeIcons.shuffle,
                        color: Colors.white,
                      ),
                      Icon(
                        Icons.skip_previous,
                        color: Colors.white,
                        size: 50,
                      ),
                      Container(
                        height: 80,
                        width: 80,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(100)),
                        child: Center(
                          child: FaIcon(
                            FontAwesomeIcons.play,
                            size: 35,
                          ),
                        ),
                      ),
                      Icon(
                        Icons.skip_next,
                        color: Colors.white,
                        size: 50,
                      ),
                      FaIcon(
                        FontAwesomeIcons.repeat,
                        color: Colors.green,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Container(
                  height: 50,
                  width: double.infinity,
                  child: Row(
                    children: [
                      Row(
                        children: [
                          FaIcon(
                            FontAwesomeIcons.headphones,
                            color: Colors.green,
                          ),
                          SizedBox(width: 5),
                          Text(
                            "Yogesh's Airpods Pro",
                            style: GoogleFonts.montserrat(
                                color: Colors.green,
                                fontWeight: FontWeight.bold,
                                fontSize: 12),
                          )
                        ],
                      ),
                      Spacer(),
                      Row(
                        children: [
                          Icon(
                            Icons.share,
                            color: Colors.white,
                          ),
                          SizedBox(width: 20),
                          FaIcon(
                            FontAwesomeIcons.layerGroup,
                            color: Colors.white,
                          )
                        ],
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    ));
  }
}
