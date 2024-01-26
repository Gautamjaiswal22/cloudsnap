import 'package:cloudsnap/Constant/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HourlyForcast extends StatelessWidget {
  const HourlyForcast({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
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
                const Text("Hourly Forcast"),
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

class ForcastCard extends StatelessWidget {
  final String title;
  final String icon;
  final String value;
  const ForcastCard(
      {super.key,
      required this.title,
      required this.icon,
      required this.value});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
          Text(title),
          Image.asset(icon),
          Text(value),
        ]),
      ),
    );
  }
}
