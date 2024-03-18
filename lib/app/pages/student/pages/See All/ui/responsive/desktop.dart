import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:path_way_flu/app/pages/student/pages/See%20All/bloc/see_all_bloc.dart';
import 'package:path_way_flu/app/pages/student/widgets/see_all_card.dart';

class SeeAllDesk extends StatelessWidget {
  const SeeAllDesk({super.key});

  @override
  Widget build(BuildContext context) {
    context.read<SeeAllBloc>().add(const SeeAllEvent.givingInitialValue());
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        toolbarHeight: 70,
        title: TextFormField(
          onChanged: (value) {
            context
                .read<SeeAllBloc>()
                .add(SeeAllEvent.fulturedValue(typeText: value));
          },
          decoration: InputDecoration(
              border: const UnderlineInputBorder(borderSide: BorderSide.none),
              hintText: 'Search',
              hintStyle: GoogleFonts.roboto(
                fontWeight: FontWeight.w500,
                fontSize: 22,
              )),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Basic Calculas',
                    style: GoogleFonts.quicksand(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    AppLocalizations.of(context).lesson,
                    style: GoogleFonts.quicksand(
                      fontSize: 18,
                      color: Theme.of(context).colorScheme.onSecondary,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              const ProdectCard(count: 6)
            ],
          ),
        ),
      ),
    );
  }
}

