import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class LineTitles {
  static getTitleData() => FlTitlesData(
    show: true,
    bottomTitles: AxisTitles(
      sideTitles: SideTitles(
        showTitles: true,
      ),
    ),
    topTitles: AxisTitles(
      sideTitles: SideTitles(
        showTitles: false,
      ),
    ),
    rightTitles: AxisTitles(
      sideTitles: SideTitles(
        showTitles: false,
      ),
    ),
  );
}