import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:path_way_flu/core/constants/constants.dart';

class ComplantStudent extends StatelessWidget {
  const ComplantStudent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              "Complaint",
              style: kHeadingextStyle,
            ),
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.close,
                  size: 30,
                ))
          ],
        ),
        Text(
          "Pathway",
          style: GoogleFonts.roboto(
            fontWeight: FontWeight.w600,
            fontSize: 17,
            color: Colors.grey.shade600,
          ),
        ),
        const SizedBox(height: 10),
        Divider(indent: 10, endIndent: 10, color: Colors.grey.shade300),
        Text(
          "Title",
          style: GoogleFonts.roboto(
            fontWeight: FontWeight.w600,
            fontSize: 17,
            color: Colors.grey.shade600,
          ),
        ),
        TextFormField(
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.all(12),
            hintText: "Title",
            hintStyle: GoogleFonts.roboto(
              color: Colors.grey,
              fontSize: 14,
            ),
            enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey),
            ),
            border: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(8))),
          ),
        ),
        const SizedBox(height: 5),
        Text(
          "Discription",
          style: GoogleFonts.roboto(
            fontWeight: FontWeight.w600,
            fontSize: 17,
            color: Colors.grey.shade600,
          ),
        ),
        TextFormField(
          maxLines: 5,
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.all(12),
            hintText: "Discription..",
            hintStyle: GoogleFonts.roboto(
              color: Colors.grey,
              fontSize: 14,
            ),
            enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey),
            ),
            border: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(8))),
          ),
        ),
        const SizedBox(height: 15),
        Row(
          children: [
            SizedBox(
              height: 60,
              child: ElevatedButton(
                style: ButtonStyle(
                    shape: MaterialStatePropertyAll(BeveledRectangleBorder(
                        side: BorderSide(color: Colors.grey.shade400),
                        borderRadius: BorderRadius.circular(3))),
                    backgroundColor:
                        const MaterialStatePropertyAll(Colors.white)),
                onPressed: () {},
                child: const Text(
                  'Cancel',
                  style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
            const Spacer(),
            SizedBox(
              height: 60,
              child: ElevatedButton(
                style: ButtonStyle(
                    shape: MaterialStatePropertyAll(BeveledRectangleBorder(
                        borderRadius: BorderRadius.circular(3))),
                    backgroundColor:
                        MaterialStatePropertyAll(Colors.blue.shade300)),
                onPressed: () {},
                child: const Text(
                  'Conform',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}
