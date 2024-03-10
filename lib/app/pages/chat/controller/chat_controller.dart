import 'package:get/get.dart';
import 'package:path_way_flu/app/data/model/message.dart';

class ChatController extends GetxController {
  var chatMessages = <Message>[].obs;
  var count = 0.obs;
}