import 'package:flutter/material.dart';
import 'package:path_way_flu/app/core/constants/colors.dart';
import 'package:path_way_flu/app/data/model/chart_progress.dart';

import 'package:syncfusion_flutter_charts/charts.dart';

class AdminChart extends StatelessWidget {
  const AdminChart({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double defaultPadding = 16;
  
    return Container(
      padding:  EdgeInsets.symmetric(
        horizontal: defaultPadding,
        vertical: defaultPadding,
      ),
      decoration: BoxDecoration(
          color: secondarybgColor, borderRadius: BorderRadius.circular(10)),
      child: SizedBox(
        child: SfCartesianChart(
          onDataLabelRender: (args) {
            int index = args
                .pointIndex; // Use args.pointIndex instead of args.dataPoints
            List<ChartPoint<String>> dataPoints = args.dataPoints;
            if (dataPoints[index].y == 2300) {
              args.text = "2,320.00 USD\n Nov,7";
              args.textStyle =
                  const TextStyle(fontSize: 8, color: Colors.black);
              args.offset = const Offset(0, 20);
            } else {
              args.text = "";
              args.offset = const Offset(0, 20);
            }
          },
          onMarkerRender: (markerArgs) {
            if (!(markerArgs.pointIndex == 7)) {
              markerArgs.markerHeight = 0;
              markerArgs.markerWidth = 0;
            }
          },
          plotAreaBackgroundColor: Colors.transparent,
          margin: const EdgeInsets.all(0),
          backgroundColor: Colors.transparent,
          borderWidth: 0,
          plotAreaBorderWidth: 0,
          primaryXAxis: const CategoryAxis(
              labelAlignment: LabelAlignment.center,
              labelPlacement: LabelPlacement.onTicks,
              labelPosition: ChartDataLabelPosition.outside,
              axisLine: AxisLine(width: 0),
              majorGridLines: MajorGridLines(width: 0),
              majorTickLines: MajorTickLines(width: 0),
              edgeLabelPlacement: EdgeLabelPlacement.shift,
              plotOffset: 5,
              labelsExtent: 30,
              interval: 3,
              labelStyle: TextStyle(
                  color: textColor,
                  fontFamily: "Roboto",
                  fontSize: 14,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.w500)),
          primaryYAxis: const NumericAxis(
            axisLine: AxisLine(width: 0),
            labelStyle: TextStyle(
              color: textColor,
              fontFamily: "Roboto",
              fontSize: 14,
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.w500,
            ),
            minimum: 0,
            maximum: 2500,
            interval: 500,
          ),
          series: <CartesianSeries<ChartAreaData, String>>[
            SplineAreaSeries(
              dataSource: chartData,
              xValueMapper: (ChartAreaData data, _) => data.month,
              yValueMapper: (ChartAreaData data, _) => data.amount,
              gradient: LinearGradient(
                  colors: [splineColor, secondaryColor.withAlpha(150)],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter),
            ),
            SplineSeries(
              color: splineColor,
              width: 2,
              dataSource: chartData,
              markerSettings: const MarkerSettings(
                  isVisible: true,
                  color: primaryColor,
                  borderColor: Colors.white),
              dataLabelSettings: const DataLabelSettings(
                  isVisible: true, labelAlignment: ChartDataLabelAlignment.top),
              xValueMapper: (ChartAreaData data, _) => data.month,
              yValueMapper: (ChartAreaData data, _) => data.amount,
            )
          ],
        ),
      ),
    );
  }
}

final List<ChartAreaData> chartData = <ChartAreaData>[
  ChartAreaData("Sept", 600),
  ChartAreaData("2Sept", 1300),
  ChartAreaData("3Sept", 400),
  ChartAreaData("Oct", 900),
  ChartAreaData("20ct", 600),
  ChartAreaData("30ct", 1000),
  ChartAreaData("Nov", 900),
  ChartAreaData("2Nov", 2300),
  ChartAreaData("3Nov", 1500),
  ChartAreaData("Dec", 1800),
  ChartAreaData("2Dec", 1500),
  ChartAreaData("3Dec", 1600),
  ChartAreaData("Jan", 1000),
  ChartAreaData("2Jan", 1400),
  ChartAreaData("3Jan", 1200),
  ChartAreaData("Feb", 1300),
  ChartAreaData("2Feb", 1200),
  ChartAreaData("3Feb", 1500),
]; // <ChartAreaData>[]