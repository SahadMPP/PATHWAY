class Message {
  String message;
  String sentByMe;
  String dateTime;
  Message({
    required this.dateTime,
    required this.message,
    required this.sentByMe,
  });
  factory Message.fromJson(Map<String, dynamic> json) {
    return Message(
      dateTime: json['dateTime'],
      message: json["message"],
      sentByMe: json["sentByMe"],
    );
  }
}
