import 'package:flutter/material.dart';
import 'package:test_1/global.dart';

class my_drawer extends StatelessWidget {
  const my_drawer({super.key});

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
  //   await Auth().signOut();
  // }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/drawer.jpeg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            const SizedBox(
              height: 8,
            ),
            Row(
              children: [
                Container(
                  alignment: Alignment.topLeft,
                  child: IconButton(
                    onPressed: () {
                      Navigator.pushNamed(context, "adminhome");
                    },
                    icon: const Icon(Icons.home),
                    iconSize: 50,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 16.0),
                  child: TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, "adminhome");
                    },
                    child: const Text("Home",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                          color: Colors.black,
                        )),
                  ),
                )
              ],
            ),
            Row(
              children: [
                Container(
                  alignment: Alignment.topLeft,
                  child: IconButton(
                    onPressed: () {
                      Navigator.pushNamed(context, "trackorderinfo");
                    },
                    icon: const Icon(Icons.sentiment_satisfied_sharp),
                    iconSize: 50,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 16.0),
                  child: TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, "trackorderinfo");
                    },
                    child: const Text("Track Order Info",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                          color: Colors.black,
                        )),
                  ),
                )
              ],
            ),
            Row(
              children: [
                Container(
                  alignment: Alignment.topLeft,
                  child: IconButton(
                    onPressed: () {
                      Navigator.pushNamed(context, "contactus");
                    },
                    icon: const Icon(Icons.call),
                    iconSize: 50,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 16.0),
                  child: TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, "contactus");
                    },
                    child: const Text("Contact Us",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                          color: Colors.black,
                        )),
                  ),
                )
              ],
            ),
            Row(
              children: [
                Container(
                  alignment: Alignment.topLeft,
                  child: IconButton(
                    onPressed: () {
                      Navigator.pushNamed(context, "aboutus");
                    },
                    icon: const Icon(Icons.info),
                    iconSize: 50,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 16.0),
                  child: TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, "aboutus");
                    },
                    child: const Text("About Us",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                          color: Colors.black,
                        )),
                  ),
                )
              ],
            ),
            Row(
              children: [
                Container(
                  alignment: Alignment.topLeft,
                  child: IconButton(
                    onPressed: () {
                      signOut(context);
                    },
                    icon: const Icon(Icons.logout),
                    iconSize: 50,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 16.0),
                  // child: signOutButton(),
                  child: TextButton(
                    onPressed: () {
                      signOut(context);
                    },
                    child: const Text("Logout",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                          color: Colors.black,
                        )),
                  ),
                )
              ],
            ),

            //   child: Padding(
            //     padding: const EdgeInsets.all(8.0),
            //     child: ElevatedButton(onPressed: (){},
            //      child: Text("Profile"),),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
