import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:path_way_flu/features/auth/presentation/pages/sign_in_ui.dart';

class DirectionScreen extends StatefulWidget {
  const DirectionScreen({super.key});

  @override
  State<DirectionScreen> createState() => _DirectionScreenState();
}

class _DirectionScreenState extends State<DirectionScreen> {
  bool takevalue = true;
  String taxtValue = "Student";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            children: [
              GestureDetector(
                onTap: () {
                  setState(() {
                    if (takevalue == true) {
                      takevalue = false;
                      taxtValue = "Teacher";
                    } else {
                      takevalue = true;
                      taxtValue = "Student";
                    }
                  });
                },
                child: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: takevalue
                          ? const Color.fromARGB(255, 138, 203, 255)
                          : Colors.white,
                      width: 3,
                    ),
                  ),
                  child: const CircleAvatar(
                    radius: 70,
                    backgroundImage: AssetImage("asset/student(Icon).png"),
                    backgroundColor: Colors.yellow,
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Text(
                "Student",
                style: GoogleFonts.roboto(
                  fontSize: 22,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              )
            ],
          ),
          Column(
            children: [
              GestureDetector(
                onTap: () {
                  setState(() {
                    if (takevalue == true) {
                      takevalue = false;
                      taxtValue = "Teacher";
                    } else {
                      takevalue = true;
                      taxtValue = "Student";
                    }
                  });
                },
                child: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: takevalue
                          ? Colors.white
                          : const Color.fromARGB(255, 138, 203, 255),
                      width: 3,
                    ),
                  ),
                  child: const CircleAvatar(
                    radius: 70,
                    backgroundImage: AssetImage("asset/teacher(Image).png"),
                    backgroundColor: Colors.yellow,
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Text(
                "Teacher",
                style: GoogleFonts.roboto(
                  fontSize: 22,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              )
            ],
          ),
          Center(
            child: SizedBox(
              height: 60,
              width: 350,
              child: ElevatedButton(
                  style: const ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(Colors.blue),
                      shape: MaterialStatePropertyAll(BeveledRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(5))))),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (ctx) =>
                                SignInScreen(textValue: taxtValue)));
                  },
                  child: Text(
                    'Continue as a $taxtValue',
                    style: GoogleFonts.roboto(
                      fontSize: 17,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  )),
            ),
          )
        ],
      ),
    );
  }
}

// class DirectionIconBuilder extends StatefulWidget {
//   final String image;
//   final String text;
//   // final VoidCallback function;
//   const DirectionIconBuilder({
//     super.key,
//     required this.image,
//     required this.text,
//     // required this.function,
//   });

//   @override
//   State<DirectionIconBuilder> createState() => _DirectionIconBuilderState();
// }

// class _DirectionIconBuilderState extends State<DirectionIconBuilder> {
//   bool takevalue = false;
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         GestureDetector(
//           onTap: () {
//             setState(() {
//               if (takevalue == true) {
//                 takevalue = false;
//                 print("student");
//               } else {
//                 takevalue = true;
//                 print("teacher");
//               }
//             });
//           },
//           child: Container(
//             decoration: BoxDecoration(
//               shape: BoxShape.circle,
//               border: Border.all(
//                 color: takevalue
//                     ? const Color.fromARGB(255, 138, 203, 255)
//                     : Colors.white,
//                 width: 3,
//               ),
//             ),
//             child: CircleAvatar(
//               radius: 70,
//               backgroundImage: AssetImage(widget.image),
//               backgroundColor: Colors.yellow,
//             ),
//           ),
//         ),
//         const SizedBox(height: 10),
//         Text(
//           widget.text,
//           style: GoogleFonts.roboto(
//             fontSize: 22,
//             color: Colors.black,
//             fontWeight: FontWeight.bold,
//           ),
//         )
//       ],
//     );
//   }
// }
