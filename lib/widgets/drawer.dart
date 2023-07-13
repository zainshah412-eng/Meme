import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.black,
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: ListView(
            children: [
              DrawerHeader(
                padding: EdgeInsets.only(left: 16, top: 28),
                margin: EdgeInsets.only(top: 18),
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 25,
                    ),
                    Icon(
                      Icons.home,
                      color: Colors.white,
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Text(
                      "Interests",
                      style: TextStyle(
                        color: Colors.white38,
                      ),
                      textAlign: TextAlign.start,
                    )
                  ],
                ),
              ),
              ListTile(
                trailing: Icon(
                  CupertinoIcons.pin,
                  color: Colors.white,
                ),
                title: Text(
                  "Current affairs",
                  textScaleFactor: 1.1,
                  style: TextStyle(color: Colors.white),
                ),
              ),
              ListTile(
                trailing: Icon(
                  CupertinoIcons.pin,
                  color: Colors.white,
                ),
                title: Text(
                  "Movies/TV shows",
                  textScaleFactor: 1.1,
                  style: TextStyle(color: Colors.white),
                ),
              ),
              ListTile(
                trailing: Icon(
                  CupertinoIcons.pin,
                  color: Colors.white,
                ),
                title: Text(
                  "Sports",
                  textScaleFactor: 1.1,
                  style: TextStyle(color: Colors.white),
                ),
              ),
              ListTile(
                trailing: Icon(
                  CupertinoIcons.pin,
                  color: Colors.white,
                ),
                title: Text(
                  "Gaming",
                  textScaleFactor: 1.1,
                  style: TextStyle(color: Colors.white),
                ),
              ),
              ListTile(
                trailing: Icon(
                  CupertinoIcons.pin,
                  color: Colors.white,
                ),
                title: Text(
                  "Family",
                  textScaleFactor: 1.1,
                  style: TextStyle(color: Colors.white),
                ),
              ),
              ListTile(
                trailing: Icon(
                  CupertinoIcons.pin,
                  color: Colors.white,
                ),
                title: Text(
                  "Comics lifestyle",
                  textScaleFactor: 1.1,
                  style: TextStyle(color: Colors.white),
                ),
              ),
              ListTile(
                trailing: Icon(
                  CupertinoIcons.pin,
                  color: Colors.white,
                ),
                title: Text(
                  "Desi",
                  textScaleFactor: 1.1,
                  style: TextStyle(color: Colors.white),
                ),
              ),
              ListTile(
                trailing: Icon(
                  CupertinoIcons.pin,
                  color: Colors.white,
                ),
                title: Text(
                  "Vehicles",
                  textScaleFactor: 1.1,
                  style: TextStyle(color: Colors.white),
                ),
              ),
              ListTile(
                trailing: Icon(
                  CupertinoIcons.pin,
                  color: Colors.white,
                ),
                title: Text(
                  "Science & tec",
                  textScaleFactor: 1.1,
                  style: TextStyle(color: Colors.white),
                ),
              ),
              ListTile(
                trailing: Icon(
                  CupertinoIcons.pin,
                  color: Colors.white,
                ),
                title: Text(
                  "Food",
                  textScaleFactor: 1.1,
                  style: TextStyle(color: Colors.white),
                ),
              ),
              ListTile(
                trailing: Icon(
                  CupertinoIcons.pin,
                  color: Colors.white,
                ),
                title: Text(
                  "Superhero",
                  textScaleFactor: 1.1,
                  style: TextStyle(color: Colors.white),
                ),
              ),
              ListTile(
                trailing: Icon(
                  CupertinoIcons.pin,
                  color: Colors.white,
                ),
                title: Text(
                  "Crypto",
                  textScaleFactor: 1.1,
                  style: TextStyle(color: Colors.white),
                ),
              ),
              ListTile(
                trailing: Icon(
                  CupertinoIcons.pin,
                  color: Colors.white,
                ),
                title: Text(
                  "Animals",
                  textScaleFactor: 1.1,
                  style: TextStyle(color: Colors.white),
                ),
              ),
              // Divider(color: Colors.white38),
              Padding(
                padding: EdgeInsets.only(left: 14, right: 203),
                child: Container(
                  height: 2.0,
                  width: 12.0,
                  color: Colors.white38,
                ),
              ),
              ListTile(
                title: Text(
                  "Missing Interestrs?",
                  textScaleFactor: 1.1,
                  style: TextStyle(color: Colors.white38),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
