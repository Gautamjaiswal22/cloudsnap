import 'package:cloudsnap/Constant/constant.dart';
import 'package:flutter/material.dart';

class Third extends StatelessWidget {
  const Third({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.amber,
      // height: 100,
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
    double mqh = MediaQuery.of(context).size.height;
    double mqw = MediaQuery.of(context).size.width;
    return Padding(
      padding:
          EdgeInsets.only(left: mqw * 0.02, top: mqh * 0.02, right: mqw * 0.02),
      child: Container(
        decoration: BoxDecoration(
            color: themeColor5, borderRadius: BorderRadius.circular(20)),
        child: Padding(
          padding: EdgeInsets.only(
              top: mqh * 0.01,
              bottom: mqh * 0.01,
              left: mqw * 0.02,
              right: mqw * 0.02),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Today",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, fontSize: mqw * 0.04),
                  ),
                  Text(
                    "Cloudy and Sunny",
                    style: TextStyle(fontSize: mqw * 0.036),
                  ),
                ],
              ),
              Container(
                child: Row(
                  children: [
                    Column(
                      children: [
                        Text(
                          "3°",
                          style: TextStyle(fontSize: mqw * 0.034),
                        ),
                        Text(
                          "-2°",
                          style: TextStyle(fontSize: mqw * 0.034),
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: mqw * 0.01),
                      child: SizedBox(
                        height: mqh * 0.06,
                        // width: 5,
                        child: VerticalDivider(
                          thickness: mqw * 0.004,
                          color: Colors.black,
                          indent: 0,
                          endIndent: 0,
                        ),
                      ),
                    ),
                    Image.asset(
                      "assets/cloudAndSun.png",
                      height: mqh * 0.070,
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
