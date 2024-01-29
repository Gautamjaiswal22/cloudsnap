import 'package:cloudsnap/Constant/constant.dart';
import 'package:cloudsnap/ScreenParts/first.dart';
import 'package:cloudsnap/ScreenParts/second.dart';
import 'package:cloudsnap/ScreenParts/third.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: themeColor,
      body:
          //  ScrollChangingWidget(),
          const SingleChildScrollView(
        child: Column(children: [
          FirstContainer(),
          SecondContainer(),
          Third(),
          // SizedBox(
          //   height: 100,
          // )
        ]),
      ),
    );
  }
}
