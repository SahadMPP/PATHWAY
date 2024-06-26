import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:path_way_flu/app/data/middleware/auth.dart';
import 'package:path_way_flu/app/data/model/message.dart';
import 'package:path_way_flu/app/pages/chat/controller/chat_controller.dart';
import 'package:path_way_flu/app/pages/student/pages/videocall/video_call.dart';
import 'package:path_way_flu/main.dart';
// ignore: library_prefixes
import 'package:socket_io_client/socket_io_client.dart' as IO;
import 'package:socket_io_client/socket_io_client.dart';

class MassagingScreen extends StatefulWidget {
    final String image;
    final String name;
  
  const MassagingScreen({super.key, required this.image, required this.name});

  @override
  State<MassagingScreen> createState() => _MassagingScreenState();
}

class _MassagingScreenState extends State<MassagingScreen> {
  TextEditingController msgInputController = TextEditingController();
  late IO.Socket socket;
  ChatController chatController = ChatController();
  @override
  void initState() { 
    socket = IO.io(
        // 'http://16.171.61.229:5000',
        AuthApi.baseUrl,
        OptionBuilder()
            .setTransports(['websocket']) // for Flutter or Dart VM
            .disableAutoConnect() // disable auto-connection
            .build());
    socket.connect();
    setUpsocketListener();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            const SizedBox(width: 5),
             CircleAvatar(
              radius: 28,
              backgroundImage: NetworkImage(widget.image),
            ),
            const SizedBox(width: 15),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.name,
                  style: GoogleFonts.quicksand(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Obx(
                  () => Text(
                    // 'Active Now',
                    'connected User ${chatController.count}',
                    style: GoogleFonts.quicksand(
                        fontWeight: FontWeight.w600,
                        color: Colors.green[500],
                        fontSize: 15),
                  ),
                ),
              ],
            ),
            const Spacer(),
             SizedBox(
                height: 35,
                width: 35,
                child: IconButton(icon: const Icon(Icons.videocam_outlined, size: 30),onPressed: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => CallPage(callID: userId!),));
                },))
          ],
        ),
      ),
      backgroundColor: Theme.of(context).colorScheme.background,
      body: SafeArea(
        child: Stack(
          children: [
            SizedBox(
              width: double.infinity,
              child: Obx(
                () => Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: ListView.builder(
                    itemBuilder: (context, index) {
                      var currentChat = chatController.chatMessages[index];
                      return MessengerItem(
                        message: currentChat.message,
                        sentByme: currentChat.sentByMe == socket.id,
                        datetime: currentChat.dateTime,
                      );
                    },
                    itemCount: chatController.chatMessages.length,
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              right: 0,
              left: 0,
              child: Container(
                height: 45,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Theme.of(context).colorScheme.secondary),
                child: Row(
                  children: [
                    const SizedBox(width: 15),
                    ConstrainedBox(
                      constraints:  BoxConstraints(
                        maxWidth: MediaQuery.of(context).size.width * .7,
                      ),
                        child: TextFormField(
                          controller: msgInputController,
                          decoration: const InputDecoration(
                            hintText: "Type here...",
                          ),
                        )),
                    const Spacer(),
                    IconButton(
                      onPressed: () {
                      if (msgInputController.text != '') {
                         sendMessege(msgInputController.text);
                        msgInputController.text = '';
                      }
                      },
                      icon: const Icon(Icons.send),
                      color: Theme.of(context).iconTheme.color,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: Icon(
                        Icons.mic,
                        color: Theme.of(context).iconTheme.color,
                      ),
                    ),
                  ],

                  ///thankyou alll of youuuuuu se you next tutorial
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  void sendMessege(String text) async {
    DateTime dateTime = DateTime.now();
    var messegeJson = {
      "message": text,
      "sentByMe": socket.id,
      "dateTime": "${dateTime.hour}:${dateTime.minute}",
    };
    socket.emit('message', messegeJson);
    chatController.chatMessages.add(Message.fromJson(messegeJson));
  }

  void setUpsocketListener() async {
    socket.on('message-receive', (data) {
      chatController.chatMessages.add(Message.fromJson(data));
    });

    socket.on('connected-user', (data) {
      chatController.count.value = data;
    });
  }
}

class MessengerItem extends StatelessWidget {
  final String message;
  final bool sentByme;
  final String datetime;
  const MessengerItem(
      {super.key, required this.sentByme, required this.message, required this.datetime});

  @override
  Widget build(BuildContext context) {
    Color blue = Colors.blue;
    Color? grey = Colors.grey[400];

    return Align(
      alignment: sentByme ? Alignment.centerRight : Alignment.centerLeft,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
        child: Column(
          children: [
            Container(
              constraints: const BoxConstraints(
                minWidth: 30,
              ),
              margin: const EdgeInsets.symmetric(vertical: 3, horizontal: 10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: sentByme ? blue : grey),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  textBaseline: TextBaseline.alphabetic,
                  children: [
                    Text(
                      message,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                      ),
                    ),
                    
                  ],
                ),
              ),
            ),
             Text(
                  "$datetime PM",
                  style: const TextStyle(
                    color: Colors.grey,
                    fontSize: 10,
                  ),
                ),
          ],
        ),
      ),
    );
  }
}
