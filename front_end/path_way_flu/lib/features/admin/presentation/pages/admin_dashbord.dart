import 'package:flutter/material.dart';
import 'package:path_way_flu/core/constants/constants.dart';
import 'package:path_way_flu/features/admin/bar%20graph/bar_graph.dart';

class AdminDashbord extends StatelessWidget {
  const AdminDashbord({super.key});

  @override
  Widget build(BuildContext context) {
    List<double> weeklySummary = [
      20.40,
      40.40,
      40.40,
      50.40,
      20.40,
      30.40,
    ];
    return Scaffold(
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.only(left: 20, top: 50, right: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 30),
              Text(
                "Dashboard",
                style: kHeadingextStyle.copyWith(fontWeight: FontWeight.w500),
              ),
              const SizedBox(height: 30),
              const Divider(
                color: Color.fromARGB(255, 220, 220, 220),
                thickness: 2,
              ),
              SizedBox(
                height: 130,
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Primary Text",
                          style: kTitleTextStyle.copyWith(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          )),
                      Text("5.324,33",
                          style: kHeadingextStyle.copyWith(
                              fontSize: 34,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1.0)),
                      Text("Secondary text",
                          style: kSubheadingextStyle.copyWith(
                            fontSize: 17,
                            fontWeight: FontWeight.w500,
                          )),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 10),
              SizedBox(
                height: 280,
                width: double.infinity,
                child: MyBarGraph(weeklySummary: weeklySummary),
              ),
              const SizedBox(height: 50),
              const Divider(
                color: Color.fromARGB(255, 220, 220, 220),
                thickness: 2,
              ),
              const BuildPrograssIndicator(
                  title: "Tutor Prograss",
                  persenteg: "75% to compleate",
                  value: 0.7),
              const SizedBox(height: 20),
              const BuildPrograssIndicator(
                  title: "Student Prograss",
                  persenteg: "50% to compleate",
                  value: 0.5),
              const SizedBox(height: 50),
            ],
          ),
        ),
      ),
    );
  }
}

class BuildPrograssIndicator extends StatelessWidget {
  final String title;
  final String persenteg;
  final double value;
  const BuildPrograssIndicator({
    super.key,
    required this.title,
    required this.persenteg,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: kSubtitleTextSyule.copyWith(
                color: Colors.grey, fontSize: 13, fontWeight: FontWeight.bold),
          ),
          Text(
            persenteg,
            style: kTitleTextStyle.copyWith(
                color: const Color.fromARGB(255, 0, 78, 212), fontSize: 22),
          ),
          const SizedBox(height: 10),
          ClipRRect(
            borderRadius: const BorderRadius.all(Radius.circular(10)),
            child: LinearProgressIndicator(
              minHeight: 10,
              value: value,
              color: Colors.grey,
              valueColor:
                  const AlwaysStoppedAnimation<Color>(Color(0xff00ff00)),
              backgroundColor: const Color(0xffD6D6D6),
            ),
          ),
        ],
      ),
    );
  }
}
