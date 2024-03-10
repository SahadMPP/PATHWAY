import 'package:flutter/material.dart';
import 'package:path_way_flu/app/core/constants/constants.dart';

class BuildProfileWithToggle extends StatefulWidget {
  final String text;
  final VoidCallback fun;

  const BuildProfileWithToggle({
    super.key,
    required this.text,
    required this.fun,
  });

  @override
  State<BuildProfileWithToggle> createState() => _BuildProfileWithToggleState();
}

class _BuildProfileWithToggleState extends State<BuildProfileWithToggle> {
  bool isSwitched = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            width: 120,
            child: Text(
              widget.text,
              style:
                  kTitleTextStyle.copyWith(fontSize: 20),
            ),
          ),
          SizedBox(
            height: 20,
            width: 70,
            child: Switch(
                thumbColor: MaterialStatePropertyAll(
                    Theme.of(context).colorScheme.onSecondary),
                value: isSwitched,
                onChanged: (value) {
                  setState(() {
                    isSwitched = value;
                  });
                }),
          ),
        ],
      ),
    );
  }
}
