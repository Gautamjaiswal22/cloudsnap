import 'package:flutter/material.dart';

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
    double mqh = MediaQuery.of(context).size.height;
    double mqw = MediaQuery.of(context).size.width;

    return Container(
      width: mqw * 0.22,
      child: Padding(
        padding: EdgeInsets.all(mqw * 0.01),
        child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
          Text(title),
          Padding(
            padding: EdgeInsets.all(mqh * 0.01),
            child: Image.asset(icon),
          ),
          Text(value),
        ]),
      ),
    );
  }
}
