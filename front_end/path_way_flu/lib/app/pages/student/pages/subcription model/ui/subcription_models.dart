import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:path_way_flu/app/core/constants/subject_list.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:path_way_flu/app/pages/student/pages/subcription%20model/bloc/subcription_bloc.dart';
import 'package:path_way_flu/app/pages/student/pages/subcription%20model/ui/subcription_detailepage.dart';
import 'package:path_way_flu/main.dart';
class SubcriptionScreen extends StatelessWidget {
  const SubcriptionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.background,
        centerTitle: true,
        title: Text(
          'Hi,$userName',
          style: GoogleFonts.aBeeZee(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.notification_add))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 10),
              Align(
                alignment: Alignment.center,
                child: Column(
                  children: [
                    Text(
                      "₹699",
                      style: GoogleFonts.aBeeZee(
                        fontSize: 80,
                        fontWeight: FontWeight.w400,
                        letterSpacing: 0,
                        height: 0,
                      ),
                    ),
                    Text(
                      AppLocalizations.of(context)!.forTotalCourse,
                      style: GoogleFonts.aBeeZee(
                          fontWeight: FontWeight.w400,
                          letterSpacing: 0,
                          height: 0,
                          color: Colors.grey[400]),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 25),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SubcriptionMiniCard(
                      text: AppLocalizations.of(context)!.moreSubs,
                      icon: Icons.settings,
                      bgcolor: Colors.transparent,
                      borderColor: Colors.grey[800]),
                  const Spacer(),
                  SubcriptionMiniCard(
                      text: AppLocalizations.of(context)!.addNewSub,
                      icon: Icons.add,
                      bgcolor: Theme.of(context).colorScheme.primary,
                      borderColor: Theme.of(context).colorScheme.secondary),
                ],
              ),
              const SizedBox(height: 40),
               BuildSubcriptionSubhead(text: AppLocalizations.of(context)!.upcomingSubjectPayment),
              const SizedBox(height: 10),
              const BuildMainCardSubcirption(
                  image: "asset/subjucts_icon/mahts.png",
                  subjuct: "Arithmetic",
                  date: "Nov 24,2023",
                  rate: "₹159"),
              const SizedBox(height: 7),
              const BuildMainCardSubcirption(
                  image: "asset/subjucts_icon/history.jpg",
                  subjuct: "Civics",
                  date: "Nov 24,2023",
                  rate: "₹159"),
              const SizedBox(height: 30),
               BuildSubcriptionSubhead(text: "${AppLocalizations.of(context)!.subscriptions}(${subjectList.length})"),
              const SizedBox(height: 10),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 350,
                decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.primary,
                    border: Border.all(width: 1, color: Theme.of(context).colorScheme.secondary),
                    borderRadius: BorderRadius.circular(30)),
                child: Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: ListView.builder(
                    itemCount: subjectList.length,
                    itemBuilder: (context, index) =>
                        BuildSubcriptionListViewCard(index: index),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class BuildSubcriptionListViewCard extends StatelessWidget {
  final int index;
  const BuildSubcriptionListViewCard({
    super.key,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => context.read<SubcriptionBloc>().add(SubcriptionEvent.naviagatedToDeatilePage(subject: subjectList[index]['name']!, id: userId!, context: context)),
      child: Padding(
        padding: const EdgeInsets.only(bottom: 15, right: 20, left: 20),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CircleAvatar(
              radius: 25,
              backgroundImage: AssetImage(subjectList[index]['image']!),
            ),
            const SizedBox(width: 15),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  subjectList[index]['name']!,
                  style: GoogleFonts.quicksand(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Text("Nov 24,2023"),
              ],
            ),
            const Spacer(),
            Text(
              subjectList[index]['amount']!,
              style: GoogleFonts.aBeeZee(
                fontSize: 30,
              ),
            )
          ],
        ),
      ),
    );
  }
}

class BuildMainCardSubcirption extends StatelessWidget {
  final String image;
  final String subjuct;
  final String date;
  final String rate;

  const BuildMainCardSubcirption({
    super.key,
    required this.image,
    required this.subjuct,
    required this.date,
    required this.rate,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (ctx)=>const SubcriptionDeatilePage()));
        
      },
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 70,
        decoration: BoxDecoration(
            color:Theme.of(context).colorScheme.primary,
            border: Border.all(width: 1, color: Theme.of(context).colorScheme.secondary),
            borderRadius: BorderRadius.circular(30)),
        child: Padding(
          padding: const EdgeInsets.only(right: 20, left: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CircleAvatar(
                radius: 25,
                backgroundImage: AssetImage(image),
              ),
              const SizedBox(width: 15),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    subjuct,
                    style: GoogleFonts.quicksand(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Text("Nov 24,2023"),
                ],
              ),
              const Spacer(),
              Text(
                rate,
                style: GoogleFonts.aBeeZee(
                  fontSize: 30,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class BuildSubcriptionSubhead extends StatelessWidget {
  final String text;

  const BuildSubcriptionSubhead({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.aBeeZee(
        fontWeight: FontWeight.w300,
        fontSize: 17,
      ),
    );
  }
}

class SubcriptionMiniCard extends StatelessWidget {
  final String text;
  final IconData icon;
  final Color? bgcolor;
  final Color? borderColor;
  const SubcriptionMiniCard({
    super.key,
    required this.text,
    required this.icon,
    required this.bgcolor,
    required this.borderColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * .43,
      height: 60,
      decoration: BoxDecoration(
          color: bgcolor,
          border: Border.all(width: 1, color: borderColor!),
          borderRadius: BorderRadius.circular(30)),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 30),
            const SizedBox(width: 10),
            Text(
              text,
              style: GoogleFonts.aBeeZee(
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
