import 'package:flutter/material.dart';

class FirstContainer extends StatelessWidget {
  const FirstContainer({super.key});

  @override
  Widget build(BuildContext context) {
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
          right: 25,
          top: 200,
          child: Image.asset(
            "assets/cloudAndSun.png",
            height: 100,
          ),
        ),
        const Positioned(
            left: 50,
            top: 40,
            child: Text(
              "Kharkiv, Ukraine",
              style: TextStyle(fontSize: 20, color: Colors.white),
            )),
        Positioned(
            right: 10,
            top: 30,
            child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.search,
                  color: Colors.white,
                ))),
        const Positioned(
            left: 50,
            bottom: 150,
            child: Text(
              "3°",
              style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            )),
        const Positioned(
            left: 50,
            bottom: 10,
            child: Text(
              "January 18, 16:14",
              style: TextStyle(fontSize: 20, color: Colors.white),
            )),
        const Positioned(
            right: 20,
            bottom: 30,
            child: Text(
              "Day 3°",
              style: TextStyle(fontSize: 20, color: Colors.white),
            )),
        const Positioned(
            right: 20,
            bottom: 10,
            child: Text(
              "Night -1°",
              style: TextStyle(fontSize: 20, color: Colors.white),
            ))
      ],
    ));
  }
}
