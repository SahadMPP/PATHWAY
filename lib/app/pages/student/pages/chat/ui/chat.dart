import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:path_way_flu/app/core/constants/constants.dart';
import 'package:path_way_flu/app/data/middleware/auth.dart';
import 'package:path_way_flu/app/pages/student/pages/chat/bloc/student_chat_bloc.dart';

class StudentChat extends StatefulWidget {
  const StudentChat({super.key});

  @override
  State<StudentChat> createState() => _StudentChatState();
}

class _StudentChatState extends State<StudentChat> {
  @override
  Widget build(BuildContext context) {
  
    context.read<StudentChatBloc>().add(const StudentChatEvent.givingValue());
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            const SizedBox(height: 40),
            Text(
              'Chats',
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
                          context.read<StudentChatBloc>().add(
                              StudentChatEvent.filteringForSearch(
                                  textValue: value));
                        },
                        decoration: const InputDecoration(
                            hintText: "Search", border: InputBorder.none),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            const Text("Teacher's", style: kTitleTextStyle),
            const SizedBox(height: 10),
            Expanded(
              child: BlocBuilder<StudentChatBloc, StudentChatState>(
                builder: (context, state) {
                  return ListView.builder(
                      itemCount: state.list.length,
                      itemBuilder: (context, index) {
                        return Padding(
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
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      state.list[index].name,
                                      style: kTitleTextStyle,
                                    ),
                                    Text(
                                      'Physics Teacher',
                                      style: GoogleFonts.aBeeZee(
                                          color: Theme.of(context)
                                              .colorScheme
                                              .onSecondary),
                                    ),
                                  ],
                                ),
                                const Spacer(),
                                SizedBox(
                                  width: 85,
                                  height: 40,
                                  child: ElevatedButton(
                                      style: ButtonStyle(
                                          shape: MaterialStatePropertyAll(
                                              ContinuousRectangleBorder(
                                                  borderRadius: BorderRadius
                                                      .circular(65))),
                                          backgroundColor:
                                              MaterialStatePropertyAll(
                                                  Theme.of(context)
                                                      .colorScheme
                                                      .onBackground)),
                                      onPressed: () {
                                        context.read<StudentChatBloc>().add(
                                            StudentChatEvent
                                                .navigatingToChatScreen(
                                                    context: context));
                                      },
                                      child: Text(
                                        "Chat",
                                        style: GoogleFonts.aBeeZee(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold),
                                      )),
                                ),
                              ],
                            ),
                          ),
                        );
                      });
                },
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
