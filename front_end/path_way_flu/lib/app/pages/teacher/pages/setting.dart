import 'package:flutter/material.dart';
import 'package:panara_dialogs/panara_dialogs.dart';
import 'package:path_way_flu/app/core/constants/constants.dart';
import 'package:path_way_flu/app/data/model/language.dart';
import 'package:path_way_flu/app/pages/auth/domain/usecases/define_fun.dart';
import 'package:path_way_flu/app/pages/teacher/pages/application_form.dart';
import 'package:path_way_flu/main.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class TeacherSettings extends StatefulWidget {
  const TeacherSettings({super.key});

  @override
  State<TeacherSettings> createState() => _TeacherSettingsState();
}

class _TeacherSettingsState extends State<TeacherSettings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
              const SizedBox(height: 50),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  height: 700,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20)),
                  child: SingleChildScrollView(
                    physics: const BouncingScrollPhysics(),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 40),
                        Row(
                          children: [
                            const CircleAvatar(
                              radius: 30,
                              backgroundImage:
                                  AssetImage('asset/images/user.png'),
                            ),
                            const SizedBox(width: 12),
                            ConstrainedBox(
                              constraints: const BoxConstraints(
                                minWidth: 50,
                                maxWidth: 100,
                              ),
                              child: Text(
                                userName ?? '',
                                style: kTitleTextStyle.copyWith(
                                    color: Theme.of(context).iconTheme.color),
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
                            fun: () {},
                            icon: Icons.navigate_next),
                        BuildProfileCard(
                            text: AppLocalizations.of(context)!.applyasateacher,
                            fun: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (ctx) =>
                                      const TeacherApplicationFormSc()));
                            },
                            icon: Icons.navigate_next),
                        BuildProfileCard(
                            text: AppLocalizations.of(context)!.changepassword,
                            fun: () {},
                            icon: Icons.navigate_next),
                        BuildProfileCard(
                            text: AppLocalizations.of(context)!.addlocation,
                            fun: () {},
                            icon: Icons.navigate_next),
                        BuildProfileWithToggle(
                            text:
                                AppLocalizations.of(context)!.pushnotification,
                            fun: () {}),
                        BuildProfileWithToggle(
                            text: AppLocalizations.of(context)!.darkmode,
                            fun: () {}),
                        const Divider(),
                        const SizedBox(height: 10),
                        Text(
                          AppLocalizations.of(context)!.more,
                          style: kTitleTextStyle.copyWith(
                              color: Colors.grey, fontWeight: FontWeight.w400),
                        ),
                        BuildProfileCard(
                            text: AppLocalizations.of(context)!.aboutus,
                            fun: () {},
                            icon: Icons.navigate_next),
                        BuildProfileCard(
                            text: AppLocalizations.of(context)!.privacyconcern,
                            fun: () {},
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
                        const SizedBox(height: 250),
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

class BuildProfileCard extends StatelessWidget {
  final String text;
  final VoidCallback fun;
  final IconData icon;
  const BuildProfileCard({
    super.key,
    required this.text,
    required this.fun,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            width: 100,
            child: Text(
              text,
              style:
                  kTitleTextStyle.copyWith(fontSize: 20, color: Colors.black),
            ),
          ),
          IconButton(
              onPressed: fun,
              icon: Icon(
                icon,
                size: 30,
              ))
        ],
      ),
    );
  }
}

class BuildProfileWithToggle extends StatefulWidget {
  final String text;
  final VoidCallback fun;

  const BuildProfileWithToggle({
    super.key,
    required this.text,
    required this.fun,
  });

  @override
  State<BuildProfileWithToggle> createState() => _BuildProfileWithToggleState();
}

class _BuildProfileWithToggleState extends State<BuildProfileWithToggle> {
  bool isSwitched = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            width: 120,
            child: Text(
              widget.text,
              style:
                  kTitleTextStyle.copyWith(fontSize: 20, color: Colors.black),
            ),
          ),
          SizedBox(
            height: 20,
            width: 70,
            child: Switch(
                thumbColor: MaterialStatePropertyAll(
                    Theme.of(context).colorScheme.onSecondary),
                value: isSwitched,
                onChanged: (value) {
                  setState(() {
                    isSwitched = value;
                  });
                }),
          ),
        ],
      ),
    );
  }
}
