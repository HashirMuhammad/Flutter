import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class adminchat extends StatefulWidget {
  const adminchat({Key? key});

  @override
  State<adminchat> createState() => _adminchatState();
}

class _adminchatState extends State<adminchat> {
  Color themeColor = Colors.blue;
  int _limit = 10;

  Widget buildItem(BuildContext context, DocumentSnapshot document) {
    // Extract data from the document
    String itemName = document['Name'];
    String itemDescription = document['Review'];

    // Build the UI for each item
    return ListTile(
      title: Text(itemName),
      subtitle: Text(itemDescription),
      onTap: () {
        // Handle item tap action
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: StreamBuilder<QuerySnapshot>(
        stream: FirebaseFirestore.instance.collection('user').limit(_limit).snapshots(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(
              child: CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation<Color>(themeColor),
              ),
            );
          } else if (snapshot.hasError) {
            return Center(
              child: Text('Error: ${snapshot.error}'),
            );
          } else if (!snapshot.hasData || snapshot.data!.docs.isEmpty) {
            return Center(
              child: Text('No data available'),
            );
          } else {
            return ListView.builder(
              padding: EdgeInsets.all(10.0),
              itemBuilder: (context, index) => buildItem(context, snapshot.data!.docs[index]),
              itemCount: snapshot.data!.docs.length,
            );
          }
        },
      ),
    );
  }
}
