import 'package:path_way_flu/app/core/bargraph_admin/individual_bar.dart';

class BarData {
  final double social;
  final double english;
  final double hindi;
  final double chemistry;
  final double science;
  final double physics;

  List<IndividualBar> bardata = [];

  BarData(
    this.social,
    this.english,
    this.hindi,
    this.chemistry,
    this.science,
    this.physics,
  );

  void initializedBarData() {
    bardata = [
      IndividualBar(x: 0, y: social),
      IndividualBar(x: 1, y: english),
      IndividualBar(x: 2, y: hindi),
      IndividualBar(x: 3, y: chemistry),
      IndividualBar(x: 4, y: science),
      IndividualBar(x: 5, y: physics),
    ];
  }
}
