import 'package:cloudsnap/Card/forcastCard.dart';
import 'package:cloudsnap/Constant/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HourlyForcast extends StatelessWidget {
  const HourlyForcast({super.key});

  @override
  Widget build(BuildContext context) {
    double mqh = MediaQuery.of(context).size.height;
    double mqw = MediaQuery.of(context).size.width;

    return Container(
      height: mqh * 0.22,
      width: double.infinity,
      decoration: BoxDecoration(
          color: themeColor5, borderRadius: BorderRadius.circular(20)),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(mqw * 0.02),
            child: Row(
              children: [
                CircleAvatar(
                  backgroundColor: Colors.white,
                  child: SvgPicture.asset("assets/icon/history_toggle_off.svg"),
                ),
                SizedBox(
                  width: mqw * 0.02,
                ),
                Text(
                  "Hourly Forcast",
                  style: TextStyle(
                      fontSize: mqw * 0.048, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          const SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                SizedBox(
                  width: 20,
                ),
                ForcastCard(
                  title: 'Now',
                  icon: 'assets/cloudAndSun.png',
                  value: '10',
                ),
                ForcastCard(
                  title: '10 AM',
                  icon: 'assets/cloudAndSun.png',
                  value: '10',
                ),
                ForcastCard(
                  title: '11 AM',
                  icon: 'assets/cloud.png',
                  value: '12',
                ),
                ForcastCard(
                  title: '12 PM',
                  icon: 'assets/cloudAndSun.png',
                  value: '10',
                ),
                ForcastCard(
                  title: '1 PM',
                  icon: 'assets/cloud.png',
                  value: '10',
                ),
                ForcastCard(
                  title: '2 PM',
                  icon: 'assets/cloudAndSun.png',
                  value: '10',
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
