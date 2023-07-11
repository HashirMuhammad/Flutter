// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';

// class SignupPage extends StatefulWidget {
//   const SignupPage({super.key});

//   @override
//   _SignupPageState createState() => _SignupPageState();
// }

// class _SignupPageState extends State<SignupPage> {
//   bool isLoading = false;
//   TextEditingController nameController = TextEditingController();
//   TextEditingController addressController = TextEditingController();
//   String? selectedGender; // Gender variable
//   TextEditingController phoneNumberController = TextEditingController();
//   TextEditingController cnicController = TextEditingController();
//   TextEditingController emailController = TextEditingController();
//   TextEditingController passwordController = TextEditingController();
//   bool nameFieldEmpty = false;
//   bool addressFieldEmpty = false;
//   bool phoneNumberFieldEmpty = false;
//   bool phoneNumberInvalid = false;
//   bool cnicFieldEmpty = false;
//   bool cnicInvalid = false;
//   bool emailFieldEmpty = false;
//   bool passwordFieldEmpty = false;
//   bool passwordWarning = false;

//   @override
//   void dispose() {
//     nameController.dispose();
//     addressController.dispose();
//     phoneNumberController.dispose();
//     cnicController.dispose();
//     super.dispose();
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
//           title: const Text('Signup Page'),
//         ),
//         body: Padding(
//           padding: const EdgeInsets.all(16.0),
//           child: SingleChildScrollView(
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 TextField(
//                   controller: nameController,
//                   decoration: InputDecoration(
//                     labelText: 'Name',
//                     border: const OutlineInputBorder(),
//                     errorText: nameFieldEmpty ? 'Name cannot be empty' : null,
//                     errorStyle:
//                         const TextStyle(color: Colors.red), // Add this line
//                   ),
//                   onChanged: (value) {
//                     setState(() {
//                       nameFieldEmpty = value.isEmpty;
//                     });
//                   },
//                 ),
//                 const SizedBox(height: 16.0),
//                 TextField(
//                   controller: addressController,
//                   decoration: InputDecoration(
//                     labelText: 'Address',
//                     border: const OutlineInputBorder(),
//                     errorText:
//                         addressFieldEmpty ? 'Address cannot be empty' : null,
//                     errorStyle:
//                         const TextStyle(color: Colors.red), // Add this line
//                   ),
//                   onChanged: (value) {
//                     setState(() {
//                       addressFieldEmpty = value.isEmpty;
//                     });
//                   },
//                 ),
//                 const SizedBox(height: 16.0),
//                 DropdownButtonFormField<String>(
//                   value: selectedGender,
//                   decoration: InputDecoration(
//                     labelText: 'Gender',
//                     border: const OutlineInputBorder(),
//                     errorText: selectedGender == null
//                         ? 'Please select a gender'
//                         : null,
//                   ),
//                   items: const [
//                     DropdownMenuItem<String>(
//                       value: 'Male',
//                       child: Text('Male'),
//                     ),
//                     DropdownMenuItem<String>(
//                       value: 'Female',
//                       child: Text('Female'),
//                     ),
//                   ],
//                   onChanged: (value) {
//                     setState(() {
//                       selectedGender = value;
//                     });
//                   },
//                 ),
//                 const SizedBox(height: 16.0),
//                 TextField(
//                   controller: phoneNumberController,
//                   keyboardType: TextInputType.phone,
//                   inputFormatters: [
//                     FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
//                     LengthLimitingTextInputFormatter(11),
//                   ],
//                   decoration: InputDecoration(
//                     labelText: 'Phone Number',
//                     border: const OutlineInputBorder(),
//                     errorText: phoneNumberFieldEmpty
//                         ? 'Phone number cannot be empty'
//                         : phoneNumberInvalid
//                             ? 'Please enter a valid phone number'
//                             : null,
//                     errorStyle:
//                         const TextStyle(color: Colors.red), // Add this line
//                   ),
//                   onChanged: (value) {
//                     setState(() {
//                       phoneNumberFieldEmpty = value.isEmpty;
//                       phoneNumberInvalid = value.length != 11;
//                     });
//                   },
//                 ),
//                 const SizedBox(height: 16.0),
//                 TextField(
//                   controller: cnicController,
//                   keyboardType: TextInputType.number,
//                   inputFormatters: [
//                     FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
//                     LengthLimitingTextInputFormatter(13),
//                   ],
//                   decoration: InputDecoration(
//                     labelText: 'CNIC',
//                     border: const OutlineInputBorder(),
//                     errorText: cnicFieldEmpty
//                         ? 'CNIC cannot be empty'
//                         : cnicInvalid
//                             ? 'Please enter a valid CNIC'
//                             : null,
//                     errorStyle:
//                         const TextStyle(color: Colors.red), // Add this line
//                   ),
//                   onChanged: (value) {
//                     setState(() {
//                       cnicFieldEmpty = value.isEmpty;
//                       cnicInvalid = value.length != 13;
//                     });
//                   },
//                 ),
//                 SizedBox(
//                   height: 16.0,
//                 ),
//                 TextField(
//                   controller: emailController,
//                   decoration: InputDecoration(
//                     labelText: 'Email',
//                     border: const OutlineInputBorder(),
//                     errorText: nameFieldEmpty ? 'Email cannot be empty' : null,
//                     errorStyle:
//                         const TextStyle(color: Colors.red), // Add this line
//                   ),
//                   onChanged: (value) {
//                     setState(() {
//                       emailFieldEmpty = value.isEmpty;
//                     });
//                   },
//                 ),
//                 SizedBox(height: 16.0),
//                 TextField(
//                     controller: passwordController,
//                     obscureText: true,
//                     inputFormatters: [
//                       LengthLimitingTextInputFormatter(8),
//                     ],
//                     decoration: InputDecoration(
//                       labelText: 'Password',
//                       border: const OutlineInputBorder(),
//                       errorText: passwordFieldEmpty
//                           ? 'Password cannot be empty'
//                           : (passwordWarning
//                               ? 'Password should be at least 8 characters'
//                               : null),
//                       errorStyle:
//                           const TextStyle(color: Colors.red), // Add this line
//                     ),
//                     onChanged: (value) {
//                       setState(() {
//                         passwordFieldEmpty = value.isEmpty;
//                         passwordFieldEmpty = value.length != 8;
//                       });
//                     }),
//                 const SizedBox(height: 16.0),
//                 ElevatedButton(
//                   onPressed: () {
//                     bool hasEmptyFields = nameController.text.isEmpty ||
//                         addressController.text.isEmpty ||
//                         selectedGender == null ||
//                         phoneNumberController.text.isEmpty ||
//                         cnicController.text.isEmpty;

//                     if (hasEmptyFields) {
//                       showDialog(
//                         context: context,
//                         builder: (BuildContext context) {
//                           return AlertDialog(
//                             title: const Text('Signup Error'),
//                             content: const Text(
//                                 'Please fill in all the required fields.'),
//                             actions: [
//                               TextButton(
//                                 onPressed: () {
//                                   Navigator.of(context).pop();
//                                 },
//                                 child: const Text('OK'),
//                               ),
//                             ],
//                           );
//                         },
//                       );
//                     } else {
//                       // Perform signup logic here
//                       // ...
//                       // Navigate to the login page after successful signup
//                       Navigator.pushNamed(context, "login");
//                     }
//                   },
//                   child: const Text('Sign up'),
//                 ),
//                 const SizedBox(height: 8.0),
//                 Row(
//                   children: [
//                     Center(
//                       child: CircleAvatar(
//                         radius: 20,
//                         backgroundColor: Colors.grey,
//                         child: Center(
//                           child: IconButton(
//                             icon: const Icon(Icons.arrow_back),
//                             color: Colors.black,
//                             onPressed: () {
//                               Navigator.pushNamed(context, "login");
//                             },
//                           ),
//                         ),
//                       ),
//                     ),
//                     TextButton(
//                       onPressed: () {
//                         Navigator.pushNamed(context, "login");
//                       },
//                       child: const Text(
//                         'Already have an Account',
//                         style: TextStyle(
//                           fontSize: 10,
//                           color: Colors.black,
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
//new
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:test_1/login.dart';
import 'package:test_1/global.dart';

class signup_page extends StatefulWidget {
  const signup_page({super.key});

  @override
  State<signup_page> createState() => signup_pageState();
}

class signup_pageState extends State<signup_page> {
  TextEditingController nametextEditingController = TextEditingController();
  TextEditingController phonetextEditingController = TextEditingController();
  TextEditingController emailtextEditingController = TextEditingController();
  TextEditingController passwordtextEditingController = TextEditingController();
  validateForm() {
    if (nametextEditingController.text.length < 3) {
      Fluttertoast.showToast(msg: "Name Must be At leat 3 characters");
    } else if (!emailtextEditingController.text.contains("@")) {
      Fluttertoast.showToast(msg: "Email must have @ and cannot empty");
    } else if (phonetextEditingController.text.isEmpty) {
      Fluttertoast.showToast(msg: "Phone number cannot be empty");
    } else if (passwordtextEditingController.text.length < 3) {
      Fluttertoast.showToast(msg: "password Must be At leat of 8 characters");
    } else {
      saveUserInfoN();
    }
  }

  saveUserInfoN() async {
    showDialog(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext c) {
          return login_page();
        });

    // Authentication of username
    final User? firebaseUser = (await fAuth
            .createUserWithEmailAndPassword(
      email: emailtextEditingController.text.trim(),
      password: passwordtextEditingController.text.trim(),
    )
            .catchError((msg) {
      Navigator.pop(context);
      Fluttertoast.showToast(msg: "Error: " + msg.toString());
    })).user;

    if (firebaseUser != null) {
      Map userMap = {
        "id": firebaseUser.uid,
        "name": nametextEditingController.text.trim(),
        "email": emailtextEditingController.text.trim(),
        "phone": phonetextEditingController.text.trim(),
      };

      DatabaseReference userRef = FirebaseDatabase.instance.ref().child("user");

      userRef.child(firebaseUser.uid).set(userMap);

      currentfirebaseUser = firebaseUser;
      // Navigator.pop(context, MaterialPageRoute(builder: (c) => Loader_info()));
      Fluttertoast.showToast(msg: "Account Has been created");
      Navigator.push(context, MaterialPageRoute(builder: (c) => login_page()));
    } else {
      Navigator.pop(context);
      Fluttertoast.showToast(msg: "Account Has not been created");
    }
  }

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
        body: Padding(
          padding: const EdgeInsets.only(top: 70.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                Center(
                  child: Text(
                    "Register",
                    style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    controller: nametextEditingController,
                    keyboardType: TextInputType.name,
                    style: TextStyle(color: Colors.grey),
                    decoration: InputDecoration(
                      border: const OutlineInputBorder(),
                      hintText: "Enter Your Name",
                      labelText: "Name",
                      hintStyle: TextStyle(
                        color: Colors.grey,
                        fontSize: 10,
                      ),
                      labelStyle: TextStyle(
                        color: Colors.grey,
                        fontSize: 10,
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    controller: emailtextEditingController,
                    keyboardType: TextInputType.emailAddress,
                    style: TextStyle(color: Colors.grey),
                    decoration: InputDecoration(
                      border: const OutlineInputBorder(),
                      hintText: "Enter Your Email",
                      labelText: "Email",
                      hintStyle: TextStyle(
                        color: Colors.grey,
                        fontSize: 10,
                      ),
                      labelStyle: TextStyle(
                        color: Colors.grey,
                        fontSize: 10,
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    controller: phonetextEditingController,
                    keyboardType: TextInputType.phone,
                    style: TextStyle(color: Colors.grey),
                    decoration: InputDecoration(
                      border: const OutlineInputBorder(),
                      hintText: "Enter Your Phone Number",
                      labelText: "Phone Number",
                      hintStyle: TextStyle(
                        color: Colors.grey,
                        fontSize: 10,
                      ),
                      labelStyle: TextStyle(
                        color: Colors.grey,
                        fontSize: 10,
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    controller: passwordtextEditingController,
                    keyboardType: TextInputType.text,
                    obscureText: true,
                    style: TextStyle(color: Colors.grey),
                    decoration: InputDecoration(
                      border: const OutlineInputBorder(),
                      hintText: "Enter Password",
                      labelText: "Password",
                      hintStyle: TextStyle(
                        color: Colors.grey,
                        fontSize: 10,
                      ),
                      labelStyle: TextStyle(
                        color: Colors.grey,
                        fontSize: 10,
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      child: Text(
                        "Create Account",
                        style: TextStyle(
                          color: Colors.greenAccent,
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    CircleAvatar(
                      backgroundColor: Colors.greenAccent,
                      radius: 20,
                      child: IconButton(
                        icon: Icon(
                          Icons.arrow_forward,
                          color: Colors.black,
                        ),
                        onPressed: () => {
                          validateForm(),
                        },
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (c) => login_page()));
                  },
                  child: Text("If you have an account Login here"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
