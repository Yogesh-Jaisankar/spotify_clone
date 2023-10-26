import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Library extends StatefulWidget {
  const Library({super.key});

  @override
  State<Library> createState() => _LibraryState();
}

class _LibraryState extends State<Library> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        centerTitle: false,
        backgroundColor: Colors.black,
        leading: Container(
          height: 60,
          width: 60,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: Image.asset(
                "assets/yog.png",
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        title: Text(
          "Your Library",
          style: GoogleFonts.montserrat(
              fontWeight: FontWeight.bold, color: Colors.white, fontSize: 25),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(
              Icons.search,
              color: Colors.white,
              size: 35,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(
              Icons.add,
              color: Colors.white,
              size: 35,
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Container(
            height: 40,
            child: ListView(
              scrollDirection: Axis.horizontal,
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
                SizedBox(width: 10),
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
                SizedBox(width: 10),
                Container(
                  height: 40,
                  width: 80,
                  decoration: BoxDecoration(
                      color: Colors.white24,
                      borderRadius: BorderRadius.circular(25)),
                  child: Center(
                    child: Text(
                      "Albums",
                      style: GoogleFonts.montserrat(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                SizedBox(width: 10),
                Container(
                  height: 40,
                  width: 80,
                  decoration: BoxDecoration(
                      color: Colors.white24,
                      borderRadius: BorderRadius.circular(25)),
                  child: Center(
                    child: Text(
                      "Artists",
                      style: GoogleFonts.montserrat(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(
                  Icons.import_export,
                  color: Colors.white,
                ),
                SizedBox(width: 5),
                Text(
                  "Recents",
                  style: GoogleFonts.montserrat(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
                Spacer(),
                Icon(
                  Icons.grid_view,
                  color: Colors.white,
                ),
              ],
            ),
          ),
          ListTile(
            leading: Container(
              width: 60,
              height: 60,
              decoration: BoxDecoration(
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
                ),
              ),
            ),
            title: Text(
              "Liked Songs",
              style: GoogleFonts.montserrat(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                  fontSize: 18),
            ),
            subtitle: Row(
              children: [
                Transform.rotate(
                    angle: 0.5,
                    child: Icon(
                      Icons.push_pin,
                      color: Colors.green,
                      size: 18,
                    )),
                SizedBox(width: 5),
                Text(
                  "Playlist | 629 songs",
                  style: GoogleFonts.montserrat(
                      color: Colors.grey,
                      fontWeight: FontWeight.w500,
                      fontSize: 12),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  softWrap: true,
                ),
              ],
            ),
          ),
          ListTile(
            leading: Container(
              width: 60,
              height: 60,
              decoration: BoxDecoration(color: Colors.indigo),
              child: Center(
                child: Icon(
                  Icons.folder,
                  color: Colors.green.shade400,
                ),
              ),
            ),
            title: Text(
              "Local Files",
              style: GoogleFonts.montserrat(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                  fontSize: 18),
            ),
            subtitle: Row(
              children: [
                Transform.rotate(
                    angle: 0.5,
                    child: Icon(
                      Icons.push_pin,
                      color: Colors.green,
                      size: 18,
                    )),
                SizedBox(width: 5),
                Icon(
                  Icons.download,
                  color: Colors.green,
                  size: 18,
                ),
                SizedBox(width: 5),
                Text(
                  "Playlist | 227 tracks",
                  style: GoogleFonts.montserrat(
                      color: Colors.grey,
                      fontWeight: FontWeight.w500,
                      fontSize: 12),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  softWrap: true,
                ),
              ],
            ),
          ),
          ListTile(
            leading: Container(
              width: 60,
              height: 60,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/leooriginal.jpg"),
                      fit: BoxFit.cover)),
            ),
            title: Text(
              "Latest Tamil",
              style: GoogleFonts.montserrat(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                  fontSize: 18),
            ),
            subtitle: Text(
              "Playlist | Spotify",
              style: GoogleFonts.montserrat(
                  color: Colors.grey,
                  fontWeight: FontWeight.w500,
                  fontSize: 12),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              softWrap: true,
            ),
          ),
          ListTile(
            leading: Container(
              width: 60,
              height: 60,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(100),
                child: Image.asset(
                  "assets/edsh.jpg",
                  fit: BoxFit.cover,
                ),
              ),
            ),
            title: Text(
              "Ed Sheeran",
              style: GoogleFonts.montserrat(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                  fontSize: 18),
            ),
            subtitle: Text(
              "Artist",
              style: GoogleFonts.montserrat(
                  color: Colors.grey,
                  fontWeight: FontWeight.w500,
                  fontSize: 12),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              softWrap: true,
            ),
          ),
        ],
      ),
    );
  }
}
