import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black38,
      appBar: AppBar(
        surfaceTintColor: Colors.transparent,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.black38,
        centerTitle: false,
        title: Text(
          "Good evening",
          style: GoogleFonts.montserrat(
              color: Colors.white, fontSize: 22, fontWeight: FontWeight.bold),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: Stack(children: [
              FaIcon(
                FontAwesomeIcons.bell,
                color: Colors.white,
                size: 28,
              ),
              Container(
                width: 10,
                height: 10,
                decoration: BoxDecoration(
                    color: Colors.indigoAccent,
                    borderRadius: BorderRadius.circular(50)),
              )
            ]),
          ),
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: FaIcon(
              FontAwesomeIcons.clock,
              color: Colors.white,
              size: 28,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: FaIcon(
              FontAwesomeIcons.gear,
              color: Colors.white,
              size: 28,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Container(
                      height: 40,
                      width: 80,
                      decoration: BoxDecoration(
                          color: Colors.white24,
                          borderRadius: BorderRadius.circular(25)),
                      child: Center(
                        child: Text(
                          "Music",
                          style: GoogleFonts.montserrat(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    SizedBox(width: 15),
                    Container(
                      height: 40,
                      width: 160,
                      decoration: BoxDecoration(
                          color: Colors.white24,
                          borderRadius: BorderRadius.circular(25)),
                      child: Center(
                        child: Text(
                          "Podcasts & Shows",
                          style: GoogleFonts.montserrat(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 60,
                      width: 190,
                      decoration: BoxDecoration(
                          color: Colors.white24,
                          borderRadius: BorderRadius.circular(8)),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            width: 60,
                            height: 70,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(8),
                                  bottomLeft: Radius.circular(8)),
                              gradient: LinearGradient(
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                                colors: [
                                  Colors.indigo,
                                  Colors.indigoAccent,
                                ],
                              ),
                            ),
                            child: Center(
                                child: Icon(
                              Icons.favorite,
                              color: Colors.white,
                              size: 30,
                            )),
                          ),
                          SizedBox(width: 10),
                          Flexible(
                            child: Text(
                              "Liked Songs",
                              style: GoogleFonts.montserrat(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12),
                            ),
                          ),
                          Spacer(),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: FaIcon(
                              FontAwesomeIcons.chartSimple,
                              color: HexColor("#1DB954"),
                              size: 20,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 60,
                      width: 190,
                      decoration: BoxDecoration(
                          color: Colors.white24,
                          borderRadius: BorderRadius.circular(8)),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            width: 60,
                            height: 70,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(8),
                                    bottomLeft: Radius.circular(8)),
                                image: DecorationImage(
                                  image: AssetImage(
                                      'assets/leo.png'), // Replace with your image path
                                  fit: BoxFit
                                      .cover, // You can use other BoxFit options like BoxFit.fill, BoxFit.fitWidth, etc.
                                )),
                          ),
                          SizedBox(width: 10),
                          Text(
                            "Latest Tamil",
                            style: GoogleFonts.montserrat(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 13),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 60,
                      width: 190,
                      decoration: BoxDecoration(
                          color: Colors.white24,
                          borderRadius: BorderRadius.circular(8)),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            width: 60,
                            height: 70,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(8),
                                    bottomLeft: Radius.circular(8)),
                                image: DecorationImage(
                                  image: AssetImage(
                                      'assets/leooriginal.jpg'), // Replace with your image path
                                  fit: BoxFit
                                      .cover, // You can use other BoxFit options like BoxFit.fill, BoxFit.fitWidth, etc.
                                )),
                          ),
                          SizedBox(width: 10),
                          Text(
                            "Leo (Original)",
                            style: GoogleFonts.montserrat(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 13),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 60,
                      width: 190,
                      decoration: BoxDecoration(
                          color: Colors.white24,
                          borderRadius: BorderRadius.circular(8)),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            width: 60,
                            height: 70,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(8),
                                    bottomLeft: Radius.circular(8)),
                                image: DecorationImage(
                                  image: AssetImage(
                                      'assets/jailer.jpg'), // Replace with your image path
                                  fit: BoxFit
                                      .cover, // You can use other BoxFit options like BoxFit.fill, BoxFit.fitWidth, etc.
                                )),
                          ),
                          SizedBox(width: 10),
                          Text(
                            "Jailer",
                            style: GoogleFonts.montserrat(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 13),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 60,
                      width: 190,
                      decoration: BoxDecoration(
                          color: Colors.white24,
                          borderRadius: BorderRadius.circular(8)),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            width: 60,
                            height: 70,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(8),
                                    bottomLeft: Radius.circular(8)),
                                image: DecorationImage(
                                  image: AssetImage(
                                      'assets/96.jpg'), // Replace with your image path
                                  fit: BoxFit
                                      .cover, // You can use other BoxFit options like BoxFit.fill, BoxFit.fitWidth, etc.
                                )),
                          ),
                          SizedBox(width: 10),
                          Flexible(
                            child: Text(
                              "96 (Original\nsoundtrack)",
                              softWrap: false,
                              overflow: TextOverflow.ellipsis,
                              style: GoogleFonts.montserrat(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 13),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 60,
                      width: 190,
                      decoration: BoxDecoration(
                          color: Colors.white24,
                          borderRadius: BorderRadius.circular(8)),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            width: 60,
                            height: 70,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(8),
                                    bottomLeft: Radius.circular(8)),
                                image: DecorationImage(
                                  image: AssetImage(
                                      'assets/visiri.jpg'), // Replace with your image path
                                  fit: BoxFit
                                      .cover, // You can use other BoxFit options like BoxFit.fill, BoxFit.fitWidth, etc.
                                )),
                          ),
                          SizedBox(width: 10),
                          Flexible(
                            child: Text(
                              "Trending Love hits",
                              style: GoogleFonts.montserrat(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 13),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "hits",
                  style: GoogleFonts.montserrat(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
              ),
              SizedBox(height: 10),
              Container(
                height: 160,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    hits("assets/edsh.jpg", "Ed Sheeran"),
                    hits("assets/ani.jpg", "Anirudh"),
                    hits("assets/gv.jpg", "GV Prakash"),
                    hits("assets/adhi.jpg", "Hip Hop Tamizha"),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Tamil Essentials",
                  style: GoogleFonts.montserrat(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
              ),
              SizedBox(height: 10),
              Container(
                height: 160,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    tamilEssentials("assets/naready.jpg", "Latest Dance"),
                    tamilEssentials("assets/96vali.jpg", "Kaadhal Vali"),
                    tamilEssentials("assets/anbenum.jpg", "Latest Love"),
                    tamilEssentials("assets/varisu.jpg", "Latest Romance"),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Recently Played",
                  style: GoogleFonts.montserrat(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
              ),
              SizedBox(height: 10),
              Container(
                height: 160,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Stack(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10)),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                    height: 110,
                                    width: 120,
                                    decoration: BoxDecoration(
                                      gradient: LinearGradient(
                                        begin: Alignment.topLeft,
                                        end: Alignment.bottomRight,
                                        colors: [
                                          Colors.indigo,
                                          Colors.indigoAccent,
                                        ],
                                      ),
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                    child: Center(
                                      child: Icon(
                                        Icons.favorite,
                                        size: 40,
                                      ),
                                    )),
                                Padding(
                                  padding: const EdgeInsets.all(3.0),
                                  child: Text(
                                    "Liked Songs",
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    softWrap: false,
                                    style: GoogleFonts.montserrat(
                                      fontSize: 12,
                                      color: Colors.grey,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Recents("assets/jailer.jpg", "Jailer Original"),
                    Recents("assets/visiri.jpg", "Visiri"),
                    Recents("assets/anbenum.jpg", "Latest Love"),
                    Recents("assets/varisu.jpg", "Latest Romance"),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget hits(String image, String artist) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 110,
                  width: 120,
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(5),
                      topLeft: Radius.circular(5),
                    ),
                    child: Image.asset(
                      image,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(3.0),
                  child: Text(
                    artist,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    softWrap: false,
                    style: GoogleFonts.montserrat(
                      fontSize: 12,
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 0,
            left: 0,
            child: Padding(
              padding: const EdgeInsets.all(3.0),
              child: FaIcon(
                FontAwesomeIcons
                    .spotify, // You can replace this with your desired icon
                color: Colors.white, // Customize the icon color
                size: 20, // Adjust the icon size as needed
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget tamilEssentials(String image, String artist) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 110,
                  width: 120,
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(5),
                      topLeft: Radius.circular(5),
                    ),
                    child: Image.asset(
                      image,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(3.0),
                  child: Text(
                    artist,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    softWrap: false,
                    style: GoogleFonts.montserrat(
                      fontSize: 12,
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 0,
            left: 0,
            child: Padding(
              padding: const EdgeInsets.all(3.0),
              child: FaIcon(
                FontAwesomeIcons
                    .spotify, // You can replace this with your desired icon
                color: Colors.white, // Customize the icon color
                size: 20, // Adjust the icon size as needed
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget Recents(String image, String artist) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 110,
                  width: 120,
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(5),
                      topLeft: Radius.circular(5),
                    ),
                    child: Image.asset(
                      image,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(3.0),
                  child: Text(
                    artist,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    softWrap: false,
                    style: GoogleFonts.montserrat(
                      fontSize: 12,
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 0,
            left: 0,
            child: Padding(
              padding: const EdgeInsets.all(3.0),
              child: FaIcon(
                FontAwesomeIcons
                    .spotify, // You can replace this with your desired icon
                color: Colors.white, // Customize the icon color
                size: 20, // Adjust the icon size as needed
              ),
            ),
          ),
        ],
      ),
    );
  }
}
