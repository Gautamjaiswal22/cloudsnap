import 'package:cloudsnap/DailyForcast.dart/chart.dart';
import 'package:cloudsnap/Constant/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DailyForcast extends StatelessWidget {
  const DailyForcast({super.key});

  @override
  Widget build(BuildContext context) {
    double mqh = MediaQuery.of(context).size.height;
    double mqw = MediaQuery.of(context).size.width;

    return Container(
      height: mqh * 0.36,
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
                  "Daily Forcast",
                  style: TextStyle(
                      fontSize: mqw * 0.048, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(mqh * 0.01),
            child: WeatherChart(),
          )
        ],
      ),
    );
  }
}
