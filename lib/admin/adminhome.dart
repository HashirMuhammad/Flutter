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
                    style: ButtonStyle(
                      fixedSize: MaterialStateProperty.all<Size>(
                        const Size(
                            400, 100), // Set the desired width and height
                      ),
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
                    style: ButtonStyle(
                      fixedSize: MaterialStateProperty.all<Size>(
                        const Size(
                            400, 100), // Set the desired width and height
                      ),
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
                    style: ButtonStyle(
                      fixedSize: MaterialStateProperty.all<Size>(
                        const Size(400, 80), // Set the desired width and height
                      ),
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
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, "chat");
                    },
                    style: ButtonStyle(
                      fixedSize: MaterialStateProperty.all<Size>(
                        const Size(400, 70), // Set the desired width and height
                      ),
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
        drawer: const my_drawer(),
      ),
    );
  }
}
