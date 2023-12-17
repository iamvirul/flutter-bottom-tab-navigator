// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _index = 0;

  Color _getButtonBackgroundColor(int index) {
    if (_index == index) {
      return Color(0xff35B52A);
    } else {
      return Color(0xffC2EFBD);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: CurvedNavigationBar(
        color: Color(0xffC2EFBD),
        backgroundColor: Colors.transparent,
        buttonBackgroundColor: _getButtonBackgroundColor(_index),
        onTap: (index) {
          setState(() {
            _index = index;
          });
        },
        items: [
          Icon(
            Icons.home,
            color: _index == 0 ? Colors.white : Colors.black,
          ),
          Icon(
            Icons.favorite,
            color: _index == 1 ? Colors.white : Colors.black,
          ),
          Icon(
            Icons.settings,
            color: _index == 2 ? Colors.white : Colors.black,
          ),
        ],
      ),
    );
  }
}
