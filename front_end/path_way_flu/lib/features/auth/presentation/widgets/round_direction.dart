import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:path_way_flu/features/auth/presentation/pages/direction/bloc/direction_bloc.dart';

class BuildDirectionScr extends StatelessWidget {
  final String title;
  final String image;
  const BuildDirectionScr({
    super.key,
    required this.title,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
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
                child: CircleAvatar(
                  radius: 70,
                  backgroundImage: AssetImage(image),
                  backgroundColor: Colors.yellow,
                ),
              );
            },
          ),
        ),
        const SizedBox(height: 10),
        Text(
          title,
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
