import 'package:cloudsnap/DailyForcast.dart/chart.dart';
import 'package:cloudsnap/Constant/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DailyForcast extends StatelessWidget {
  const DailyForcast({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      width: double.infinity,
      decoration: BoxDecoration(
          color: themeColor5, borderRadius: BorderRadius.circular(20)),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                CircleAvatar(
                  backgroundColor: Colors.white,
                  child: SvgPicture.asset("assets/icon/history_toggle_off.svg"),
                ),
                const SizedBox(
                  width: 10,
                ),
                const Text(
                  "Daily Forcast",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          WeatherChart()
        ],
      ),
    );
  }
}
