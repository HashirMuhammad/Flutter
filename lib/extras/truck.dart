// import 'package:flutter/material.dart';

// class TruckPage extends StatefulWidget {
//   @override
//   _TruckPageState createState() => _TruckPageState();
// }

// class _TruckPageState extends State<TruckPage> {
//   final formKey = GlobalKey<FormState>();
//   String? selectedSize;
//   late String labourers;

//   void _submitForm() {
//     if (formKey.currentState!.validate()) {
//       formKey.currentState!.save();
//       // Perform your desired actions with the selected size and number of laborers
//       print('Size: $selectedSize, Labourers: $labourers');
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Truck Page'),
//       ),
//       body: Padding(
//         padding: EdgeInsets.all(25.0),
//         child: Form(
//           key: formKey,
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: <Widget>[
//               Text(
//                 'Select Size:',
//                 style: TextStyle(
//                   fontSize: 18,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//               SizedBox(height: 8),
//               Container(
//                 decoration: BoxDecoration(
//                   border: Border.all(
//                     color: Colors.grey,
//                     width: 1.0,
//                   ),
//                   borderRadius: BorderRadius.circular(4.0),
//                 ),
//                 child: DropdownButtonFormField<String>(
//                   value: selectedSize,
//                   items: <String>[
//                     'Small',
//                     'Medium',
//                     'Large',
//                   ].map<DropdownMenuItem<String>>((String value) {
//                     return DropdownMenuItem<String>(
//                       value: value,
//                       child: Text(value),
//                     );
//                   }).toList(),
//                   onChanged: (String? newValue) {
//                     setState(() {
//                       selectedSize = newValue;
//                     });
//                   },
//                   validator: (value) {
//                     if (value == null || value.isEmpty) {
//                       return 'Please select a size';
//                     }
//                     return null;
//                   },
//                   onSaved: (value) {
//                     selectedSize = value!;
//                   },
//                 ),
//               ),
//               SizedBox(height: 24),
//               Text(
//                 'Number of Laborers:',
//                 style: TextStyle(
//                   fontSize: 18,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//               SizedBox(height: 8),
//               Container(
//                 decoration: BoxDecoration(
//                   border: Border.all(
//                     color: Colors.grey,
//                     width: 1.0,
//                   ),
//                   borderRadius: BorderRadius.circular(4.0),
//                 ),
//                 child: TextFormField(
//                   keyboardType: TextInputType.number,
//                   decoration: InputDecoration(
//                     border: InputBorder.none,
//                     hintText: 'Enter the number of laborers',
//                   ),
//                   validator: (value) {
//                     if (value == null || value.isEmpty) {
//                       return 'Please enter the number of laborers';
//                     }
//                     if (!isNumeric(value)) {
//                       return 'Please enter a valid number';
//                     }
//                     return null;
//                   },
//                   onSaved: (value) {
//                     labourers = value!;
//                   },
//                 ),
//               ),
//               SizedBox(height: 36),
//               Center(
//                 child: ElevatedButton(
//                   onPressed: _submitForm,
//                   child: Text(
//                     'Submit',
//                     style: TextStyle(
//                       fontSize: 16,
//                       fontWeight: FontWeight.bold,
//                     ),
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }

//   bool isNumeric(String? value) {
//     if (value == null) {
//       return false;
//     }
//     return double.tryParse(value) != null;
//   }
// }
