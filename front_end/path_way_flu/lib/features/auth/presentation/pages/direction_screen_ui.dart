import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:path_way_flu/features/auth/presentation/pages/sign_in_ui.dart';

class DirectionScreen extends StatelessWidget {
  const DirectionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          DirectionIconBuilder(
              image: "asset/student(Icon).png",
              text: "Student",
              function: () {}),
          DirectionIconBuilder(
              image: "asset/teacher(Image).png",
              text: "Teacher",
              function: () {}),
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
                    Navigator.of(context).pushAndRemoveUntil(
                        MaterialPageRoute(
                            builder: (ctx) => const SignInScreen()),
                        (route) => false);
                  },
                  child: Text(
                    'Continue as a Student',
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

class DirectionIconBuilder extends StatelessWidget {
  final String image;
  final String text;
  final VoidCallback function;
  const DirectionIconBuilder({
    super.key,
    required this.image,
    required this.text,
    required this.function,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: function,
          child: Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: const Color.fromARGB(255, 138, 203, 255),
                width: 3,
              ),
            ),
            child: CircleAvatar(
              radius: 70,
              backgroundImage: AssetImage(image),
              backgroundColor: Colors.yellow,
            ),
          ),
        ),
        const SizedBox(height: 10),
        Text(
          text,
          style: GoogleFonts.roboto(
            fontSize: 22,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        )
      ],
    );
  }
}
