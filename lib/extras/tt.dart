// import 'package:flutter/material.dart';

// void main() {
//   runApp(MaterialApp(
//     theme: ThemeData(
//       primaryColor: Colors.green,
//     ),
//     home: StockzLoginPage(),
//   ));
// }

// class StockzLoginPage extends StatefulWidget {
//   @override
//   _StockzLoginPageState createState() => _StockzLoginPageState();
// }

// class _StockzLoginPageState extends State<StockzLoginPage> {
//   TextEditingController _emailController = TextEditingController();
//   TextEditingController _passwordController = TextEditingController();
//   bool _isEmailFocused = false;
//   bool _isPasswordFocused = false;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Padding(
//         padding: EdgeInsets.all(16.0),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Text(
//                   'STOCKZ',
//                   style: TextStyle(
//                     fontSize: 36.0,
//                     fontWeight: FontWeight.bold,
//                     fontFamily: 'Roboto',
//                   ),
//                 ),
//                 SizedBox(width: 8.0),
//                 Icon(
//                   Icons.eco,
//                   color: Colors.green,
//                   size: 46,
//                 ),
//               ],
//             ),
//             SizedBox(height: 32.0),
//             TextField(
//               controller: _emailController,
//               onTap: () {
//                 setState(() {
//                   _isEmailFocused = true;
//                   _isPasswordFocused = false;
//                 });
//               },
//               decoration: InputDecoration(
//                 labelText: 'Email',
//                 fillColor: _isEmailFocused ? Colors.green : null,
//               ),
//             ),
//             SizedBox(height: 16.0),
//             TextField(
//               controller: _passwordController,
//               onTap: () {
//                 setState(() {
//                   _isPasswordFocused = true;
//                   _isEmailFocused = false;
//                 });
//               },
//               obscureText: true,
//               decoration: InputDecoration(
//                 labelText: 'Password',
//                 fillColor: _isPasswordFocused ? Colors.green : null,
//               ),
//             ),
//             SizedBox(height: 24.0),
//             ElevatedButton(
//               style: ElevatedButton.styleFrom(
//                 primary: Colors.green, // Set the button color to green
//               ),
//               onPressed: () {
//                 // Perform login logic here
//               },
//               child: Text('Log In'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
