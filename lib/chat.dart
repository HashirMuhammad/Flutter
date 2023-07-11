import 'package:flutter/material.dart';

class Message {
  final String sender;
  final String content;
  final DateTime timestamp;

  Message(
      {required this.sender, required this.content, required this.timestamp});
}

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  List<Message> messages = [];
  final TextEditingController _messageController = TextEditingController();

  void _sendMessage() {
    String content = _messageController.text;
    if (content.isNotEmpty) {
      Message message = Message(
        sender: 'User',
        content: content,
        timestamp: DateTime.now(),
      );
      setState(() {
        messages.add(message);
        _messageController.clear();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/started.png"),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: const Text('Chat'),
        ),
        body: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: messages.length,
                itemBuilder: (context, index) {
                  Message message = messages[index];
                  return ListTile(
                    title: Text(
                      '${message.sender}: ${message.content}',
                      style: const TextStyle(fontSize: 16.0),
                    ),
                    subtitle: Text(
                      message.timestamp.toString(),
                      style: const TextStyle(fontSize: 12.0),
                    ),
                  );
                },
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      controller: _messageController,
                      decoration: const InputDecoration(
                        hintText: 'Type a message...',
                      ),
                    ),
                  ),
                  IconButton(
                    icon: const Icon(Icons.send),
                    onPressed: _sendMessage,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
    Drawer: const Drawer(
      
    );
  }
}

void main() {
  runApp(const MaterialApp(
    home: ChatScreen(),
  ));
}
