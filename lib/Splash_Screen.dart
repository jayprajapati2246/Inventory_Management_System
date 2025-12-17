import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Loginpage.dart';

void main() {
  runApp(Inventory());
}

class Inventory extends StatelessWidget {
  const Inventory({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: invetory()
    );
  }
}

class invetory extends StatefulWidget {
  const invetory({super.key});

  @override
  State<invetory> createState() => _invetoryState();
}

class _invetoryState extends State<invetory> {
  @override
  void initState() {
    super.initState();
    Timer(
      Duration(seconds: 5),
      () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => Loginpage()),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final height = size.height;
    final width = size.width;

    return Scaffold(
      backgroundColor: Colors.blueGrey[900],

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: height * 0.70,
              width: width * 0.70,
              alignment: Alignment.topCenter,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: Colors.blueAccent,
                  width: width * 0.030,
                ),
                image: DecorationImage(
                  image: AssetImage(
                    "assates/image/compressed_8c0735e6a58151b89aa38dc0edbeaaa4.webp",
                  ),
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
