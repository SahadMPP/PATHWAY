import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:path_way_flu/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:path_way_flu/features/auth/presentation/pages/sign_in_ui.dart';
import 'package:path_way_flu/features/auth/presentation/widgets/button_buil.dart';

class DirectionScreen extends StatelessWidget {
  const DirectionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            children: [
              GestureDetector(
                onTap: () => context
                    .read<AuthBloc>()
                    .add(const AuthEvent.directionSelection()),
                child: BlocBuilder<AuthBloc, AuthState>(
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
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              )
            ],
          ),
          Column(
            children: [
              GestureDetector(
                onTap: () => context
                    .read<AuthBloc>()
                    .add(const AuthEvent.directionSelection()),
                child: BlocBuilder<AuthBloc, AuthState>(
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
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              )
            ],
          ),
          Center(
            child: BlocBuilder<AuthBloc, AuthState>(
              builder: (context, state) {
                return BuildButton(
                    text: "Continue as a ${state.directionText}",
                    fun: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (ctx) => const SignInScreen()));
                    });
              },
            ),
          )
        ],
      ),
    );
  }
}
