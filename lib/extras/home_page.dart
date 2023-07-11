// import 'package:flutter/material.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:test_1/auth.dart';
// import 'package:test_1/drawer/clientdrawer.dart';

// class HomePage extends StatelessWidget {
//    HomePage({super.key});

//   final User? user = Auth().currentUser;

  

//   Widget title(){
//     return const Text("Home");
//   }

//   Widget userUid(){
//     return Text(user?.email ?? "User email");
//   }

  

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       decoration: const BoxDecoration(
//         image: DecorationImage(
//           image: AssetImage("assets/images/started.png"),
//           fit: BoxFit.cover,
//         ),
//       ),
//       child: Scaffold(
//         backgroundColor: Colors.transparent,
//         appBar: AppBar(
//           title: title(),
//         ),
//         body: Container(
//           height: double.infinity,
//           width: double.infinity,
//           padding: EdgeInsetsDirectional.all(20),
//           child: Center(
//             child: Padding(
//               padding: const EdgeInsets.all(16.0),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.center,
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: <Widget>[
//                     const SizedBox(height: 16.0),
//                     ElevatedButton(
//                       onPressed: () {
//                         Navigator.pushNamed(context, "placeorder");
//                       },
//                       style: ButtonStyle(
//                         fixedSize: MaterialStateProperty.all<Size>(
//                           const Size(400, 100), // Set the desired width and height
//                         ),
//                       ),
//                       child: const Text(
//                         "Place Order",
//                         style: TextStyle(
//                           fontSize: 25,
//                           fontWeight: FontWeight.bold,
//                           fontStyle: FontStyle.italic,
//                         ),
//                       ),
//                     ),
//                     const SizedBox(height: 16.0),
//                     ElevatedButton(
//                       onPressed: () {
//                         Navigator.pushNamed(context, "pendingorder");
//                       },
//                       style: ButtonStyle(
//                         fixedSize: MaterialStateProperty.all<Size>(
//                           const Size(400, 100), // Set the desired width and height
//                         ),
//                       ),
//                       child: const Text(
//                         'Pending Orders',
//                         style: TextStyle(
//                           fontSize: 25,
//                           fontWeight: FontWeight.bold,
//                           fontStyle: FontStyle.italic,
//                         ),
//                       ),
//                     ),
//                     const SizedBox(height: 16.0),
//                     ElevatedButton(
//                       onPressed: () {
//                         Navigator.pushNamed(context, "reviews");
//                       },
//                       style: ButtonStyle(
//                         fixedSize: MaterialStateProperty.all<Size>(
//                           const Size(400, 80), // Set the desired width and height
//                         ),
//                       ),
//                       child: const Text(
//                         // 'Customer Reviews',
//                         style: TextStyle(
//                           fontSize: 25,
//                           fontWeight: FontWeight.bold,
//                           fontStyle: FontStyle.italic,
//                         ),
//                       ),
//                     ),
//                     const SizedBox(height: 16.0),
//                     ElevatedButton(
//                       onPressed: () {
//                         Navigator.pushNamed(context, "chat");
//                       },
//                       style: ButtonStyle(
//                         fixedSize: MaterialStateProperty.all<Size>(
//                           const Size(400, 70), // Set the desired width and height
//                         ),
//                       ),
//                       child: const Text(
//                         'Chat',
//                         style: TextStyle(
//                           fontSize: 25,
//                           fontWeight: FontWeight.bold,
//                           fontStyle: FontStyle.italic,
//                         ),
//                       ),
//                     ),
//                   ],
//               ),
//             ),
//           ),
//         ),
//         drawer: const clientdrawer(),
//       ),
//     );
//   }
// }