import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:path_way_flu/features/chat/data/models/message.dart';
import 'package:path_way_flu/features/chat/presentation/controller/chat_controller.dart';
import 'package:socket_io_client/socket_io_client.dart' as IO;
import 'package:socket_io_client/socket_io_client.dart';

class MassagingScreen extends StatefulWidget {
  final dynamic data;
  const MassagingScreen({super.key, required this.data});

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
        'http://learnpro.today:5000',
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
            const CircleAvatar(
              radius: 28,
              backgroundImage: AssetImage("asset/profiles/chat111.png"),
            ),
            const SizedBox(width: 15),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.data.name,
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
            const SizedBox(
                height: 35,
                width: 35,
                child: Icon(Icons.videocam_outlined, size: 30))
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
                () => ListView.builder(
                  itemBuilder: (context, index) {
                    var currentChat = chatController.chatMessages[index];
                    return MessengerItem(
                      message: currentChat.message,
                      sentByme: currentChat.sentByMe == socket.id,
                    );
                  },
                  itemCount: chatController.chatMessages.length,
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
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                            color: Colors.black12,
                            borderRadius: BorderRadius.circular(50)),
                        child: Icon(
                          Icons.camera_alt_outlined,
                          color: Theme.of(context).iconTheme.color,
                        ),
                      ),
                    ),
                    const SizedBox(width: 15),
                    SizedBox(
                        width: MediaQuery.of(context).size.width * .6,
                        child: TextFormField(
                          controller: msgInputController,
                          decoration: const InputDecoration(
                            hintText: "Type here...",
                          ),
                        )),
                    const Spacer(),
                    IconButton(
                      onPressed: () {
                        sendMessege(msgInputController.text);
                        msgInputController.text = '';
                      },
                      icon: const Icon(Icons.send),
                      color: Theme.of(context).iconTheme.color,
                    ),
                    const Spacer(),
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
    var messegeJson = {
      "message": text,
      "sentByMe": socket.id,
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
  const MessengerItem(
      {super.key, required this.sentByme, required this.message});

  @override
  Widget build(BuildContext context) {
    Color blue = Colors.blue;
    Color? grey = Colors.grey[400];

    return Align(
      alignment: sentByme ? Alignment.centerRight : Alignment.centerLeft,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
        child: Container(
          margin: const EdgeInsets.symmetric(vertical: 3, horizontal: 10),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: sentByme ? blue : grey),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
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
                const SizedBox(width: 5),
                const Text(
                  '01:23 AM',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 10,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
