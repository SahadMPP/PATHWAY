import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:path_way_flu/features/auth/domain/usecases/define_fun.dart';

class SpleshScreen extends StatefulWidget {
  const SpleshScreen({super.key});

  @override
  State<SpleshScreen> createState() => _SpleshScreenState();
}

class _SpleshScreenState extends State<SpleshScreen> {
  @override
  void initState() {
    AuthFuntion().checklogin(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 1, 104, 214),
      body: Center(
        child: Text("PathWay",
            style: GoogleFonts.bebasNeue(
              color: Colors.white,
              fontSize: 45,
              letterSpacing: 3,
              fontWeight: FontWeight.bold,
            )),
      ),
    );
  }
}
