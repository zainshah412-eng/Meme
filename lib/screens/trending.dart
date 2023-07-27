import 'package:flutter/material.dart';
import 'package:meme/screens/main.dart';

import '../widgets/trending_item.dart';

class Trending extends StatefulWidget {
  const Trending({super.key});

  @override
  State<Trending> createState() => _TrendingState();
}

class _TrendingState extends State<Trending> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            // padding: const EdgeInsets.only(left: 22),
            margin: const EdgeInsets.only(top: 12, left: 18, right: 18),
            child: Row(
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage('assets/images/image1.png'),
                ),
                SizedBox(
                  width: 8, //<-- SEE HERE
                ),
                Text(
                  "Little Mermaid",
                  style: TextStyle(color: Colors.white),
                ),
                Icon(
                  Icons.more_vert,
                  color: Colors.white,
                )
              ],
            ),
          ),
          SizedBox(
            height: 8, //<-- SEE HERE
          ),
          Text(
            "Preety much all exprets said they are gone...",
            style: TextStyle(
                fontSize: 17, fontWeight: FontWeight.w600, color: Colors.white),
          ),
          // Card(
          //     child: Image.asset(
          //       'assets/images/image3.png',
          //       height: 120,
          //       width: 120,
          //     )),
          Container(
              margin: EdgeInsets.only(top: 11, bottom: 11, left: 18, right: 18),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.black.withOpacity(.05)),
              child: Image.asset(
                'assets/images/image3.png',
                height: 320,
                width: 370,
              )),
          Container(
            margin: EdgeInsets.only(left: 11, right: 11),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset(
                  'assets/images/like.png',
                  height: 20,
                  width: 20,
                ),
                Text(
                  "30.21K",
                  style: TextStyle(fontSize: 13, color: Colors.white),
                ),
                SizedBox(
                  width: 20, //<-- SEE HERE
                ),
                Image.asset(
                  'assets/images/dislike.png',
                  height: 20,
                  width: 20,
                ),
                Text(
                  "421",
                  style: TextStyle(fontSize: 13, color: Colors.white),
                ),
                SizedBox(
                  width: 20, //<-- SEE HERE
                ),
                Image.asset(
                  'assets/images/conversation.png',
                  height: 20,
                  width: 20,
                ),
                Text(
                  "381",
                  style: TextStyle(fontSize: 13, color: Colors.white),
                ),
                SizedBox(
                  width: 20, //<-- SEE HERE
                ),
                Image.asset(
                  'assets/images/share.png',
                  height: 20,
                  width: 20,
                ),
                Text(
                  "Share",
                  style: TextStyle(fontSize: 13, color: Colors.white),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
