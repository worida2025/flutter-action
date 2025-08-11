class Chat {
  final String name;
  final String lastMessage;
  final String time;
  final String avatarUrl;
  final bool isOnline;
  final int unreadCount;
  final bool isGroup;

  Chat({
    required this.name,
    required this.lastMessage,
    required this.time,
    required this.avatarUrl,
    this.isOnline = false,
    this.unreadCount = 0,
    this.isGroup = false,
  });
}

class Message {
  final String text;
  final DateTime time;
  final bool isSentByMe;
  final bool isRead;
  final MessageType type;

  Message({
    required this.text,
    required this.time,
    required this.isSentByMe,
    this.isRead = false,
    this.type = MessageType.text,
  });
}

enum MessageType {
  text,
  image,
  voice,
  document,
}