import 'package:cloudsnap/Card/featureCard.dart';
import 'package:cloudsnap/Card/sunRiseCard.dart';
import 'package:cloudsnap/DailyForcast.dart/dailyForcast.dart';
import 'package:cloudsnap/Constant/constant.dart';
import 'package:cloudsnap/hourlyForcast.dart/hourlyForcast.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SecondContainer extends StatelessWidget {
  const SecondContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        color: themeColor,
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 50,
                  width: 100,
                  decoration: BoxDecoration(
                      color: themeColor10,
                      borderRadius: BorderRadius.circular(15)),
                  child: const Center(child: Text("Today")),
                ),
                Container(
                  height: 50,
                  width: 100,
                  decoration: BoxDecoration(
                      color: themeColor10,
                      borderRadius: BorderRadius.circular(15)),
                  child: const Center(child: Text("Tomorrow")),
                ),
                Container(
                  height: 50,
                  width: 100,
                  decoration: BoxDecoration(
                      color: themeColor10,
                      borderRadius: BorderRadius.circular(15)),
                  child: const Center(child: Text("10 days")),
                )
              ],
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Row(
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
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Row(
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
            const SizedBox(
              height: 10,
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: HourlyForcast(),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: DailyForcast(),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Row(
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
            )
          ],
        ));
  }
}


