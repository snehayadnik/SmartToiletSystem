import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/services.dart';
import 'line_titles.dart';
import 'package:google_fonts/google_fonts.dart';

class LineChartWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) => LineChart(
    LineChartData(
      minX: 0,
      maxX: 24,
      minY: 0,
      maxY: 3.5,
      gridData: FlGridData(
        show: false,
      ),
      titlesData: LineTitles.getTitleData(),
      lineBarsData: [
        LineChartBarData(
          spots: [
            FlSpot(1, 0.2),
            FlSpot(2, 1.5),
            FlSpot(3, 1.2),
            FlSpot(4, 0.7),
            FlSpot(5, 3.2),
            FlSpot(6, 2.7),
            FlSpot(7, 2.3),
            FlSpot(8, 1.7),
          ],
          isCurved: true,
          color: Colors.black,
          belowBarData: BarAreaData(
            show: true,
            color: Color(0xff575A5F).withOpacity(0.4),
          ),
        ),
      ],
    ),
  );
}

// class LineTitles {
//   static getTitleData() => FlTitlesData(
//     show: true,
//     bottomTitles: SideTitles(
//       showTitles: true,
//
//     ),
//   );
// }
