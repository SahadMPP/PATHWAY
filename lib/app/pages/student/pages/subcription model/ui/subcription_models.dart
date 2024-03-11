import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:path_way_flu/app/core/constants/subject_list.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:path_way_flu/app/pages/student/widgets/subcription_listview.dart';
import 'package:path_way_flu/app/pages/student/widgets/subcription_sub_card.dart';
import 'package:path_way_flu/app/pages/student/widgets/subcrition_main_card.dart';
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
                      AppLocalizations.of(context)!.fortotalcourse,
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
                      text: AppLocalizations.of(context)!.moresubs,
                      icon: Icons.settings,
                      bgcolor: Colors.transparent,
                      borderColor: Colors.grey[800]),
                  const Spacer(),
                  SubcriptionMiniCard(
                      text: AppLocalizations.of(context)!.addnewsub,
                      icon: Icons.add,
                      bgcolor: Theme.of(context).colorScheme.primary,
                      borderColor: Theme.of(context).colorScheme.secondary),
                ],
              ),
              const SizedBox(height: 40),
               BuildSubcriptionSubhead(text: AppLocalizations.of(context)!.upcomingsubjectpayment),
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

