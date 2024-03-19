import 'package:flutter/material.dart';
import 'package:path_way_flu/app/pages/chat/pages/chat_messaging.dart';
import 'package:path_way_flu/app/pages/student/widgets/desk_chat_right_box.dart';
import 'package:path_way_flu/app/pages/student/widgets/desktop_chat.dart';

class StudentChatDesk extends StatelessWidget {
  const StudentChatDesk({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Expanded(
            flex: 3,
            child: Padding(
              padding: const EdgeInsets.only(left: 12, top: 12, bottom: 12,right: 12),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: const ChatBox(),
              ),
            ),
          ),
          Expanded(
            flex: 4,
            child: Padding(
              padding: const EdgeInsets.only( top: 12, bottom: 12),
              child: Container(
                padding: const EdgeInsets.all(8.0),
                 decoration: BoxDecoration(
                        border: Border.all(
                width: 1,
                color: const Color.fromARGB(255, 212, 212, 212)),
                        borderRadius: BorderRadius.circular(8),
                      ),              
                child: const MassagingScreen(),
              ),
            ),
          ),
          const Expanded(
            flex: 2,
            child: DeskChatRightBox(),
          ),
        ],
      ),
    );
  }
}

