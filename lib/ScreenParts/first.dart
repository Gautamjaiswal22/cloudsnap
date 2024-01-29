import 'package:flutter/material.dart';

class FirstContainer extends StatelessWidget {
  const FirstContainer({super.key});

  @override
  Widget build(BuildContext context) {
    double mqh = MediaQuery.of(context).size.height;
    double mqw = MediaQuery.of(context).size.width;

    return Container(
        child: Stack(
      children: [
        ClipRRect(
            borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(30),
              bottomRight: Radius.circular(30),
            ),
            child: Image.asset(
              "assets/Background.png",
            )),
        Positioned(
          right: mqw * 0.12,
          top: mqh * 0.24,
          child: Image.asset(
            "assets/cloudAndSun.png",
            height: mqh * 0.12,
          ),
        ),
        Positioned(
            left: mqw * 0.12,
            top: mqh * 0.04,
            child: Text(
              "Kharkiv, Ukraine",
              style: TextStyle(fontSize: 20, color: Colors.white),
            )),
        Positioned(
            right: mqw * 0.10,
            top: mqh * 0.03,
            child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.search,
                  color: Colors.white,
                ))),
        Positioned(
            left: mqw * 0.12,
            bottom: mqh * 0.16,
            child: Text(
              "3°",
              style: TextStyle(
                  fontSize: mqh * 0.1,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            )),
        Positioned(
            left: mqw * 0.12,
            bottom: mqh * 0.02,
            child: Text(
              "January 18, 16:14",
              style: TextStyle(fontSize: mqw * 0.06, color: Colors.white),
            )),
        Positioned(
            right: mqw * 0.04,
            bottom: mqh * 0.038,
            child: Text(
              "Day 3°",
              style: TextStyle(fontSize: mqw * 0.06, color: Colors.white),
            )),
        Positioned(
            right: mqw * 0.04,
            bottom: mqh * 0.01,
            child: Text(
              "Night -1°",
              style: TextStyle(fontSize: mqw * 0.06, color: Colors.white),
            ))
      ],
    ));
  }
}
