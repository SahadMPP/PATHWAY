import 'package:flutter/material.dart';
import 'package:path_way_flu/app/core/constants/constants.dart';

class BuildProfileCard extends StatelessWidget {
  final String text;
  final VoidCallback fun;
  final IconData icon;
  const BuildProfileCard({
    super.key,
    required this.text,
    required this.fun,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            width: 100,
            child: Text(
              text,
              style:
                  kTitleTextStyle.copyWith(fontSize: 20),
            ),
          ),
          IconButton(
              onPressed: fun,
              icon: Icon(
                icon,
                size: 30,
              ))
        ],
      ),
    );
  }
}
