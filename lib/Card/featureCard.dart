import 'package:cloudsnap/Constant/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FeaturesCard extends StatelessWidget {
  final String title;
  final String icon;
  final String value;
  final bool isIncrease;
  final String changeValue;
  const FeaturesCard(
      {super.key,
      required this.title,
      required this.icon,
      required this.value,
      required this.isIncrease,
      required this.changeValue});

  @override
  Widget build(BuildContext context) {
    double mqh = MediaQuery.of(context).size.height;
    double mqw = MediaQuery.of(context).size.width;
    return Container(
      height: mqh * 0.098,
      width: mqw * 0.460,
      decoration: BoxDecoration(
          color: themeColor5, borderRadius: BorderRadius.circular(20)),
      child: Padding(
        padding: EdgeInsets.only(
            left: mqw * 0.01,
            top: mqh * 0.01,
            right: mqw * 0.02,
            bottom: mqh * 0.01),
        child: Row(
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              width: mqw * 0.008,
            ),
            CircleAvatar(
              backgroundColor: Colors.white,
              child: SvgPicture.asset(icon),
            ),
            SizedBox(
              width: mqw * 0.02,
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: mqh * 0.008,
                  ),
                  Container(
                    // color: Colors.white,
                    // width: double.infinity,
                    child: Row(
                      // crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(value),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            SizedBox(
                              height: mqh * 0.04,
                            ),
                            isIncrease
                                ? Icon(
                                    Icons.arrow_upward,
                                    size: mqw * 0.034,
                                    color: themeColor25,
                                  )
                                : Icon(
                                    Icons.arrow_upward,
                                    size: mqw * 0.034,
                                    color: Colors.red,
                                  ),
                            Text(
                              changeValue,
                              style: TextStyle(fontSize: mqw * 0.0240),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
