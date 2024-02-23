import 'package:path_way_flu/app/core/bargraph_admin/individual_bar.dart';

class BarData {
  final double malayalam;
  final double english;
  final double hindi;
  final double chemistry;
  final double science;
  final double physics;

  List<IndividualBar> bardata = [];

  BarData(
    this.malayalam,
    this.english,
    this.hindi,
    this.chemistry,
    this.science,
    this.physics,
  );

  void initializedBarData() {
    bardata = [
      IndividualBar(x: 0, y: malayalam),
      IndividualBar(x: 1, y: english),
      IndividualBar(x: 2, y: hindi),
      IndividualBar(x: 3, y: chemistry),
      IndividualBar(x: 4, y: science),
      IndividualBar(x: 5, y: physics),
    ];
  }
}
