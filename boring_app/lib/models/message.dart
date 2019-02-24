class Message {
  String id;
  String text;
  DateTime time;

  Message(this.text);

  Message.fromMap(Map<String, dynamic> data) {
    id = data['id'];
    text = data['text'];
  }
}
