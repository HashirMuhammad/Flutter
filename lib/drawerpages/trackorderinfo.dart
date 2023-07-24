import 'package:flutter/material.dart';

class trackorderinfo extends StatelessWidget {
  const trackorderinfo({super.key});

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
          title: const Text("Track Order Status Info"),
        ),
        body: const Padding(
          padding: EdgeInsets.only(left: 10.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 8,
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      "Tracking order status is a crucial aspect of order management. It provides customers with real-time information about the progress and location of their package. Here's a summary of information included in order status tracking:",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "* Order",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "* Approved",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "* Casting",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "* Leveling",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "* Polishing",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "* Fitting",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "* Reviewing",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "* Sent for Sample",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "* Sample Approval",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "* Shipping",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                // Center(
                //   child: Padding(
                //     padding: const EdgeInsets.all(8.0),
                //     child: Row(
                //       children: [
                //         Center(
                //           child: CircleAvatar(
                //             radius: 16,
                //             backgroundColor: Colors.grey,
                //             child: Center(
                //               child: IconButton(
                //                 icon: Icon(
                //                   Icons.arrow_back,
                //                   size: 16,
                //                 ),
                //                 color: Colors.black,
                //                 onPressed: () {
                //                   Navigator.pushNamed(context, "home");
                //                 },
                //               ),
                //             ),
                //           ),
                //         ),
                //         TextButton(
                //           onPressed: () {
                //             Navigator.pushNamed(context, "home");
                //           },
                //           child: Text(
                //             'Back to Home',
                //             style: TextStyle(
                //               fontSize: 14,
                //               color: Colors.black,
                //             ),
                //           ),
                //         ),
                //       ],
                //     ),
                //   ),
                // ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
