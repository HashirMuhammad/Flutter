import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:test_1/drawer/clientdrawer.dart';

class pendingorder extends StatefulWidget {
  const pendingorder({super.key});

  @override
  State<pendingorder> createState() => _pendingorderState();
}

class _pendingorderState extends State<pendingorder> {
  //Instantiate Firestore
  final db = FirebaseFirestore.instance;

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
    super.initState(); // Set default value
    Future.delayed(const Duration(milliseconds: 200)).then((value) {
      final data1 =
          ModalRoute.of(context)?.settings.arguments as QueryDocumentSnapshot;
      final data = data1.data() as Map<String, dynamic>;
      productNameController.text = data["name"] ?? "";
      durationController.text = data["duration"] ?? "";
      descriptionController.text = data["description"] ?? "";
      lengthController.text = data["length"] ?? "";
      widthController.text = data["width"] ?? "";
      heightController.text = data["height"] ?? "";
      piecesController.text = data["numberofpeices"] ?? "";
      priceController.text = data["price"] ?? "";
      statusController.text = data["status"] ?? "";
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
          title: const Text("Pending Order"),
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: SingleChildScrollView(
              child: Form(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    SizedBox(height: 6,),
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
                    const Text(
                      "Note: Ship the sample to the manufacturer address",
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    TextFormField(
                      controller: statusController,
                      enabled: false,
                      decoration: const InputDecoration(
                        labelText: 'Tracking Status',
                        border: OutlineInputBorder(),
                      ),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    TextFormField(
                      controller: priceController,
                      enabled: false,
                      decoration: const InputDecoration(
                        labelText: 'Price',
                        border: OutlineInputBorder(),
                      ),
                    ),
                    const SizedBox(
                      height: 8,
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
                                  Navigator.pushNamed(context, "home");
                                },
                              ),
                            ),
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.pushNamed(context, "home");
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
        drawer: const clientdrawer(),
      ),
    );
  }
}
