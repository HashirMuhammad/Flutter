import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:test_1/drawer/clientdrawer.dart';

class reviews extends StatefulWidget {
  const reviews({super.key});

  @override
  State<reviews> createState() => _reviewsState();
}

class _reviewsState extends State<reviews> {
  //Instantiate Firestore
  final db = FirebaseFirestore.instance;

  List<Review> reviews = [
    Review('John Doe', 'Great service!'),
    Review('Jane Smith', 'Highly recommended!'),
    Review('Alex Johnson', 'Excellent quality!'),
  ];

  final TextEditingController nameController = TextEditingController();
  final TextEditingController reviewController = TextEditingController();

  void addReview() async {
    setState(() {});
    String name = nameController.text;
    String content = reviewController.text;
    bool hasEmptyFields =
        nameController.text.isEmpty || reviewController.text.isEmpty;
    if (!hasEmptyFields) {
      await db.collection('review').add({
        "name": nameController.text.trim(),
        "review": reviewController.text.trim(),
      });
      Review review = Review(name, content);
      reviews.add(review);
    }
    nameController.clear();
    reviewController.clear();
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
          backgroundColor: Colors.deepPurpleAccent.shade200,
          title: const Text("Reviews"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Builder(builder: (context) {
            return Column(
              children: [
                Expanded(
                  child: FutureBuilder<QuerySnapshot<Map<String, dynamic>>>(
                      future: db.collection('review').get(),
                      builder: (
                        BuildContext context,
                        AsyncSnapshot<QuerySnapshot<Map<String, dynamic>>>
                            snapshot,
                      ) {
                        if (snapshot.connectionState ==
                            ConnectionState.waiting) {
                          return Center(child: CircularProgressIndicator());
                        } else if (snapshot.connectionState ==
                            ConnectionState.done) {
                          if (snapshot.hasError) {
                            return const Text('Error');
                          } else if (snapshot.hasData) {
                            return ListView.builder(
                                itemCount: snapshot.data!.docs.length,
                                itemBuilder: (BuildContext ctxt, int index) {
                                  debugPrint(snapshot.data!.docs[index]
                                      .data()['review']);
                                  return SingleChildScrollView(
                                    child: Column(
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                              color: Colors.black,
                                              width: 1,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                          ),
                                          margin: const EdgeInsets.symmetric(
                                              vertical: 8.0),
                                          padding: const EdgeInsets.all(8.0),
                                          child: ListTile(
                                            title: Text(
                                              '${snapshot.data!.docs[index].data()['name']}: ${snapshot.data!.docs[index].data()['review']}',
                                              style: const TextStyle(
                                                  fontSize: 12.0),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  );
                                });
                          }
                        }
                        return ListView.builder(
                          itemCount: reviews.length,
                          itemBuilder: (context, index) {
                            return Container(
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.black,
                                  width: 1,
                                ),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              margin: const EdgeInsets.symmetric(vertical: 8.0),
                              padding: const EdgeInsets.all(8.0),
                              child: ListTile(
                                title: Text(
                                  '${reviews[index].name}: ${reviews[index].content}',
                                  style: const TextStyle(fontSize: 12.0),
                                ),
                              ),
                            );
                          },
                        );
                      }),
                ),
                TextField(
                  controller: nameController,
                  decoration: const InputDecoration(
                    labelText: 'Your Name',
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 8.0),
                TextField(
                  controller: reviewController,
                  decoration: const InputDecoration(
                    labelText: 'Add a Review',
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 16.0),
                ElevatedButton(
                  onPressed: addReview,
                  style: ElevatedButton.styleFrom(
                    primary: Colors.deepPurpleAccent
                        .shade200, // Set the desired background color
                  ),
                  child: const Text('Submit Review'),
                ),
                Row(
                  children: [
                    Center(
                      child: CircleAvatar(
                        radius: 16,
                        backgroundColor: Colors.grey,
                        child: Center(
                          child: IconButton(
                            icon: const Icon(
                              Icons.arrow_back,
                              size: 16,
                            ),
                            color: Colors.black,
                            onPressed: () {
                              Navigator.pushNamed(context, "home");
                            },
                          ),
                        ),
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, "home");
                      },
                      child: const Text(
                        'Back to Home',
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            );
          }),
        ),
        drawer: const clientdrawer(),
      ),
    );
  }
}

class Review {
  final String name;
  final String content;

  Review(this.name, this.content);
}
