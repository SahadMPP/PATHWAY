import 'package:flutter/material.dart';
import 'package:path_way_flu/core/constants/constants.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:syncfusion_flutter_charts/sparkcharts.dart';

class TeacherPrograssScreen extends StatelessWidget {
  const TeacherPrograssScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 15, right: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 30),
              const Text("Hey Alex,", style: kHeadingextStyle),
              const Text("Here is your status.", style: kSubheadingextStyle),
              const SizedBox(height: 30),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Statistics",
                        style: kSubheadingextStyle.copyWith(fontSize: 15),
                      ),
                      const Text(
                        "1,027",
                        style: kTitleTextStyle,
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Real-time progress",
                        style: kTitleTextStyle.copyWith(fontSize: 15),
                      ),
                      Text(
                        "12.58%",
                        style: kSubheadingextStyle.copyWith(
                          fontSize: 15,
                          color: Colors.greenAccent,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 30),
                  SizedBox(
                    height: 250,
                    width: double.infinity,
                    child: SfSparkLineChart(
                      data: const <double>[
                        1,
                        5,
                        -6,
                        0,
                        1,
                        -2,
                        7,
                        -7,
                        -4,
                        -10,
                        13,
                        -6,
                        7,
                        5,
                        11,
                        5,
                        3
                      ],
                      marker: const SparkChartMarker(
                          displayMode: SparkChartMarkerDisplayMode.all),
                      labelDisplayMode: SparkChartLabelDisplayMode.all,
                    ),
                  ),
                  const SizedBox(height: 50),
                  Row(
                    children: [
                      SizedBox(
                        height: 80,
                        width: 80,
                        child: CircularPercentIndicator(
                          radius: 30.0,
                          lineWidth: 7.0,
                          percent: 0.3,
                          center: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Status",
                                style: kSubheadingextStyle.copyWith(
                                    fontSize: 10, height: 1.2),
                              ),
                              Text(
                                "1 of 12",
                                style: kSubheadingextStyle.copyWith(
                                    fontSize: 10, height: 1.2),
                              ),
                            ],
                          ),
                          progressColor: const Color.fromARGB(255, 0, 79, 216),
                          backgroundColor:
                              const Color.fromARGB(255, 222, 237, 244),
                        ),
                      ),
                      const SizedBox(width: 15),
                      ConstrainedBox(
                        constraints: const BoxConstraints(maxWidth: 260),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Math",
                              style: kTitleTextStyle.copyWith(
                                  fontSize: 18, color: kBlueColor),
                            ),
                            Text(
                              "Without mathematics, there's nothing you can doout mathtics, there's no",
                              style: kSubheadingextStyle.copyWith(
                                  fontSize: 13, height: 1.2),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: 100),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      InkWell(
                        onTap: () {},
                        child: Row(
                          children: [
                            const Icon(
                              Icons.arrow_back,
                              size: 20,
                              color: Colors.grey,
                            ),
                            const SizedBox(width: 10),
                            Text("Previous",
                                style: kSubtitleTextSyule.copyWith(
                                    color: Colors.grey, fontSize: 17))
                          ],
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: Row(
                          children: [
                            Text("Next",
                                style: kSubtitleTextSyule.copyWith(
                                    color: Colors.grey, fontSize: 17)),
                            const SizedBox(width: 10),
                            const Icon(
                              Icons.arrow_forward,
                              size: 20,
                              color: Colors.grey,
                            ),
                          ],
                        ),
                      ),
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
