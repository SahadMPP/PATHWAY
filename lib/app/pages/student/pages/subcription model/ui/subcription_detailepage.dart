import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:path_way_flu/app/core/constants/constants.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:path_way_flu/app/data/middleware/auth.dart';
import 'package:path_way_flu/app/data/model/lession.dart';


class SubcriptionDeatilePage extends StatelessWidget {
  final Lesson lesson;
  const SubcriptionDeatilePage({super.key, required this.lesson});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        title: Text(
          lesson.subject,
          style: GoogleFonts.aBeeZee(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 15, right: 15),
          child: Column(
            children: [
              const SizedBox(height: 30),
              Container(
                padding: const EdgeInsets.only(left: 20, right: 20),
                height: MediaQuery.of(context).size.height * .4,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.primary,
                  borderRadius: BorderRadius.circular(35),
                ),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      const SizedBox(height: 30),
                       CircleAvatar(
                        radius: 45,
                        backgroundImage:
                            NetworkImage('${AuthApi.baseUrlImage}${lesson.profileImage}'),
                      ),
                      const SizedBox(height: 15),
                      Text(
                        lesson.subject,
                        style: GoogleFonts.aBeeZee(
                          fontWeight: FontWeight.bold,
                          fontSize: 28,
                        ),
                      ),
                      const SizedBox(height: 30),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                AppLocalizations.of(context).paymentdate,
                                style: kSubtitleTextSyule.copyWith(
                                    color: Colors.grey[400]),
                              ),
                              Text(
                                "Nov 22,2023",
                                style: kSubheadingextStyle.copyWith(
                                    height: 0, fontWeight: FontWeight.w400),
                              ),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                 AppLocalizations.of(context).price,
                                style: kSubtitleTextSyule.copyWith(
                                    color: Colors.grey[400]),
                              ),
                              Text(
                                lesson.price.toString(),
                                style: kSubheadingextStyle.copyWith(
                                    height: 0, fontWeight: FontWeight.w400),
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(height: 15),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                 AppLocalizations.of(context).cycle,
                                style: kSubtitleTextSyule.copyWith(
                                    color: Colors.grey[400]),
                              ),
                              Text(
                                "1 month",
                                style: kSubheadingextStyle.copyWith(
                                    height: 0, fontWeight: FontWeight.w400),
                              ),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                 AppLocalizations.of(context).type,
                                style: kSubtitleTextSyule.copyWith(
                                    color: Colors.grey[400]),
                              ),
                              Text(
                                 AppLocalizations.of(context).individual,
                                style: kSubheadingextStyle.copyWith(
                                    height: 0, fontWeight: FontWeight.w400),
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(height: 25),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20),
              SizedBox(
                height: 55,
                width: double.infinity,
                child: ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStatePropertyAll(Theme.of(context).colorScheme.primary)),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text(
                    "Cancel".toUpperCase(),
                    style: GoogleFonts.roboto(
                        color: Colors.red[300],
                        fontSize: 17,
                        fontWeight: FontWeight.w500),
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
