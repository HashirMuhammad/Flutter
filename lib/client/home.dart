import 'package:flutter/material.dart';
import 'package:test_1/drawer/clientdrawer.dart';
import 'package:test_1/global.dart';

class home extends StatelessWidget {
  const home({super.key});

  // Widget signOutButton() {
  //   return TextButton(
  //     onPressed: signOut,
  //     child: Text("Sign Out",
  //         style: TextStyle(
  //           fontWeight: FontWeight.w500,
  //           fontSize: 14,
  //           color: Colors.black,
  //         )),
  //   );
  // }

  // Future<void> signOut() async {
  //   await fAuth.signOut();
  // }

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
          title: const Text("home"),
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const SizedBox(height: 16.0),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.deepPurpleAccent.shade200, // Set the desired background color
                      fixedSize: const Size(400, 100), // Set the desired width and height
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, "placeorder");
                    },
                    child: const Text(
                      "Place Order",
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
                      Navigator.pushNamed(context, "clientorders");
                    },
                   style: ElevatedButton.styleFrom(
                      primary: Colors.deepPurpleAccent.shade200, // Set the desired background color
                      fixedSize: const Size(400, 100), // Set the desired width and height
                    ),
                    child: const Text(
                      'Pending Orders',
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
                      Navigator.pushNamed(context, "reviews");
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.deepPurpleAccent.shade200, // Set the desired background color
                      fixedSize: const Size(400, 100), // Set the desired width and height
                    ),
                    child: const Text(
                      'Customer Reviews',
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
                      Navigator.pushNamed(context, "chat");
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.deepPurpleAccent.shade200, // Set the desired background color
                      fixedSize: const Size(400, 100), // Set the desired width and height
                    ),
                    child: const Text(
                      'Chat',
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
        drawer: clientdrawer(),
      ),
    );
  }
}
