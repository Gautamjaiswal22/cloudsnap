import 'package:cloudsnap/Constant/constant.dart';
import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Weather Forecast Chart'),
        ),
        body: WeatherChart(),
      ),
    );
  }
}

class WeatherChart extends StatelessWidget {
  final Map<String, dynamic> weatherData = {
    "latitude": 52.52,
    "longitude": 13.419998,
    "generationtime_ms": 0.051975250244140625,
    "utc_offset_seconds": 0,
    "timezone": "GMT",
    "timezone_abbreviation": "GMT",
    "elevation": 38.0,
    "daily_units": {"time": "iso8601", "temperature_2m_max": "°C"},
    "daily": {
      "time": [
        "2024-01-19",
        "2024-01-20",
        "2024-01-21",
        "2024-01-22",
        "2024-01-23",
        "2024-01-24",
        "2024-01-25"
      ],
      "day": ["sun", "mon", "tue", "wed", "thu", "fri", "sat"],
      "temperature_2m_max": [0.6, 1.5, 1.6, 6.1, 9.0, 11.7, 6.8]
    }
  };

  @override
  Widget build(BuildContext context) {
    double mqh = MediaQuery.of(context).size.height;
    double mqw = MediaQuery.of(context).size.width;

    return Padding(
      padding: EdgeInsets.all(mqw * 0.016),
      child: Container(
        height: mqh * 0.22,
        child: LineChart(
          LineChartData(
            titlesData: FlTitlesData(
                topTitles: const AxisTitles(
                    sideTitles:
                        SideTitles(showTitles: false, reservedSize: 30)),
                //  rightTitles: AxisTitles(
                //        sideTitles: SideTitles(showTitles: false, reservedSize: 30)),
                // leftTitles: AxisTitles(
                //     sideTitles: SideTitles(showTitles: true, reservedSize: 30)),

                // leftTitles: SideTitles(showTitles: true, reservedSize: 30),
                bottomTitles: AxisTitles(
                  sideTitles: SideTitles(
                    showTitles: true,
                    // getTitlesWidget: (value) {
                    //   return Text( "weatherData['daily']['time'][value.toInt()]");
                    // },
                    getTitlesWidget: (value, titleMeta) {
                      return Text(weatherData['daily']['day'][value.toInt()]
                          .toString());
                    },

                    reservedSize: 30,
                  ),
                )),
            borderData: FlBorderData(
              show: false,
              border: Border.all(color: const Color(0xff37434d), width: 1),
            ),
            gridData: const FlGridData(
              show: true,
              drawHorizontalLine: true,
              drawVerticalLine: false,
            ),
            lineBarsData: [
              LineChartBarData(
                spots: getWeatherDataSpots(),
                isCurved: true,
                color: Colors.black,
                belowBarData: BarAreaData(
                    show: true,
                    // color: themeColor10.withOpacity(0.2),
                    gradient: LinearGradient(colors: [
                      themeColor10,
                      themeColor5.withOpacity(0.2),
                      themeColor5.withOpacity(0)
                    ])
                    // spotsLine: BarAreaSpotsLine()
                    ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  List<FlSpot> getWeatherDataSpots() {
    final List<String> dates = weatherData['daily']['time'];
    final List<double> temperatures =
        weatherData['daily']['temperature_2m_max'];

    return List.generate(dates.length, (index) {
      return FlSpot(index.toDouble(), temperatures[index]);
    });
  }
}
