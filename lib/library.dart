import 'package:flutter/material.dart';

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
        leading: Container(
          height: 60,
          width: 60,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(100),
            child: Image.asset("assets/yog.png"),
          ),
        ),
      ),
    );
  }
}
