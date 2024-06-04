import 'package:flutter/material.dart';

class BuildEditTexfielCard extends StatelessWidget {
  final TextEditingController? controller;
  final String title;
  final String hintText;
  const BuildEditTexfielCard({
    super.key,
    required this.title,
    required this.hintText,
    this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 20,
            ),
          ),
          const Spacer(),
          SizedBox(
            width:MediaQuery.of(context).size.width *.5,
            child: TextFormField(
              controller: controller,
              decoration: InputDecoration(
                hintText: hintText,
                // enabled: false,
              ),
            ),
          )
        ],
      ),
    );
  }
}
