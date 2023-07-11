import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:test_1/drawer/drawer.dart';

class orders extends StatefulWidget {
  const orders({super.key});

  @override
  State<orders> createState() => _ordersState();
}

class _ordersState extends State<orders> {
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
          title: const Text("Orders"),
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
                          print(snapshot.data!.docs[index]);
                          return SingleChildScrollView(
                            child: Column(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(bottom: 10),
                                  child: ElevatedButton(
                                    onPressed: () {
                                      Navigator.pushNamed(
                                          context, "updatetracking",
                                          arguments: snapshot.data!.docs[index],);
                                    },
                                    style: ButtonStyle(
                                      fixedSize:
                                          MaterialStateProperty.all<Size>(
                                        const Size(260,
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
          // child: Column(
          //   children: [
          //     const SizedBox(
          //       height: 16,
          //     ),
          //     Row(
          //       children: [
          // ElevatedButton(
          //   onPressed: () {
          //     Navigator.pushNamed(context, "updatetracking");
          //   },
          //   style: ButtonStyle(
          //     fixedSize: MaterialStateProperty.all<Size>(
          //       const Size(260, 50), // Set the desired width and height
          //     ),
          //   ),
          //   child: const Text(
          //     'Order Name',
          //     style: TextStyle(
          //       fontSize: 25,
          //       fontWeight: FontWeight.bold,
          //       fontStyle: FontStyle.italic,
          //     ),
          //   ),
          // ),
          //         Container(
          //           alignment: Alignment.topLeft,
          //           child: IconButton(
          //             onPressed: () {},
          //             icon: const Icon(Icons.skip_next_outlined),
          //             iconSize: 30,
          //           ),
          //         ),
          //       ],
          //     ),
          //     const SizedBox(
          //       height: 16,
          //     ),
          //     Row(
          //       children: [
          //         ElevatedButton(
          //           onPressed: () {
          //             Navigator.pushNamed(context, "updatetracking");
          //           },
          //           style: ButtonStyle(
          //             fixedSize: MaterialStateProperty.all<Size>(
          //               const Size(260, 50), // Set the desired width and height
          //             ),
          //           ),
          //           child: const Text(
          //             'Order Name',
          //             style: TextStyle(
          //               fontSize: 25,
          //               fontWeight: FontWeight.bold,
          //               fontStyle: FontStyle.italic,
          //             ),
          //           ),
          //         ),
          //         Container(
          //           alignment: Alignment.topLeft,
          //           child: IconButton(
          //             onPressed: () {},
          //             icon: const Icon(Icons.skip_next_outlined),
          //             iconSize: 30,
          //           ),
          //         ),
          //       ],
          //     ),
          //     const SizedBox(
          //       height: 16,
          //     ),
          //     Row(
          //       children: [
          //         ElevatedButton(
          //           onPressed: () {
          //             Navigator.pushNamed(context, "updatetracking");
          //           },
          //           style: ButtonStyle(
          //             fixedSize: MaterialStateProperty.all<Size>(
          //               const Size(260, 50), // Set the desired width and height
          //             ),
          //           ),
          //           child: const Text(
          //             'Order Name',
          //             style: TextStyle(
          //               fontSize: 25,
          //               fontWeight: FontWeight.bold,
          //               fontStyle: FontStyle.italic,
          //             ),
          //           ),
          //         ),
          //         Container(
          //           alignment: Alignment.topLeft,
          //           child: IconButton(
          //             onPressed: () {},
          //             icon: const Icon(Icons.skip_next_outlined),
          //             iconSize: 30,
          //           ),
          //         ),
          //       ],
          //     ),
          //   ],
          // ),
        ),
        drawer: const my_drawer(),
      ),
    );
  }
}
