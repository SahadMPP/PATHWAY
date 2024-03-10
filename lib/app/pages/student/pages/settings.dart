import 'package:flutter/material.dart';
import 'package:panara_dialogs/panara_dialogs.dart';
import 'package:path_way_flu/app/core/constants/constants.dart';
import 'package:path_way_flu/app/data/model/language.dart';
import 'package:path_way_flu/app/pages/auth/domain/usecases/define_fun.dart';
import 'package:path_way_flu/app/pages/commen%20pages/about/ui/about.dart';
import 'package:path_way_flu/app/pages/student/pages/edit%20profile/ui/edit_profile.dart';
import 'package:path_way_flu/app/pages/commen%20pages/privecy%20text/ui/privecy.dart';
import 'package:path_way_flu/app/pages/student/widgets/complaint_alertbox.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:path_way_flu/app/pages/student/widgets/profile_card.dart';
import 'package:path_way_flu/app/pages/student/widgets/setting_cardwith_toggle.dart';
import 'package:path_way_flu/main.dart';

class StudentProfileScreen extends StatelessWidget {
  const StudentProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
      backgroundColor: Theme.of(context).colorScheme.onBackground,

        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: DropdownButton<Language>(
              items: Language.languageList()
                  .map((e) => DropdownMenuItem<Language>(
                        value: e,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(e.flag),
                            Text(e.name),
                          ],
                        ),
                      ))
                  .toList(),
              onChanged: (Language? language) {
                //----------
                MyApp.setLocal(context, Locale(language!.languageCode,''));
              },
              underline: const SizedBox(),
              icon: const Icon(
                Icons.language,
                size: 30,
                color: Colors.white,
              ),
            ),
          )
        ],
      ),
      backgroundColor: Theme.of(context).colorScheme.onBackground,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20, top: 10),
                child: Row(
                  children: [
                    Icon(
                      Icons.settings,
                      color: Theme.of(context).colorScheme.onPrimary,
                      size: 50,
                    ),
                    const SizedBox(width: 15),
                    Text(AppLocalizations.of(context)!.settings,
                        style: kHeadingextStyle.copyWith(
                          color: Colors.white,
                          fontSize: 35,
                          fontWeight: FontWeight.w500,
                          letterSpacing: 2,
                        )),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container(

                  padding: const EdgeInsets.only(left: 20, right: 20),
                  height: 700,
                  width: double.infinity,
                  decoration: BoxDecoration(
                          color: Theme.of(context).colorScheme.secondary,
                      borderRadius: BorderRadius.circular(20)),
                  child: SingleChildScrollView(
                    physics: const BouncingScrollPhysics(),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 40),
                        Row(
                          children: [
                             CircleAvatar(
                              radius: 30,
                             child: ClipRRect(borderRadius: BorderRadius.circular(70),child: Image.network("http://learnpro.today:5000/$userProfile",fit: BoxFit.fill,width: double.infinity,)),
                            ),
                            const SizedBox(width: 12),
                            ConstrainedBox(
                              constraints: const BoxConstraints(
                                minWidth: 50,
                                maxWidth: 100,
                              ),
                              child: Text(
                                userName ?? "",
                                style: kTitleTextStyle,
                              ),
                            )
                          ],
                        ),
                        const SizedBox(height: 5),
                        const Divider(
                            color: Color.fromARGB(255, 228, 228, 228),
                            thickness: 1),
                        const SizedBox(height: 10),
                        SizedBox(
                          width: 100,
                          child: Text(
                            AppLocalizations.of(context)!.accountsettings,
                            style: kTitleTextStyle.copyWith(
                                color: Colors.grey,
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                        const SizedBox(height: 10),
                        BuildProfileCard(
                            text: AppLocalizations.of(context)!.editprofile,
                            fun: () {
                              Navigator.of(context).push(MaterialPageRoute(builder: (context) => const StudentfEditProfile(),));
                            },
                            icon: Icons.navigate_next),
                        BuildProfileWithToggle(
                            text:
                                AppLocalizations.of(context)!.pushnotification,
                            fun: () {}),
                        BuildProfileWithToggle(text: "Dark mode", fun: () {}),
                        const Divider(
                            color: Color.fromARGB(255, 228, 228, 228),
                            thickness: 1),
                        const SizedBox(height: 10),
                        Text(
                          'More',
                          style: kTitleTextStyle.copyWith(
                              color: Colors.grey, fontWeight: FontWeight.w400),
                        ),
                        BuildProfileCard(
                            text: AppLocalizations.of(context)!.aboutus,
                            fun: () {
                              Navigator.of(context).push(MaterialPageRoute(builder: (context) => const About(),));
                            },
                            icon: Icons.navigate_next),
                        BuildProfileCard(
                            text: AppLocalizations.of(context)!.complaint,
                            fun: () {
                              showDialog(
                                  context: context,
                                  builder: (context) => AlertDialog(
                                        backgroundColor: Colors.white,
                                        contentPadding:
                                            const EdgeInsets.all(20),
                                        content: ConstrainedBox(
                                          constraints: const BoxConstraints(
                                            maxHeight: 500,
                                            minWidth: 350,
                                          ),
                                          child: const ComplantStudent(),
                                        ),
                                      ));
                            },
                            icon: Icons.navigate_next),
                        BuildProfileCard(
                            text: AppLocalizations.of(context)!.privacyconcern,
                            fun: () {
                              Navigator.of(context).push(MaterialPageRoute(builder: (context) => const Privecy(),));

                            },
                            icon: Icons.navigate_next),
                        BuildProfileCard(
                            text: AppLocalizations.of(context)!.logout,
                            fun: () {
                              PanaraInfoDialog.show(
                                context,
                                message: "",
                                imagePath: 'asset/alert.png',
                                title: "Are you sure to LogOut?",
                                buttonText: "YES",
                                onTapDismiss: () {
                                  AuthFuntion().logOut(context);
                                },
                                panaraDialogType: PanaraDialogType.normal,
                              );
                            },
                            icon: Icons.navigate_next),
                        const SizedBox(height: 230),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


