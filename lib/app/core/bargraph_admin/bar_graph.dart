import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:path_way_flu/app/core/bargraph_admin/bar_data.dart';

class MyBarGraph extends StatelessWidget {
  final List weeklySummary;
  const MyBarGraph({super.key, required this.weeklySummary});

  @override
  Widget build(BuildContext context) {
    List<Color> colors = [
      Colors.yellow,
      Colors.blue,
      Colors.green,
      Colors.purple,
      Colors.pink,
      Colors.grey,
      Colors.blue,
    ];

    BarData myBarData = BarData(
      weeklySummary[0],
      weeklySummary[1],
      weeklySummary[2],
      weeklySummary[3],
      weeklySummary[4],
      weeklySummary[5],
    );
    myBarData.initializedBarData();

    return BarChart(BarChartData(
      maxY: 100,
      minY: 0,
      titlesData: const FlTitlesData(
          rightTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
          topTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
          bottomTitles: AxisTitles(
              sideTitles: SideTitles(
                  showTitles: true, getTitlesWidget: getBottomTitle))),
      gridData: const FlGridData(
        horizontalInterval: 60,
        show: true,
      ),
      barGroups: myBarData.bardata
          .asMap()
          .entries
          .map(
            (entry) => BarChartGroupData(
              x: entry.value.x,
              barRods: [
                BarChartRodData(
                  toY: entry.value.y,
                  color: colors[entry.key % colors.length],
                  width: 12,
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(8),
                      topRight: Radius.circular(8)),
                ),
              ],
            ),
          )
          .toList(),
    ));
  }
}

Widget getBottomTitle(double value, TitleMeta meta) {
  const style = TextStyle(
    color: Colors.grey,
    fontWeight: FontWeight.bold,
    fontSize: 13,
  );

  Widget text;
  switch (value.toInt()) {
    case 0:
      text = const Text('Sce', style: style);
      break;
    case 1:
      text = const Text('Com', style: style);
      break;
    case 2:
      text = const Text('Mth', style: style);
      break;
    case 3:
      text = const Text('Che', style: style);
      break;
    case 4:
      text = const Text('Sci', style: style);
      break;
    case 5:
      text = const Text('Phy', style: style);
      break;
    case 6:
      text = const Text('Sci', style: style);
      break;
    default:
      text = const Text('', style: style);
  }
  return SideTitleWidget(axisSide: meta.axisSide, child: text);
}
