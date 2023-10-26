import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:spotify_clone/searchpage.dart';

class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

final List<Map<String, dynamic>> gridMap = [
  {"Title": "Podcasts", "Image": "assets/podcast.jpg", "Color": "#1ABC9C"},
  {"Title": "Live Events", "Image": "assets/live.jpg", "Color": "#F1948A"},
  {"Title": "Made For You", "Image": "assets/96.jpg", "Color": "#F1948A"},
  {
    "Title": "New Releases",
    "Image": "assets/leooriginal.jpg",
    "Color": "#52BE80"
  },
  {"Title": "Tamil", "Image": "assets/Tamil.jpg", "Color": "#F5CBA7"},
  {"Title": "English", "Image": "assets/edsh.jpg", "Color": "#F8C471"},
  {"Title": "Telugu", "Image": "assets/varisu.jpg", "Color": "#DC7633"},
  {"Title": "Malayalam", "Image": "assets/ani.jpg", "Color": "#CB4335"},
  {"Title": "Kannada", "Image": "assets/adhi.jpg", "Color": "#0E6655"},
  {"Title": "Charts", "Image": "assets/jailer.jpg", "Color": "#A9CCE3"},
  {"Title": "Pop", "Image": "assets/leo.png", "Color": "#34495E"},
  {"Title": "India", "Image": "assets/gv.jpg", "Color": "#7D3C98"},
  {"Title": "Trending", "Image": "assets/naready.jpg", "Color": "#7DCEA0"},
  {"Title": "Discover", "Image": "assets/anbenum.jpg", "Color": "#FFA07A"},
];

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        surfaceTintColor: Colors.transparent,
        centerTitle: false,
        title: Text(
          "Search",
          style: GoogleFonts.montserrat(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 25),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(
              Icons.camera_alt_outlined,
              color: Colors.white,
              size: 35,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GestureDetector(
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>SearchPage()));
              },
              child: Container(
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.white, borderRadius: BorderRadius.circular(5)),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      const Icon(
                        Icons.search,
                        size: 33,
                        color: Colors.black45,
                      ),
                      const SizedBox(width: 10),
                      Text(
                        "What do you want to listen to?",
                        style: GoogleFonts.montserrat(
                            color: Colors.black45,
                            fontWeight: FontWeight.bold,
                            fontSize: 16),
                      )
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 15),
            Text(
              "Browse all",
              style: GoogleFonts.montserrat(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 18),
            ),
            const SizedBox(height: 15),
            Expanded(
                child: GridView.builder(
                    shrinkWrap: true,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      mainAxisExtent: 100,
                      crossAxisCount: 2,
                    ),
                    itemCount: gridMap.length,
                    itemBuilder: (_, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 80,
                          width: 180,
                          decoration: BoxDecoration(
                            color: HexColor(
                                "${gridMap.elementAt(index)['Color']}"),
                            borderRadius: BorderRadius.circular(4),
                          ),
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: SizedBox(
                                  width: 90, // Set a specific width
                                  child: Text(
                                    "${gridMap.elementAt(index)['Title']}",
                                    style: GoogleFonts.montserrat(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                    ),
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 2,
                                  ),
                                ),
                              ),
                              const Spacer(),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                    width: 60,
                                    height: 80,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5)),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(8),
                                      child: Image.asset(
                                        "${gridMap.elementAt(index)['Image']}",
                                        fit: BoxFit.cover,
                                      ),
                                    )),
                              )
                            ],
                          ),
                        ),
                      );
                    })),
          ],
        ),
      ),
    );
  }
}
