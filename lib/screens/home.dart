import 'package:flutter/material.dart';
import 'package:meme/screens/trending.dart';
import 'package:meme/screens/videos.dart';

import '../widgets/drawer.dart';
import 'gifs.dart';
import 'latest.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.wallet_giftcard)),
            IconButton(onPressed: () {}, icon: Icon(Icons.search)),
          ],
          bottom: TabBar(
            isScrollable: true,
            indicator: BoxDecoration(
              borderRadius: BorderRadius.circular(50), // Creates border
              color: Colors.yellow,
            ),
            tabs: [
              Tab(text: "Trending"),
              Tab(text: "Latest"),
              Tab(text: "Gifs"),
              Tab(text: "Videos"),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Trending(),
            Latest(),
            Gifs(),
            Videos(),
          ],
        ),
        drawer: MyDrawer(),
      ),
    );
  }
}
