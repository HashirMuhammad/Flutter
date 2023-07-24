import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

// class Message {
//   final String sender;
//   final String content;
//   final DateTime timestamp;

//   Message(
//       {required this.sender, required this.content, required this.timestamp});
// }

// class ChatScreen extends StatefulWidget {
//   const ChatScreen({super.key});

//   @override
//   _ChatScreenState createState() => _ChatScreenState();
// }

// class _ChatScreenState extends State<ChatScreen> {
//   List<Message> messages = [];
//   final TextEditingController _messageController = TextEditingController();

//   void _sendMessage() {
//     String content = _messageController.text;
//     if (content.isNotEmpty) {
//       Message message = Message(
//         sender: 'User',
//         content: content,
//         timestamp: DateTime.now(),
//       );
//       setState(() {
//         messages.add(message);
//         _messageController.clear();
//       });
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       decoration: const BoxDecoration(
//         image: DecorationImage(
//           image: AssetImage("assets/images/started.png"),
//           fit: BoxFit.cover,
//         ),
//       ),
//       child: Scaffold(
//         backgroundColor: Colors.transparent,
//         appBar: AppBar(
//           title: const Text('Chat'),
//         ),
//         body: Column(
//           children: [
//             Expanded(
//               child: ListView.builder(
//                 itemCount: messages.length,
//                 itemBuilder: (context, index) {
//                   Message message = messages[index];
//                   return ListTile(
//                     title: Text(
//                       '${message.sender}: ${message.content}',
//                       style: const TextStyle(fontSize: 16.0),
//                     ),
//                     subtitle: Text(
//                       message.timestamp.toString(),
//                       style: const TextStyle(fontSize: 12.0),
//                     ),
//                   );
//                 },
//               ),
//             ),
//             Container(
//               padding: const EdgeInsets.symmetric(horizontal: 8.0),
//               child: Row(
//                 children: [
//                   Expanded(
//                     child: TextField(
//                       controller: _messageController,
//                       decoration: const InputDecoration(
//                         hintText: 'Type a message...',
//                       ),
//                     ),
//                   ),
//                   IconButton(
//                     icon: const Icon(Icons.send),
//                     onPressed: _sendMessage,
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//     Drawer: const Drawer(

//     );
//   }
// }

// void main() {
//   runApp(const MaterialApp(
//     home: ChatScreen(),
//   ));
// }

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

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
          backgroundColor: Colors.deepPurpleAccent.shade200,
          title: const Text("Chat "),
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const SizedBox(height: 16.0),
                  ElevatedButton(
                    onPressed: () {
                      _openWhatsAppChat('+923154026203');
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.deepPurpleAccent
                          .shade200, // Set the desired background color
                      fixedSize: const Size(
                          400, 100), // Set the desired width and height
                    ),
                    child: const Text(
                      'Chat with Hashir',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                  ),
                  const SizedBox(height: 16.0),
                  ElevatedButton(
                    onPressed: () {
                      _openWhatsAppChat('+923240049330');
                    },
                     style: ElevatedButton.styleFrom(
                      primary: Colors.deepPurpleAccent.shade200, // Set the desired background color
                      fixedSize: const Size(400, 100), // Set the desired width and height
                    ),
                    child: const Text(
                      'Chat with Umer',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void _openWhatsAppChat(String phoneNumber) async {
    final Uri uri = Uri(
      scheme: 'https',
      path: 'wa.me',
      queryParameters: {
        'text': 'Hello from EPS Moulding! I would like to discuss...',
        'phone': phoneNumber,
      },
    );
    // ignore: deprecated_member_use
    if (await canLaunch(uri.toString())) {
      // ignore: deprecated_member_use
      await launch(uri.toString());
    } else {
      throw 'Could not launch WhatsApp.';
    }
  }
}
