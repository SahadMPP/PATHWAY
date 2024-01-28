import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StudentStatus extends StatelessWidget {
  const StudentStatus({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 240, 240, 240),
        centerTitle: true,
        title: Text(
          "Math",
          style: GoogleFonts.quicksand(
            fontSize: 28,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      backgroundColor: const Color.fromARGB(255, 240, 240, 240),
      body: Padding(
        padding: const EdgeInsets.only(left: 15, right: 15, top: 30),
        child: ListView.builder(
            itemCount: 3,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15)),
                    child: Row(
                      children: [
                        Container(
                          height: 90,
                          width: 100,
                          decoration: BoxDecoration(
                              image: const DecorationImage(
                                  image: AssetImage(
                                      "asset/subjucts_icon/chemistry.jpg"),
                                  fit: BoxFit.cover),
                              borderRadius: BorderRadius.circular(15)),
                        ),
                        const SizedBox(width: 10),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text('Maths',
                                style: GoogleFonts.roboto(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black,
                                )),
                            const SizedBox(height: 5),
                            Text('Kumar Mohan',
                                style: GoogleFonts.roboto(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.grey,
                                )),
                            const SizedBox(height: 10),
                            SizedBox(
                              width: 260,
                              child: LinearProgressIndicator(
                                minHeight: 5,
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.blueAccent,
                                value: 3 / 5,
                              ),
                            )
                          ],
                        )
                      ],
                    )),
              );
            }),
      ),
    );
  }
}
