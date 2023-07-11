import 'package:flutter/material.dart';
import 'package:test_1/global.dart';

class clientdrawer extends StatelessWidget {
  const clientdrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/started.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            const SizedBox(
              height: 16,
            ),
            Row(
              children: [
                Container(
                  alignment: Alignment.topLeft,
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.account_circle),
                    iconSize: 50,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 16.0),
                  child: TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, "profile");
                    },
                    child: const Text("Profile",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                          color: Colors.black,
                        )),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 8,
            ),
            Row(
              children: [
                Container(
                  alignment: Alignment.topLeft,
                  child: IconButton(
                    onPressed: () {
                      Navigator.pushNamed(context, "home");
                    },
                    icon: const Icon(Icons.home),
                    iconSize: 50,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 16.0),
                  child: TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, "home");
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
                  child: TextButton(
                    onPressed: () {
                      signOut(context);
                      // signOutButton();
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
