import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:panara_dialogs/panara_dialogs.dart';
import 'package:path_way_flu/app/data/middleware/auth.dart';
import 'package:path_way_flu/app/pages/auth/domain/usecases/define_fun.dart';
import 'package:path_way_flu/app/pages/commen%20pages/about/ui/about.dart';
import 'package:path_way_flu/app/pages/commen%20pages/privecy%20text/ui/privecy.dart';
import 'package:path_way_flu/app/pages/student/pages/edit%20profile/ui/edit_profile.dart';
import 'package:path_way_flu/app/pages/student/widgets/complaint_alertbox.dart';
import 'package:path_way_flu/app/pages/student/widgets/profile_card_desk.dart';
import 'package:path_way_flu/main.dart';

class StudentSettingDesk extends StatelessWidget {
  const StudentSettingDesk({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Expanded(
            child: Container(
              padding: const EdgeInsets.only(left: 40, top: 50),
              alignment: Alignment.topLeft,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(AppLocalizations.of(context).settings,
                      style: GoogleFonts.aBeeZee(
                        color: Colors.black,
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                      )),
                  const SizedBox(height: 30),
                  Text("Account",
                      style: GoogleFonts.aBeeZee(
                        color: Colors.black,
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      )),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      // SizedBox(
                      //   height: 60,
                      //   width: 60,
                      //   child: ClipRRect(
                      //       borderRadius: BorderRadius.circular(70),
                      //       child: Image(
                      //         image: NetworkImage(
                      //             "${AuthApi.baseUrlImage}$userProfile"),
                      //         fit: BoxFit.cover,
                      //       )),
                      // ),
                      CircleAvatar(
                        radius: 25,
                        backgroundImage:
                            NetworkImage("${AuthApi.baseUrlImage}$userProfile"),
                      ),
                      const SizedBox(width: 8),
                      ConstrainedBox(
                        constraints: const BoxConstraints(
                          minWidth: 50,
                          maxWidth: 100,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              userName ?? "userName",
                              style: GoogleFonts.aBeeZee(
                                color: Colors.black,
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Text(
                              "Not You? change",
                              style: GoogleFonts.aBeeZee(
                                color: Colors.grey,
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 40),
                  Text("Active Status",
                      style: GoogleFonts.aBeeZee(
                        color: Colors.black,
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      )),
                  const SizedBox(height: 20),
                  ConstrainedBox(
                    constraints: const BoxConstraints(
                      maxWidth: 330,
                    ),
                    child: Text(
                      "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English",
                      textAlign: TextAlign.justify,
                      style: GoogleFonts.aBeeZee(
                        color: Colors.grey,
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  const SizedBox(height: 25),
                  const Divider(
                      color: Color.fromARGB(255, 228, 228, 228), thickness: 1),
                  
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.only(right: 30,top: 80),
              height: double.infinity,
              child: SingleChildScrollView(
                child: Column(crossAxisAlignment: CrossAxisAlignment.start,children: [
                  SizedBox(
                    width: 100,
                    child: Text(
                      AppLocalizations.of(context).accountsettings,
                      style: GoogleFonts.aBeeZee(
                        color: Colors.black,
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(height: 30),
                  BuildProfileCardDesk(
                      text: AppLocalizations.of(context).editprofile,
                      fun: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const StudentfEditProfile(),
                        ));
                      },
                      icon: Icons.navigate_next),
                 
                  const Divider(
                      color: Color.fromARGB(255, 228, 228, 228), thickness: 1),
                  const SizedBox(height: 10),
                  Text(
                    AppLocalizations.of(context).more,
                    style: GoogleFonts.aBeeZee(
                        color: Colors.black,
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                  ),
                  const SizedBox(height: 30),

                  BuildProfileCardDesk(
                      text: AppLocalizations.of(context).aboutus,
                      fun: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const About(),
                        ));
                      },
                      icon: Icons.navigate_next),
                  BuildProfileCardDesk(
                      text: AppLocalizations.of(context).complaint,
                      fun: () {
                        showDialog(
                            context: context,
                            builder: (context) => AlertDialog(
                                  backgroundColor: Colors.white,
                                  contentPadding: const EdgeInsets.all(20),
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
                  BuildProfileCardDesk(
                      text: AppLocalizations.of(context).privacyconcern,
                      fun: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const Privecy(),
                        ));
                      },
                      icon: Icons.navigate_next),
                  BuildProfileCardDesk(
                      text: AppLocalizations.of(context).logout,
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
                ]),
              ),
            ),
          )
        ],
      ),
    );
  }
}
