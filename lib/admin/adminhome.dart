import 'package:flutter/material.dart';
import 'package:test_1/drawer/drawer.dart';

class adminhome extends StatelessWidget {
  const adminhome({super.key});

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
          title: const Text("Admin Home"),
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
                      Navigator.pushNamed(context, "orderrequests");
                    },
                     style: ElevatedButton.styleFrom(
                      primary: Colors.deepPurpleAccent.shade200, // Set the desired background color
                      fixedSize: const Size(400, 100), // Set the desired width and height
                    ),
                    child: const Text(
                      "View Order Requests",
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
                      Navigator.pushNamed(context, "orders");
                    },
                     style: ElevatedButton.styleFrom(
                      primary: Colors.deepPurpleAccent.shade200, // Set the desired background color
                      fixedSize: const Size(400, 100), // Set the desired width and height
                    ),
                    child: const Text(
                      ' Orders',
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
                      Navigator.pushNamed(context, "pricingcalculator");
                    },
                     style: ElevatedButton.styleFrom(
                      primary: Colors.deepPurpleAccent.shade200, // Set the desired background color
                      fixedSize: const Size(400, 100), // Set the desired width and height
                    ),
                    child: const Text(
                      'Pricing Calculator',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                  ),
                  const SizedBox(height: 16.0),
                ],
              ),
            ),
          ),
        ),
        drawer: const my_drawer(),
      ),
    );
  }
}
