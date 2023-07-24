import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:test_1/drawer/drawer.dart';

class vieworderrequests extends StatefulWidget {
  vieworderrequests({super.key});

  @override
  State<vieworderrequests> createState() => _vieworderrequestsState();
}

class _vieworderrequestsState extends State<vieworderrequests> {
  final List<String> statusOptions = [
    'Approved',
    'Rejected',
  ];
  String selectedStatus = 'Approved';

  //Instantiate Firestore
  final db = FirebaseFirestore.instance;

  final _formKey = GlobalKey<FormState>();

  // await db.collection('user').get().then((value) {
  final TextEditingController productNameController = TextEditingController();

  final TextEditingController durationController = TextEditingController();

  final TextEditingController descriptionController = TextEditingController();

  final TextEditingController lengthController = TextEditingController();

  final TextEditingController widthController = TextEditingController();

  final TextEditingController heightController = TextEditingController();

  final TextEditingController piecesController = TextEditingController();

  final TextEditingController priceController = TextEditingController();

  final TextEditingController statusController = TextEditingController();

  String id = "0";

  @override
  void initState() {
    super.initState();
    selectedStatus = statusOptions[0]; // Set default value
    statusController.text =
        selectedStatus; // Set default value in the controller
    Future.delayed(const Duration(milliseconds: 200)).then((value) {
      final data1 =
          ModalRoute.of(context)?.settings.arguments as QueryDocumentSnapshot;
      id = data1.id;
      final data = data1.data() as Map<String, dynamic>;
      productNameController.text = data["name"] ?? "";
      durationController.text = data["duration"] ?? "";
      descriptionController.text = data["description"] ?? "";
      lengthController.text = data["length"] ?? "";
      widthController.text = data["width"] ?? "";
      heightController.text = data["height"] ?? "";
      piecesController.text = data["numberofpeices"] ?? "";
      // debugPrint("data.data():_>>> ${}");
      // ;
      // priceController.text = data["price"] ?? "";
      setState(() {});
    });
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
        appBar: AppBar(
          backgroundColor: Colors.deepPurpleAccent.shade200,
          title: const Text("View Order Requests"),
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: SingleChildScrollView(
              child: Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    SizedBox(
                      height: 14,
                    ),
                    TextFormField(
                      controller: productNameController,
                      enabled: false,
                      decoration: const InputDecoration(
                        labelText: 'Product Name',
                        border: OutlineInputBorder(),
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    TextFormField(
                      controller: durationController,
                      enabled: false,
                      decoration: const InputDecoration(
                        labelText: 'Duration in Months',
                        border: OutlineInputBorder(),
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    TextFormField(
                      controller: descriptionController,
                      enabled: false,
                      decoration: const InputDecoration(
                        labelText: 'Description of product',
                        border: OutlineInputBorder(),
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    const Text(
                      "DIMENSION",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: TextFormField(
                        controller: lengthController,
                        enabled: false,
                        decoration: const InputDecoration(labelText: 'Length'),
                        keyboardType: TextInputType.number,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'length';
                          }
                          return null;
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: TextFormField(
                        controller: widthController,
                        enabled: false,
                        decoration: const InputDecoration(labelText: 'Width'),
                        keyboardType: TextInputType.number,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'width';
                          }
                          return null;
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: TextFormField(
                        controller: heightController,
                        enabled: false,
                        decoration: const InputDecoration(labelText: 'Height'),
                        keyboardType: TextInputType.number,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'height';
                          }
                          return null;
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: TextFormField(
                        controller: piecesController,
                        enabled: false,
                        decoration: const InputDecoration(
                            labelText: 'Number of Pieces'),
                        keyboardType: TextInputType.number,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'number of pieces';
                          }
                          return null;
                        },
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),

                    DropdownButtonFormField<String>(
                      value: selectedStatus,
                      items: statusOptions.map((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                      onChanged: (String? newValue) {
                        setState(() {
                          selectedStatus = newValue!;
                          statusController.text =
                              selectedStatus; // Update the controller value
                        });
                      },
                    ),
                    const SizedBox(
                      height: 16,
                    ),

                    TextFormField(
                      controller: priceController,
                      decoration: const InputDecoration(
                        labelText: 'Enter Price',
                        border: OutlineInputBorder(),
                      ),
                    ),

                    const SizedBox(
                      height: 16,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        CircleAvatar(
                          radius: 16,
                          backgroundColor: Colors.red,
                          child: Center(
                            child: IconButton(
                              icon: const Icon(
                                Icons.close,
                                size: 16,
                              ),
                              color: Colors.black,
                              onPressed: () {
                                status();
                              },
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        CircleAvatar(
                          radius: 16,
                          backgroundColor: Colors.green,
                          child: Center(
                            child: IconButton(
                              icon: const Icon(
                                Icons.check,
                                size: 16,
                              ),
                              color: Colors.black,
                              onPressed: () {
                                price();
                                Navigator.pushNamed(context, "adminhome");
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                    // Padding(
                    //   padding: const EdgeInsets.all(25.0),
                    //   child: ElevatedButton(
                    //     onPressed: () {
                    //       Navigator.pushNamed(context, "home");
                    //     },
                    //     child: Text("Back"),
                    //   ),
                    // ),
                    Row(
                      children: [
                        Center(
                          child: CircleAvatar(
                            radius: 16,
                            backgroundColor: Colors.grey,
                            child: Center(
                              child: IconButton(
                                icon: const Icon(
                                  Icons.arrow_back,
                                  size: 16,
                                ),
                                color: Colors.black,
                                onPressed: () {
                                  Navigator.pushNamed(context, "adminhome");
                                },
                              ),
                            ),
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.pushNamed(context, "adminhome");
                          },
                          child: const Text(
                            'Back to Home',
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        drawer: const my_drawer(),
      ),
    );
  }

  Future<void> price() async {
    final form = _formKey.currentState;
    if (form!.validate()) {
      bool hasEmptyFields = priceController.text.isEmpty;
      if (!hasEmptyFields) {
        final docRef = db.collection('user').doc(id).set({
          "name": productNameController.text.trim(),
          "duration": durationController.text.trim(),
          "description": descriptionController.text.trim(),
          "length": lengthController.text.trim(),
          "width": widthController.text.trim(),
          "height": heightController.text.trim(),
          "numberofpeices": piecesController.text.trim(),
          "price": priceController.text.trim(),
          "status": statusController.text.trim(),
        });
//
        // await docRef.set().then(
        // (value) => log("Appointment booked successfully!"),
        // onError: (e) => log("Error booking appointment: $e"));
        // apptCollection.doc(appt.id).set(appt.toJson()).then(
        // (value) => log("Appointment updated Successfully!"),
        // onError: (e) => log("Error updating appointment: $e"));
        // await db.collection("user")({

        // });
      }
    }
    Navigator.pushNamed(context, "adminhome");
  }

  Future<void> status() async {
    final form = _formKey.currentState;
    if (form!.validate()) {
      bool hasEmptyFields = statusController.text.isEmpty;
      if (!hasEmptyFields) {
        await db.collection('user').add({
          "status": statusController.text.trim(),
        });
      }
    }
    Navigator.pushNamed(context, "adminhome");
  }
}
