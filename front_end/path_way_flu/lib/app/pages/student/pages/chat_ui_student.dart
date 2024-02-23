import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:path_way_flu/app/data/middleware/admin.dart';
import 'package:path_way_flu/app/pages/chat/presentation/pages/chat_messaging.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:path_way_flu/app/data/model/teacher.dart';

class ChatScreenStudent extends StatelessWidget {
  const ChatScreenStudent({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map<String, String>> profileImage = [
      {"name": "Barry", "image": "asset/profiles/chat111.png"},
      {"name": "Mohan", "image": "asset/profiles/chat222.png"},
      {"name": "Vimal", "image": "asset/profiles/chat555.png"},
      {"name": "Jhon", "image": "asset/profiles/chat666.png"},
      {"name": "Marco", "image": "asset/profiles/chat777.png"},
      {"name": "Andru", "image": "asset/profiles/chat888.png"},
      {"name": "Arun", "image": "asset/profiles/image22.png"},
      {"name": "Kumar", "image": "asset/profiles/chat111.png"},
    ];
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.onBackground,
      body: SafeArea(
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(AppLocalizations.of(context)!.messages,
                          style: GoogleFonts.quicksand(
                            fontSize: 36,
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                          )),
                      SizedBox(
                          height: 35,
                          width: 35,
                          child: SvgPicture.asset(
                            "asset/icons/search.svg",
                            // ignore: deprecated_member_use
                            color: Colors.white,
                          )),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Text('R E C E N T',
                      style: GoogleFonts.roboto(
                        fontSize: 17,
                        fontWeight: FontWeight.w600,
                        color: Colors.grey,
                      )),
                  const SizedBox(height: 20),
                  Builder(builder: (context) {
                    return FutureBuilder(
                        future: AdminApi.getTeacher(),
                        builder: (context, AsyncSnapshot snapshot) {
                          if (!snapshot.hasData) {
                            return const Center(
                                child: CircularProgressIndicator());
                          } else {
                            List<Teacher> teacher = snapshot.data;
                            if (teacher.isEmpty) {
                              return const Center(
                                  child: Text("Condacts is Empty"));
                            } else {
                              return SizedBox(
                                height: 110,
                                child: ListView.builder(
                                    itemCount: teacher.length,
                                    scrollDirection: Axis.horizontal,
                                    itemBuilder: (context, index) {
                                      return Padding(
                                        padding:
                                            const EdgeInsets.only(left: 15),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            CircleAvatar(
                                              radius: 35,
                                              backgroundImage: AssetImage(
                                                  profileImage[index]["image"]
                                                      .toString()),
                                            ),
                                            const SizedBox(height: 5),
                                            Text(
                                                teacher[index].name
                                                    .toString(),
                                                style: GoogleFonts.roboto(
                                                  fontSize: 20,
                                                  letterSpacing: 1,
                                                  fontWeight: FontWeight.w400,
                                                  color: Colors.white,
                                                ))
                                          ],
                                        ),
                                      );
                                    }),
                              );
                            }
                          }
                        });
                  }),
                  const SizedBox(height: 20),
                ],
              ),
            ),
            ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(50),
                topRight: Radius.circular(50),
              ),
              child: Container(
                height: 605,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.onPrimary,
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(50),
                    topRight: Radius.circular(50),
                  ),
                ),
                child: FutureBuilder(
                    future: AdminApi.getTeacher(),
                    builder: (context, AsyncSnapshot snapshot) {
                      if (!snapshot.hasData) {
                        return const Center(child: CircularProgressIndicator());
                      } else {
                        List<Teacher> teacher = snapshot.data;
                        if (teacher.isEmpty) {
                          return const Center(child: Text("Condacts is Empty"));
                        } else {
                          return SizedBox(
                            child: ListView.builder(
                                itemCount: teacher.length,
                                itemBuilder: (context, index) {
                                  return GestureDetector(
                                    onTap: () {
                                      Navigator.of(context).push(
                                          MaterialPageRoute(
                                              builder: (ctx) =>
                                                   const MassagingScreen()));
                                    },
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          left: 10, right: 10, top: 35),
                                      child: Row(
                                        children: [
                                          CircleAvatar(
                                            radius: 30,
                                            backgroundImage: AssetImage(
                                                profileImage[index]["image"]!),
                                          ),
                                          const SizedBox(width: 10),
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                teacher[index].name,
                                                style: GoogleFonts.quicksand(
                                                  // color: Colors.white,
                                                  color: Colors.black,
                                                  fontSize: 17,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                              Text(
                                                teacher[index].email,
                                                style: GoogleFonts.quicksand(
                                                    // color: Colors.white70,
                                                    fontWeight: FontWeight.w500,
                                                    color: const Color.fromARGB(
                                                        255, 80, 80, 80)),
                                              ),
                                            ],
                                          ),
                                          const Spacer(),
                                          Text(
                                            "08:43",
                                            style: GoogleFonts.quicksand(
                                                // color: Colors.white70,
                                                fontWeight: FontWeight.w500,
                                                color: const Color.fromARGB(
                                                    255, 58, 58, 58)),
                                          )
                                        ],
                                      ),
                                    ),
                                  );
                                }),
                          );
                        }
                      }
                    }),
              ),
            )
          ],
        ),
      ),
    );
  }
}
