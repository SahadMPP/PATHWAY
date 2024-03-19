import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:path_way_flu/app/data/middleware/auth.dart';
import 'package:path_way_flu/app/pages/student/pages/chat/bloc/student_chat_bloc.dart';

class ChatBox extends StatefulWidget {
  const ChatBox({super.key});

  @override
  State<ChatBox> createState() => _ChatBoxState();
}

class _ChatBoxState extends State<ChatBox> {
  @override
  Widget build(BuildContext context) {
    context.read<StudentChatBloc>().add(const StudentChatEvent.givingValue());
    return Container(
      padding: const EdgeInsets.only(left: 15, right: 15,top: 12,bottom: 12),
      decoration: BoxDecoration(
        border: Border.all(
            width: 1, color: const Color.fromARGB(255, 212, 212, 212)),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        const SizedBox(height: 40),
        Text(
          'Chats',
          style: GoogleFonts.aBeeZee(
              fontSize: 22, fontWeight: FontWeight.bold, color: Colors.black),
        ),
        const SizedBox(height: 20),
        ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: TextFormField(
            onChanged: (value) {
              context
                  .read<StudentChatBloc>()
                  .add(StudentChatEvent.filteringForSearch(textValue: value));
            },
            decoration: InputDecoration(
              hintText: "   Search",
              filled: true,
              fillColor: Colors.grey[200],
              prefixIcon: Padding(
                padding: const EdgeInsets.only(left: 10),
                child: SvgPicture.asset("asset/icons/search.svg"),
              ),
              prefixIconConstraints:
                  const BoxConstraints(maxHeight: 35, maxWidth: 35),
              hintStyle:
                  GoogleFonts.aBeeZee(color: Colors.grey, fontSize: 16),
              border: InputBorder.none,
            ),
          ),
        ),
        const SizedBox(height: 20),
        Text("ALL CHATS",
            style: GoogleFonts.aBeeZee(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            )),
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
                            SizedBox(
                              height: 40,
                              width: 40,
                              child: ClipRRect(
                                  borderRadius: BorderRadius.circular(70),
                                  child: Image(
                                    image: NetworkImage(
                                        "${AuthApi.baseUrlImage}${state.list[index].profileImage!}"),
                                    fit: BoxFit.cover,
                                  )),
                            ),
                            const SizedBox(width: 10),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  state.list[index].name,
                                  style: GoogleFonts.aBeeZee(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  'Physics Teacher',
                                  style: GoogleFonts.aBeeZee(
                                      fontSize: 12,
                                      color: Theme.of(context)
                                          .colorScheme
                                          .onSecondary),
                                ),
                              ],
                            ),
                            const Spacer(),
                            SizedBox(
                              width: 80,
                              height: 35,
                              child: ElevatedButton(
                                  style: ButtonStyle(
                                      shape: MaterialStatePropertyAll(
                                          ContinuousRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(65))),
                                      backgroundColor:
                                          const MaterialStatePropertyAll(
                                              Colors.blue)),
                                  onPressed: () {
                                    context.read<StudentChatBloc>().add(
                                        StudentChatEvent
                                            .navigatingToChatScreen(
                                                context: context));
                                  },
                                  child: Text(
                                    "Chat",
                                    style: GoogleFonts.aBeeZee(
                                        fontSize: 14,
                                        color: Colors.white,
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
    );
  }
}
