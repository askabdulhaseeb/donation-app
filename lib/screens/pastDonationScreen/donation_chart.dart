import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class DonationChart extends StatefulWidget {
  const DonationChart({Key? key}) : super(key: key);

  @override
  _DonationChartState createState() => _DonationChartState();
}

class _DonationChartState extends State<DonationChart> {
  final List<Color> _colors = const <Color>[
    Color(0xFF2AE0A3),
    Color(0xFF4AE0A3),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: LineChart(
        LineChartData(
          minX: 0,
          maxX: 6,
          minY: 0,
          maxY: 5,
          titlesData: FlTitlesData(show: false),
          gridData: FlGridData(show: false),
          borderData: FlBorderData(show: false),
          backgroundColor: Colors.greenAccent[100],
          lineBarsData: <LineChartBarData>[
            LineChartBarData(
              spots: <FlSpot>[
                FlSpot(0, 3),
                FlSpot(1, 2),
                FlSpot(2, 3),
                FlSpot(3, 2),
                FlSpot(4, 1),
                FlSpot(5, 2),
                FlSpot(6, 1),
              ],
              isCurved: true,
              colors: _colors,
              dotData: FlDotData(show: false),
              belowBarData: BarAreaData(
                show: true,
                colors: _colors,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
