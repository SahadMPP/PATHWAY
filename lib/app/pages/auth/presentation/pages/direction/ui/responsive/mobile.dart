import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:path_way_flu/app/pages/auth/presentation/pages/direction/bloc/direction_bloc.dart';
import 'package:path_way_flu/app/pages/auth/presentation/pages/sign_in/ui/sign_in.dart';
import 'package:path_way_flu/app/pages/teacher/widgets/button_buil.dart';
import 'package:get/get.dart' as getx;

class DirectionMob extends StatelessWidget {
  const DirectionMob({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            children: [
              GestureDetector(
                onTap: () => context
                    .read<DirectionBloc>()
                    .add(const DirectionEvent.directionSelection()),
                child: BlocBuilder<DirectionBloc, DirectionState>(
                  builder: (context, state) {
                    return Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: state.directionValue
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
                    );
                  },
                ),
              ),
              const SizedBox(height: 10),
              Text(
                "Student",
                style: GoogleFonts.roboto(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              )
            ],
          ),
          Column(
            children: [
              GestureDetector(
                onTap: () => context
                    .read<DirectionBloc>()
                    .add(const DirectionEvent.directionSelection()),
                child: BlocBuilder<DirectionBloc, DirectionState>(
                  builder: (context, state) {
                    return Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: state.directionValue
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
                    );
                  },
                ),
              ),
              const SizedBox(height: 10),
              Text(
                "Teacher",
                style: GoogleFonts.roboto(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              )
            ],
          ),
          Center(
            child: BlocBuilder<DirectionBloc, DirectionState>(
              builder: (context, state) {
                return BuildButton(
                    text: "Continue as a ${state.directionText}",
                    fun: () {
                      getx.Get.to(SignIn(directiontext: state.directionText),
                          transition: getx.Transition.fade,
                          duration: const Duration(seconds: 1));
                    });
              },
            ),
          )
        ],
      ),
    );
  }
}
