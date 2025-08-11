import '../models/chat.dart';

class ChatData {
  static List<Chat> getSampleChats() {
    return [
      Chat(
        name: "John Doe",
        lastMessage: "Hey! How are you doing?",
        time: "10:30 AM",
        avatarUrl: "https://api.dicebear.com/7.x/avataaars/svg?seed=John",
        isOnline: true,
        unreadCount: 2,
      ),
      Chat(
        name: "Flutter Developers",
        lastMessage: "Alice: Check out this new widget!",
        time: "9:45 AM",
        avatarUrl: "https://api.dicebear.com/7.x/initials/svg?seed=FD",
        unreadCount: 5,
        isGroup: true,
      ),
      Chat(
        name: "Sarah Wilson",
        lastMessage: "Thanks for the help yesterday 😊",
        time: "Yesterday",
        avatarUrl: "https://api.dicebear.com/7.x/avataaars/svg?seed=Sarah",
        isOnline: false,
        unreadCount: 0,
      ),
      Chat(
        name: "Work Team",
        lastMessage: "Meeting at 3 PM tomorrow",
        time: "Yesterday",
        avatarUrl: "https://api.dicebear.com/7.x/initials/svg?seed=WT",
        unreadCount: 1,
        isGroup: true,
      ),
      Chat(
        name: "Mike Johnson",
        lastMessage: "Sure, let's meet for coffee",
        time: "Tuesday",
        avatarUrl: "https://api.dicebear.com/7.x/avataaars/svg?seed=Mike",
        isOnline: true,
        unreadCount: 0,
      ),
      Chat(
        name: "Family Group",
        lastMessage: "Mom: Don't forget dinner on Sunday",
        time: "Monday",
        avatarUrl: "https://api.dicebear.com/7.x/initials/svg?seed=FG",
        unreadCount: 3,
        isGroup: true,
      ),
      Chat(
        name: "Emma Davis",
        lastMessage: "Happy birthday! 🎉",
        time: "Sunday",
        avatarUrl: "https://api.dicebear.com/7.x/avataaars/svg?seed=Emma",
        isOnline: false,
        unreadCount: 0,
      ),
      Chat(
        name: "Design Team",
        lastMessage: "New mockups are ready for review",
        time: "Saturday",
        avatarUrl: "https://api.dicebear.com/7.x/initials/svg?seed=DT",
        unreadCount: 0,
        isGroup: true,
      ),
    ];
  }

  static List<Message> getSampleMessages() {
    return [
      Message(
        text: "Hey! How are you doing?",
        time: DateTime.now().subtract(const Duration(minutes: 5)),
        isSentByMe: false,
        isRead: true,
      ),
      Message(
        text: "I'm doing great! Just working on a new Flutter project",
        time: DateTime.now().subtract(const Duration(minutes: 3)),
        isSentByMe: true,
        isRead: true,
      ),
      Message(
        text: "That sounds exciting! What kind of app are you building?",
        time: DateTime.now().subtract(const Duration(minutes: 2)),
        isSentByMe: false,
        isRead: true,
      ),
      Message(
        text: "It's a WhatsApp clone! I'm trying to recreate the UI as closely as possible",
        time: DateTime.now().subtract(const Duration(minutes: 1)),
        isSentByMe: true,
        isRead: false,
      ),
      Message(
        text: "Cool! Would love to see it when it's done 😊",
        time: DateTime.now(),
        isSentByMe: false,
        isRead: false,
      ),
    ];
  }
}