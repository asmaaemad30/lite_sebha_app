import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lite_sebha_app/constants.dart';

import 'view/screens/azkar/azkarScreen.dart';
import 'view/screens/home/HomeScreen.dart';
import 'view/screens/sebha/sebhaScreen.dart';

class LayoutScreen extends StatefulWidget {
  const LayoutScreen({Key? key}) : super(key: key);

  @override
  State<LayoutScreen> createState() => _LayoutScreenState();
}

class _LayoutScreenState extends State<LayoutScreen> {
  int _selectedIndex = 0;
  List pages = [
  HomeScreen(),
  AzkarScreen(),
  sebhaScreen(),
  ];
  void _onTapped (int index){
    setState(() {
      _selectedIndex=index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,

      body: pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: [
            BottomNavigationBarItem(
                icon:SvgPicture.asset(home),
                activeIcon: SvgPicture.asset(greenHome),
                label: '',
            ),
            BottomNavigationBarItem(
            icon:SvgPicture.asset(book),
            activeIcon: SvgPicture.asset(greenBook),
            label: '',
          ),
            BottomNavigationBarItem(
            icon:SvgPicture.asset(sebha),
            activeIcon: SvgPicture.asset(greenSebha),
            label: '',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap:_onTapped ,
        backgroundColor: white,
        elevation: 0,
        iconSize: 20,
        showSelectedLabels: false,

      ),
    );
  }
}
