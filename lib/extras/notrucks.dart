// import 'package:flutter/material.dart';

// class NoTrucks extends StatefulWidget {
//   @override
//   _NoTrucksState createState() => _NoTrucksState();
// }

// class _NoTrucksState extends State<NoTrucks> {
//   int numberOfTrucks = 0;
//   DateTime selectedDate = DateTime.now();
//   String paymentOption = '';

//   Future<void> _selectDate(BuildContext context) async {
//     final DateTime? pickedDate = await showDatePicker(
//       context: context,
//       initialDate: selectedDate,
//       firstDate: DateTime(2000),
//       lastDate: DateTime(2100),
//     );

//     if (pickedDate != null && pickedDate != selectedDate) {
//       setState(() {
//         selectedDate = pickedDate;
//       });
//     }
//   }

//   void _incrementTrucks() {
//     setState(() {
//       numberOfTrucks++;
//     });
//   }

//   void _decrementTrucks() {
//     setState(() {
//       if (numberOfTrucks > 0) {
//         numberOfTrucks--;
//       }
//     });
//   }

//   void _submitForm() {
//     // Perform your desired actions with the form data
//     print('Number of Trucks: $numberOfTrucks');
//     print('Selected Date: $selectedDate');
//     print('Payment Option: $paymentOption');
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('New Page'),
//       ),
//       body: Padding(
//         padding: EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: <Widget>[
//             SizedBox(height:16),
//             Text(
//               'Number of Trucks:',
//               style: TextStyle(
//                 fontSize: 18,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.only(left: 16.0),
//               child: Row(
//                 children: [
//                   IconButton(
//                     onPressed: _decrementTrucks,
//                     icon: Icon(Icons.remove),
//                   ),
//                   Text(
//                     '$numberOfTrucks',
//                     style: TextStyle(fontSize: 18),
//                   ),
//                   IconButton(
//                     onPressed: _incrementTrucks,
//                     icon: Icon(Icons.add),
//                   ),
//                 ],
//               ),
//             ),
//             SizedBox(height: 36),
//             Text(
//               'Date:',
//               style: TextStyle(
//                 fontSize: 18,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//             InkWell(
//               onTap: () => _selectDate(context),
//               child: InputDecorator(
//                 decoration: InputDecoration(
//                   hintText: 'Select date',
//                   border: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(4.0),
//                   ),
//                 ),
//                 child: Text(
//                   '${selectedDate.day}/${selectedDate.month}/${selectedDate.year}',
//                   style: TextStyle(fontSize: 18),
//                 ),
//               ),
//             ),
//             SizedBox(height: 36),
//             Text(
//               'Payment Option:',
//               style: TextStyle(
//                 fontSize: 18,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//             Row(
//               children: [
//                 Radio<String>(
//                   value: 'Easypaisa',
//                   groupValue: paymentOption,
//                   onChanged: (value) {
//                     setState(() {
//                       paymentOption = value!;
//                     });
//                   },
//                 ),
//                 Text('Easypaisa'),
//               ],
//             ),
//             Row(
//               children: [
//                 Radio<String>(
//                   value: 'COD',
//                   groupValue: paymentOption,
//                   onChanged: (value) {
//                     setState(() {
//                       paymentOption = value!;
//                     });
//                   },
//                 ),
//                 Text('COD'),
//               ],
//             ),
//             SizedBox(height: 36),
//             Center(
//               child: ElevatedButton(
//                 onPressed: _submitForm,
//                 child: Text(
//                   'Submit',
//                   style: TextStyle(
//                     fontSize: 16,
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
