import 'package:flutter/material.dart';
import 'package:meme/utils/routes.dart';

import '../widgets/onboarding_contents.dart';
import '../widgets/size_config.dart';

class OnBoarding extends StatefulWidget {
  const OnBoarding({super.key});

  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  late PageController _controller;

  @override
  void initState() {
    _controller = PageController();
    super.initState();
  }

  int _currentPage = 0;
  List colors = const [
    Colors.black,
    Colors.black,
    Colors.black,
    // Color(0xffDAD3C8),
    // Color(0xffFFE5DE),
    // Color(0xffDCF6E6),
  ];

  AnimatedContainer _buildDots({
    int? index,
  }) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 200),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(50),
        ),
        color: Colors.white,
      ),
      margin: const EdgeInsets.only(right: 9),
      height: 10,
      curve: Curves.easeIn,
      width: _currentPage == index ? 10 : 10,

      // color: _currentPage == index ? Colors.yellow : Colors.white,
    );
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: colors[_currentPage],
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Expanded(
                flex: 3,
                child: PageView.builder(
                  physics: const BouncingScrollPhysics(),
                  controller: _controller,
                  onPageChanged: (value) =>
                      setState(() => _currentPage = value),
                  itemCount: contents.length,
                  itemBuilder: (context, i) {
                    return Padding(
                      padding: const EdgeInsets.all(40.0),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 70,
                          ),
                          Image.asset(
                            contents[i].image,
                            height: SizeConfig.blockV! * 25,
                          ),
                          SizedBox(
                            height: 50,
                          ),
                          Text(
                            contents[i].title,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontFamily: "Mulish",
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                              fontSize: 21,
                            ),
                          ),
                          const SizedBox(height: 30),
                          Text(
                            contents[i].desc,
                            style: TextStyle(
                              fontFamily: "Mulish",
                              fontWeight: FontWeight.w300,
                              color: Colors.white,
                              fontSize: 15,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          const SizedBox(height: 60),
                          // Row(
                          //   mainAxisAlignment: MainAxisAlignment.center,
                          //   children: List.generate(
                          //     contents.length,
                          //     (int index) => _buildDots(
                          //       index: index,
                          //     ),
                          //   ),
                          // ),
                        ],
                      ),
                    );
                  },
                ),
              ),
              Expanded(
                flex: 1,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                        contents.length,
                        (int index) => _buildDots(
                          index: index,
                        ),
                      ),
                    ),
                    _currentPage + 1 == contents.length
                        ? Padding(
                            padding: const EdgeInsets.all(30),
                            child: ElevatedButton(
                              onPressed: () {
                                Navigator.pushNamed(context, MyRoutes.home);
                              },
                              child: const Text(
                                "skip",
                                style: TextStyle(color: Colors.black),
                              ),
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.yellow,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(50),
                                ),
                                textStyle: TextStyle(fontSize: 17),
                              ),
                            ),
                          )
                        : Padding(
                            padding: const EdgeInsets.all(30),
                          )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
