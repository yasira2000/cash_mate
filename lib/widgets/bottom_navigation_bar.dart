import 'dart:ui';

import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  const CustomBottomNavigationBar({super.key});

  @override
  State<CustomBottomNavigationBar> createState() =>
      _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  final List<Widget> _navigationItems = [
    Container(
      child: SvgPicture.asset(
        'assets/svg/home.svg',
        color: Colors.white,
      ),
      width: 100,
      height: 100,
    ),
    SvgPicture.asset(
      'assets/svg/analytics.svg',
      color: Colors.white,
    ),
    SvgPicture.asset('assets/svg/notification.svg'),
  ];
  // final List<Widget> _navigationItems = [
  //   Icon(Icons.home_filled, size: 30),
  //   Icon(Icons.analytics, size: 30),
  //   Icon(Icons.alarm, size: 30)
  // ];

  Color bgColor = const Color(0xFFF7F7F8);

  @override
  Widget build(BuildContext context) {
    return CurvedNavigationBar(
        items: _navigationItems,
        backgroundColor: bgColor,
        color: const Color(0xff1E5368),
        onTap: (index) {
          setState(() {});
        });
  }
}
