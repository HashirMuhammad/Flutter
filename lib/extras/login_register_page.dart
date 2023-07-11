// import 'package:flutter/material.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:test_1/global.dart';

// class LoginPage extends StatefulWidget {
//   const LoginPage({Key? key});

//   @override
//   State<LoginPage> createState() => _LoginPageState();
// }

// class _LoginPageState extends State<LoginPage> {
//   String? errorMessage = '';
//   bool isLogin = true;

//   final TextEditingController controllerEmail = TextEditingController();
//   final TextEditingController controllerPassword = TextEditingController();

//   Future<void> signInWithEmailAndPassword() async {
//     try {
//       await Auth().signInWithEmailAndPassword(
//           email: controllerEmail.text, password: controllerPassword.text);
//     } on FirebaseAuthException catch (e) {
//       setState(() {
//         errorMessage = e.message;
//       });
//     }
//   }

//   Future<void> createUserWithEmailAndPassword() async {
//     try {
//       await Auth().createUserWithEmailAndPassword(
//           email: controllerEmail.text, password: controllerPassword.text);
//     } on FirebaseAuthException catch (e) {
//       setState(() {
//         errorMessage = e.message;
//       });
//     }
//   }

//   Widget title() {
//     return const Text("Login");
//   }

//   Widget entryField(
//     String title,
//     TextEditingController controller,
//   ) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(vertical: 8.0),
//       child: TextField(
//         controller: controller,
//         decoration: InputDecoration(
//           labelText: title,
//           border: OutlineInputBorder(),
//         ),
//       ),
//     );
//   }

//   Widget _errorMessage() {
//     return Text(
//       errorMessage == '' ? '' : 'Hmm? $errorMessage',
//       style: TextStyle(color: Colors.red),
//     );
//   }

//   Widget submitButton() {
//     return ElevatedButton(
//       onPressed: isLogin
//           ? () {
//               if (controllerEmail.text.isEmpty || controllerPassword.text.isEmpty) {
//                 setState(() {
//                   errorMessage = 'Please fill in all fields.';
//                 });
//               } else {
//                 setState(() {
//                   errorMessage = '';
//                 });
//                 signInWithEmailAndPassword();
//               }
//             }
//           : () {
//               if (controllerEmail.text.isEmpty || controllerPassword.text.isEmpty) {
//                 setState(() {
//                   errorMessage = 'Please fill in all fields.';
//                 });
//               } else {
//                 setState(() {
//                   errorMessage = '';
//                 });
//                 createUserWithEmailAndPassword();
//               }
//             },
//       child: Text(isLogin ? 'Login' : 'Register'),
//     );
//   }

//   Widget loginOrRegisterButton() {
//     return TextButton(
//       onPressed: () {
//         setState(() {
//           isLogin = !isLogin;
//         });
//       },
//       child: Text(isLogin ? 'Register instead' : 'Login instead'),
//     );
//   }

//   void login() {
//     String email = controllerEmail.text;
//     String password = controllerPassword.text;

//     if (email.isNotEmpty && password.isNotEmpty) {
//       if (email == 'umerarshad11157@gmail.com' && password == 'Aliumer1') {
//         Navigator.pushNamed(context, "adminhome");
//       } else {
//         Navigator.pushNamed(context, "home");
//       }
//     } else {
//       setState(() {
//         errorMessage = 'Please fill in all fields.';
//       });
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: title(),
//       ),
//       body: Container(
//         decoration: BoxDecoration(
//           image: DecorationImage(
//             image: AssetImage("assets/images/started.png"),
//             fit: BoxFit.cover,
//           ),
//         ),
//         child: Padding(
//           padding: const EdgeInsets.all(20),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.center,
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: <Widget>[
//               entryField('Email', controllerEmail),
//               entryField('Password', controllerPassword),
//               _errorMessage(),
//               ElevatedButton(
//                 onPressed: login,
//                 child: Text(isLogin ? 'Login' : 'Register'),
//               ),
//               loginOrRegisterButton(),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
