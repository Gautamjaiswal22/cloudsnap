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
    double mqh = MediaQuery.of(context).size.height;
    double mqw = MediaQuery.of(context).size.width;

    return Container(
      height: mqh * 0.098,
      width: mqw * 0.46,
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
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                      fontWeight: FontWeight.w500, fontSize: mqh * 0.018),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      value,
                      style: TextStyle(fontSize: mqw * 0.036),
                    ),
                    Padding(
                      padding:
                          EdgeInsets.only(top: mqh * 0.02, right: mqw * 0.04),
                      child: Text(
                        changeValue,
                        style: TextStyle(fontSize: mqw * 0.032),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
