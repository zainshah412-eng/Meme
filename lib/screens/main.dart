import 'package:flutter/material.dart';
import 'package:meme/screens/gifs.dart';
import 'package:meme/screens/home.dart';
import 'package:meme/screens/latest.dart';
import 'package:meme/screens/settings.dart';
import 'package:meme/screens/trending.dart';
import 'package:meme/screens/videos.dart';

import '../widgets/drawer.dart';
import 'add.dart';
import 'onboarding.dart';

class Main extends StatefulWidget {
  const Main({super.key});

  @override
  State<Main> createState() => _MainState();
}

class _MainState extends State<Main> {
  int _selectedIndex = 0;
  static const List<Widget> _pages = <Widget>[Home(), Add(), Settings()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: _pages.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 50),
        child: BottomNavigationBar(
          backgroundColor: Colors.black,
          elevation: 0,
          // iconSize: 45,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.yellow,
          unselectedItemColor: Colors.white70,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          // type: BottomNavigationBarType.shifting,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home_outlined,
                size: 35,
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.add_circle,
                size: 65,
                color: Colors.yellow,
              ),
              label: 'Add',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.settings,
                size: 35,
              ),
              label: 'Settings',
            ),
          ],
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
        ),
      ),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}
