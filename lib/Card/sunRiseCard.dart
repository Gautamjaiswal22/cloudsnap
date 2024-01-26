import 'package:cloudsnap/Constant/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SunRiseCard extends StatelessWidget {
  final String title;
  final String icon;
  final String value;
  // final bool isIncrease;
  final String changeValue;
  const SunRiseCard(
      {super.key,
      required this.title,
      required this.icon,
      required this.value,
      // required this.isIncrease,
      required this.changeValue});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: 190,
      decoration: BoxDecoration(
          color: themeColor5, borderRadius: BorderRadius.circular(20)),
      child: Row(
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const SizedBox(
            width: 5,
          ),
          CircleAvatar(
            backgroundColor: Colors.white,
            child: SvgPicture.asset(icon),
          ),
          const SizedBox(
            width: 10,
          ),
          Container(
            width: 70,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(fontWeight: FontWeight.w500),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(value),
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Padding(
              padding: const EdgeInsets.all(6.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    changeValue,
                    style: const TextStyle(fontSize: 12),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
