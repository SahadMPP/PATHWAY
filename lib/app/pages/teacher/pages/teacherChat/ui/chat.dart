import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:path_way_flu/app/core/constants/constants.dart';
import 'package:path_way_flu/app/data/middleware/auth.dart';
import 'package:path_way_flu/app/pages/chat/pages/chat_messaging.dart';
import 'package:path_way_flu/app/pages/teacher/pages/teacherChat/bloc/teacher_chat_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class TeacherChat extends StatefulWidget {
  const TeacherChat({super.key});

  @override
  State<TeacherChat> createState() => _TeacherChatState();
}

class _TeacherChatState extends State<TeacherChat> {

  @override
  Widget build(BuildContext context) {
    context
        .read<TeacherChatBloc>()
        .add(const TeacherChatEvent.givingValueInitialy());
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            const SizedBox(height: 40),
            Text(
              AppLocalizations.of(context)!.chat,
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).colorScheme.onBackground),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 10),
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
              width: double.infinity,
              height: 60,
              decoration: BoxDecoration(
                  color: const Color(0xFFF5F5F7),
                  borderRadius: BorderRadius.circular(10)),
              child: Row(
                children: [
                  SvgPicture.asset("asset/icons/search.svg"),
                  const SizedBox(width: 18),
                  SizedBox(
                    width: 250,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: TextFormField(
                        onChanged: (value) {
                          context.read<TeacherChatBloc>().add(
                              TeacherChatEvent.runFilterdValue(value: value));
                        },
                        decoration:  InputDecoration(
                            hintText: AppLocalizations.of(context)!.search, border: InputBorder.none),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
             Text(AppLocalizations.of(context)!.students, style: kTitleTextStyle),
            const SizedBox(height: 10),
            Expanded(child: BlocBuilder<TeacherChatBloc, TeacherChatState>(
              builder: (context, state) {
                return ListView.builder(
                  itemCount: state.list.length,
                  itemBuilder: (context, index) => Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                      height: 70,
                      width: double.infinity,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(75),
                            child: CircleAvatar(
                              radius: 28,
                              child: Image.network("${AuthApi.baseUrl}${state.list[index].profileImage!}",fit: BoxFit.fill),
                            ),
                          ),
                          const SizedBox(width: 10),
                          Text(
                            state.list[index].name,
                            style: kTitleTextStyle,
                          ),
                          const Spacer(),
                          SizedBox(
                            width: 85,
                            height: 40,
                            child: ElevatedButton(
                                style: ButtonStyle(
                                    shape: MaterialStatePropertyAll(
                                        ContinuousRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(65))),
                                    backgroundColor: MaterialStatePropertyAll(
                                        Theme.of(context)
                                            .colorScheme
                                            .onBackground)),
                                onPressed: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (ctx) =>
                                          const MassagingScreen()));
                                },
                                child: Text(
                                  AppLocalizations.of(context)!.chat,
                                  style: GoogleFonts.aBeeZee(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                )),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ))
          ]),
        ),
      ),
    );
  }
}
