import 'dart:math';

import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'Dashbord.dart';
import 'Allproduct.dart';
import 'salesentry.dart';
import 'Report.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    const Dashbord(),
    const Allproduct(),
    const salseentry(),
    const Report(),
  ];

  final List<Widget> _items = const [
    Icon(Icons.home, size: 30),
    Icon(Icons.card_travel, size: 30),
    Icon(Icons.point_of_sale, size: 30),
    Icon(Icons.bar_chart, size: 30),
  ];

  @override
  Widget build(BuildContext context) {
    MediaQueryData mq = MediaQuery.of(context);
    double screenWidth = mq.size.width;
    double screenHeight = mq.size.height;
    double size = min(screenWidth, screenHeight);
    return Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar: CurvedNavigationBar(
        index: _currentIndex,
        height: screenHeight *0.080,
        items: _items,
        color: Colors.blueAccent,
        buttonBackgroundColor: Colors.black26,
        backgroundColor: Colors.transparent,
        animationCurve: Curves.easeInOut,
        animationDuration: const Duration(milliseconds: 600),
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
