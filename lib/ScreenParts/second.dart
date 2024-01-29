import 'package:cloudsnap/Card/featureCard.dart';
import 'package:cloudsnap/Card/sunRiseCard.dart';
import 'package:cloudsnap/DailyForcast.dart/dailyForcast.dart';
import 'package:cloudsnap/Constant/constant.dart';
import 'package:cloudsnap/HourlyForcast/hourlyForcast.dart';
import 'package:cloudsnap/ScreenParts/third.dart';
import 'package:flutter/material.dart';

class SecondContainer extends StatelessWidget {
  const SecondContainer({super.key});

  @override
  Widget build(BuildContext context) {
    double mqh = MediaQuery.of(context).size.height;
    double mqw = MediaQuery.of(context).size.width;
    return Container(
        color: themeColor,
        child: Column(
          children: [
            SizedBox(
              height: mqh * 0.020,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: mqh * 0.056,
                  width: mqw * 0.22,
                  decoration: BoxDecoration(
                      color: themeColor10,
                      borderRadius: BorderRadius.circular(15)),
                  child: const Center(child: Text("Today")),
                ),
                Container(
                  height: mqh * 0.056,
                  width: mqw * 0.22,
                  decoration: BoxDecoration(
                      color: themeColor10,
                      borderRadius: BorderRadius.circular(15)),
                  child: const Center(child: Text("Tomorrow")),
                ),
                Container(
                  height: mqh * 0.056,
                  width: mqw * 0.22,
                  decoration: BoxDecoration(
                      color: themeColor10,
                      borderRadius: BorderRadius.circular(15)),
                  child: const Center(child: Text("10 days")),
                )
              ],
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: mqw * 0.02, top: mqh * 0.02, right: mqw * 0.02),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  FeaturesCard(
                    title: 'Wind Speed',
                    icon: 'assets/icon/air.svg',
                    value: '12 km/h',
                    isIncrease: true,
                    changeValue: '2 Km/h',
                  ),
                  FeaturesCard(
                    title: 'Rain Chance',
                    icon: 'assets/icon/rainy.svg',
                    value: '24 %',
                    isIncrease: false,
                    changeValue: '10 %',
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: mqw * 0.02, top: mqh * 0.02, right: mqw * 0.02),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  FeaturesCard(
                    title: 'Pressure',
                    icon: 'assets/icon/waves.svg',
                    value: '720  hpa',
                    isIncrease: false,
                    changeValue: '32 hpa',
                  ),
                  FeaturesCard(
                    title: 'UV Index',
                    icon: 'assets/icon/light_mode.svg',
                    value: '2,3',
                    isIncrease: true,
                    changeValue: '0.3',
                  )
                ],
              ),
            ),
            // SizedBox(
            //   height: mqh * 0.01,
            // ),
            Padding(
              padding: EdgeInsets.only(
                  left: mqw * 0.02, top: mqh * 0.02, right: mqw * 0.02),
              child: const HourlyForcast(),
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: mqw * 0.02, top: mqh * 0.02, right: mqw * 0.02),
              child: const DailyForcast(),
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: mqw * 0.02, top: mqh * 0.02, right: mqw * 0.02),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SunRiseCard(
                      title: "SunRise",
                      icon: 'assets/icon/sunrise.svg',
                      value: "4:20 AM",
                      changeValue: "4 hr Ago"),
                  SunRiseCard(
                      title: "Sunset",
                      icon: "assets/icon/sunset.svg",
                      value: "7:30 PM",
                      changeValue: "in 9 hr")
                ],
              ),
            ),
          ],
        ));
  }
}
