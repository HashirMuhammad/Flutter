// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:test_1/global.dart';
// import 'package:test_1/client/home.dart';
// import 'package:test_1/extras/login.dart';
// // import 'package:test_1/home_page.dart';
// import 'package:test_1/login_register_page.dart';
// import 'package:flutter/material.dart';

// class WidgetTree extends StatefulWidget {
//   const WidgetTree({super.key});

//   @override
//   State<WidgetTree> createState() => _WidgetTreeState();
// }

// class _WidgetTreeState extends State<WidgetTree> {
//   @override
//   Widget build(BuildContext context) {
//     return StreamBuilder(
//         stream: Auth().authStateChanges,
//         builder: (context, snapshot) {
//           if (snapshot.hasData) {
//             return home();
//           } else {
//             return const Login();
//           }
//         });
//   }
// }
