import 'package:cloudsnap/Constant/constant.dart';
import 'package:flutter/material.dart';

class Third extends StatelessWidget {
  const Third({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: themeColor,
      child: const Column(
        children: [DaysCard(), DaysCard()],
      ),
    );
  }
}

class DaysCard extends StatelessWidget {
  const DaysCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
            color: themeColor5, borderRadius: BorderRadius.circular(20)),
        child: Padding(
          padding: const EdgeInsets.all(14.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Today",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text("Cloudy and Sunny"),
                ],
              ),
              Container(
                child: Row(
                  children: [
                    const Column(
                      children: [
                        Text("3°"),
                        Text("-2°"),
                      ],
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    const SizedBox(
                      height: 30,
                      width: 5,
                      child: VerticalDivider(
                        width: 10,
                        thickness: 1,
                        color: Colors.black,
                        indent: 0,
                        endIndent: 0,
                      ),
                    ),
                    Image.asset(
                      "assets/cloudAndSun.png",
                      height: 70,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
