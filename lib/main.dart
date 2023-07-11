import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:test_1/admin/adminhome.dart';
import 'package:test_1/admin/orderrequests.dart';
import 'package:test_1/admin/orders.dart';
import 'package:test_1/admin/pricingcalculator.dart';
import 'package:test_1/admin/updatetracking.dart';
import 'package:test_1/admin/vieworderrequests.dart';
import 'package:test_1/chat.dart';
import 'package:test_1/client/clientorders.dart';
import 'package:test_1/client/home.dart';
import 'package:test_1/client/pendingorder.dart';
import 'package:test_1/client/placeorder.dart';
import 'package:test_1/client/reviews.dart';
import 'package:test_1/drawerpages/aboutus.dart';
import 'package:test_1/drawerpages/contactus.dart';
import 'package:test_1/drawerpages/profile.dart';
import 'package:test_1/drawerpages/trackorderinfo.dart';
import 'package:test_1/login.dart';
import 'package:test_1/signup.dart';
import 'package:test_1/forgot.dart';
import 'package:test_1/getstarted.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const myapp());
}

class myapp extends StatelessWidget {
  const myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "getstarted",
      routes: {
        "/": (context) => GetStarted(),
        "getstarted": (context) => GetStarted(),
        "signup": (context) => signup_page(),
        "login": (context) => const login_page(),
        "forgot": (context) => const forgot(),
        //client
        "home": (context) => const home(),
        "placeorder": (context) => const PlaceOrder(),
        "clientorders": (context) => clientorders(),
        "pendingorder": (context) => const pendingorder(),
        "profile": (context) => const Profile(),
        "aboutus": (context) => const aboutus(),
        "trackorderinfo": (context) => const trackorderinfo(),
        "contactus": (context) => const ContactUs(),
        "reviews": (context) => const reviews(),
        //admin
        "adminhome": (context) => const adminhome(),
        "orderrequests": (context) => orderrequests(),
        "pricingcalculator": (context) => const PricingCalculator(),
        "vieworderrequests": (context) => vieworderrequests(),
        "orders": (context) => const orders(),
        "chat": (context) => const ChatScreen(),
        "updatetracking": (context) => const updatetracking(),
        "adminhome": (context) => adminhome(),

        // "loginorregister": (context) => LoginPage(),
        // "location":(context) => Location(),
        // "truck":(context) => TruckPage(),
        // "notrucks": (context) => NoTrucks(),
        // "tt": (context) => StockzLoginPage(),
        // "widget": (context) => WidgetTree(),
      },
    );
  }
}
  

// import 'package:flutter/material.dart';
// void main(List<String> args) {
//   runApp(myapp());
// }

// class myapp extends StatelessWidget {
//   const myapp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Material(
//         child: Container(
//           color: Colors.blue,
//           child: Padding(
//             padding: const EdgeInsets.all(16.0),
//             child: SingleChildScrollView(
//               child: Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: Column(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                    Padding(
//                      padding: const EdgeInsets.only(bottom: 10),
//                      child: SingleChildScrollView(
//                       scrollDirection: Axis.horizontal,
//                        child: Row(
//                          children: [
//                            Padding(
//                              padding: const EdgeInsets.only(right: 10),
//                              child: Container(
//                               height: 150,
//                               width: 150,
//                               color: Colors.yellow,
//                                        ),
//                            ),
//                            Padding(
//                              padding: const EdgeInsets.only(right: 10),
//                              child: Container(
//                               height: 150,
//                               width: 150,
//                               color: Color.fromARGB(255, 255, 163, 59),
//                                        ),
//                            ),         
//                          ],
//                        ),
//                      ),
//                    ),
//                   Padding(
//                     padding: const EdgeInsets.only(bottom: 10),
//                     child: Container(
//                       height: 150,
//                       width: 300,
//                       color: Color.fromARGB(255, 255, 59, 59),
//                     ),
//                   ),
//                   SingleChildScrollView(
//                     scrollDirection: Axis.horizontal,
//                     child: Row(
//                       children: [
//                         Padding(
//                           padding: const EdgeInsets.only(right: 10),
//                           child: Container(
//                             height: 150,
//                             width: 150,
//                             color: Color.fromARGB(255, 105, 255, 59),
//                           ),
//                         ),
//                         Padding(
//                           padding: const EdgeInsets.only(right: 10),
//                           child: Container(
//                             height: 150,
//                             width: 150,
//                             color: Color.fromARGB(255, 59, 248, 255),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
                  
//                   ],
//                 ),
//               ),
//             ),
//           ),
//           // child: Center(
//           //   child: Container(
//           //     height: 100,
//           //     width: 100,
//           //     color: Colors.yellow,
//           //   ),
//           // ),
//           // height: 100,
//           // width: 100,
//           // color: Colors.blue,
//           // child: Center(
//           //   child: Text("fuck you", style:
//           //    TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white),),
//           ),
//         ),
//       );
//   }
// }


// import 'package:flutter/material.dart';
// void main(List<String> args) {
//   runApp( myapp());
// }

// class myapp extends StatelessWidget {
//    myapp({super.key});
//   @override

//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title:  Text('Login Page'),
//       ),
//       body: Padding(
//         padding:  EdgeInsets.all(16.0),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//              TextField(
//               // decoration: InputDecoration(
//               //   labelText: 'Email',
//               //   // border: OutlineInputBorder(),
//               // ),
//             ),
//             //SizedBox(height: 10,)
//              SizedBox(height: 16.0),
//              TextField(
//               // obscureText: true,
//               // decoration: InputDecoration(
//               //   labelText: 'Password',
//               //   // border: OutlineInputBorder(),
//               // ),
//             ),
//              SizedBox(height: 16.0),
//           ],
//         ),
//       ),
//     );
//   }
// }
