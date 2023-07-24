import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:test_1/drawer/drawer.dart';

class orderrequests extends StatefulWidget {
  const orderrequests({super.key});

  @override
  State<orderrequests> createState() => _orderrequestsState();
}

class _orderrequestsState extends State<orderrequests> {
  //Instantiate Firestore
  final db = FirebaseFirestore.instance;

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
          title: const Text("Order Requests"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: FutureBuilder<QuerySnapshot<Map<String, dynamic>>>(
              future: db.collection('user').get(),
              builder: (
                BuildContext context,
                AsyncSnapshot<QuerySnapshot<Map<String, dynamic>>> snapshot,
              ) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return Center(child: CircularProgressIndicator());
                } else if (snapshot.connectionState == ConnectionState.done) {
                  if (snapshot.hasError) {
                    return const Text('Error');
                  } else if (snapshot.hasData) {
                    return ListView.builder(
                        itemCount: snapshot.data!.docs.length,
                        itemBuilder: (BuildContext ctxt, int index) {
                          // print(snapshot.data!.docs[index]['name']);
                          return SingleChildScrollView(
                            child: Column(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(bottom: 10),
                                  child: ElevatedButton(
                                    onPressed: () {
                                      Navigator.pushNamed(
                                        context,
                                        "vieworderrequests",
                                        arguments: snapshot.data!.docs[index],
                                      );
                                    },
                                    style: ButtonStyle(
                                      backgroundColor:
                                          MaterialStateColor.resolveWith(
                                        (states) => Colors
                                            .deepPurple.shade400, // Set the desired background color
                                      ),
                                      fixedSize:
                                          MaterialStateProperty.all<Size>(
                                        const Size(300,
                                            50), // Set the desired width and height
                                      ),
                                    ),
                                    child: Text(
                                      // to get id to get details for next page
                                      // snapshot.data!.docs[index].id,
                                      snapshot.data!.docs[index]['name'] ??
                                          "dummy",
                                      style: const TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold,
                                        fontStyle: FontStyle.italic,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          );
                        });
                  } else {
                    return const Text('Empty data');
                  }
                } else {
                  return Text('State: ${snapshot.connectionState}');
                }
              }),
        
        ),
        drawer: const my_drawer(),
      ),
    );
  }
}
