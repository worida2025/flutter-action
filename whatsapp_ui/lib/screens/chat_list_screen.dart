import 'package:flutter/material.dart';
import '../models/chat.dart';
import '../models/sample_data.dart';
import '../widgets/chat_list_item.dart';
import 'chat_screen.dart';

class ChatListScreen extends StatefulWidget {
  const ChatListScreen({super.key});

  @override
  State<ChatListScreen> createState() => _ChatListScreenState();
}

class _ChatListScreenState extends State<ChatListScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this, initialIndex: 1);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'WhatsApp',
          style: TextStyle(fontWeight: FontWeight.w600),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
          ),
          PopupMenuButton<String>(
            onSelected: (value) {},
            itemBuilder: (BuildContext context) {
              return [
                const PopupMenuItem(
                  value: 'new_group',
                  child: Text('New group'),
                ),
                const PopupMenuItem(
                  value: 'new_broadcast',
                  child: Text('New broadcast'),
                ),
                const PopupMenuItem(
                  value: 'linked_devices',
                  child: Text('Linked devices'),
                ),
                const PopupMenuItem(
                  value: 'starred_messages',
                  child: Text('Starred messages'),
                ),
                const PopupMenuItem(
                  value: 'settings',
                  child: Text('Settings'),
                ),
              ];
            },
          ),
        ],
        bottom: TabBar(
          controller: _tabController,
          indicatorColor: Colors.white,
          tabs: const [
            Tab(icon: Icon(Icons.camera_alt)),
            Tab(text: 'CHATS'),
            Tab(text: 'STATUS'),
            Tab(text: 'CALLS'),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          // Camera tab
          Container(
            color: Colors.black,
            child: const Center(
              child: Icon(
                Icons.camera_alt,
                size: 100,
                color: Colors.white,
              ),
            ),
          ),
          // Chats tab
          _buildChatList(),
          // Status tab
          _buildStatusTab(),
          // Calls tab
          _buildCallsTab(),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: const Color(0xFF25D366),
        child: const Icon(Icons.message, color: Colors.white),
      ),
    );
  }

  Widget _buildChatList() {
    final chats = ChatData.getSampleChats();
    
    return ListView.builder(
      itemCount: chats.length,
      itemBuilder: (context, index) {
        final chat = chats[index];
        return ChatListItem(
          chat: chat,
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ChatScreen(chat: chat),
              ),
            );
          },
        );
      },
    );
  }

  Widget _buildStatusTab() {
    return ListView(
      children: [
        const ListTile(
          leading: Stack(
            children: [
              CircleAvatar(
                radius: 25,
                backgroundImage: NetworkImage(
                  'https://api.dicebear.com/7.x/avataaars/svg?seed=You',
                ),
              ),
              Positioned(
                bottom: 0,
                right: 0,
                child: CircleAvatar(
                  radius: 8,
                  backgroundColor: Color(0xFF25D366),
                  child: Icon(
                    Icons.add,
                    size: 12,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
          title: Text(
            'My status',
            style: TextStyle(fontWeight: FontWeight.w500),
          ),
          subtitle: Text('Tap to add status update'),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: Text(
            'Recent updates',
            style: TextStyle(
              color: Colors.grey,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        ...List.generate(3, (index) {
          return ListTile(
            leading: Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: const Color(0xFF25D366),
                  width: 2,
                ),
              ),
              child: CircleAvatar(
                radius: 23,
                backgroundImage: NetworkImage(
                  'https://api.dicebear.com/7.x/avataaars/svg?seed=Status$index',
                ),
              ),
            ),
            title: Text('Contact ${index + 1}'),
            subtitle: Text('${index + 1} hour${index != 0 ? 's' : ''} ago'),
          );
        }),
      ],
    );
  }

  Widget _buildCallsTab() {
    return ListView(
      children: List.generate(5, (index) {
        final isVideoCall = index % 2 == 0;
        final isIncoming = index % 3 != 0;
        
        return ListTile(
          leading: CircleAvatar(
            backgroundImage: NetworkImage(
              'https://api.dicebear.com/7.x/avataaars/svg?seed=Call$index',
            ),
          ),
          title: Text('Contact ${index + 1}'),
          subtitle: Row(
            children: [
              Icon(
                isIncoming ? Icons.call_received : Icons.call_made,
                size: 16,
                color: isIncoming ? Colors.red : Colors.green,
              ),
              const SizedBox(width: 4),
              Text('Today, ${10 + index}:30 AM'),
            ],
          ),
          trailing: Icon(
            isVideoCall ? Icons.videocam : Icons.call,
            color: const Color(0xFF075E54),
          ),
          onTap: () {},
        );
      }),
    );
  }
}