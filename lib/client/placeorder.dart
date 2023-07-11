import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:test_1/drawer/clientdrawer.dart';

class PlaceOrder extends StatefulWidget {
  const PlaceOrder({Key? key}) : super(key: key);

  @override
  _PlaceOrderState createState() => _PlaceOrderState();
}

//Instantiate Firestore
final db = FirebaseFirestore.instance;

class _PlaceOrderState extends State<PlaceOrder> {
  final _formKey = GlobalKey<FormState>();

  final TextEditingController productNameController = TextEditingController();
  final TextEditingController durationController = TextEditingController();
  final TextEditingController descriptionController = TextEditingController();
  final TextEditingController lengthController = TextEditingController();
  final TextEditingController widthController = TextEditingController();
  final TextEditingController heightController = TextEditingController();
  final TextEditingController numberOfPiecesController =
      TextEditingController();

  @override
  void dispose() {
    productNameController.dispose();
    durationController.dispose();
    descriptionController.dispose();
    lengthController.dispose();
    widthController.dispose();
    heightController.dispose();
    numberOfPiecesController.dispose();
    super.dispose();
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
          title: const Text("Place Order"),
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
                      height: 16,
                    ),
                    TextFormField(
                      controller: productNameController,
                      decoration: const InputDecoration(
                        labelText: 'Product Name',
                        border: OutlineInputBorder(),
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Please enter a product name';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    TextFormField(
                      controller: durationController,
                      inputFormatters: [
                        FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
                      ],
                      decoration: const InputDecoration(
                        labelText: 'Duration in Months',
                        border: OutlineInputBorder(),
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Please enter a duration';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    TextFormField(
                      controller: descriptionController,
                      decoration: const InputDecoration(
                        labelText: 'Give Description of product',
                        border: OutlineInputBorder(),
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Please enter a description';
                        }
                        return null;
                      },
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
                        inputFormatters: [
                          FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
                        ],
                        decoration: const InputDecoration(labelText: 'Length'),
                        keyboardType: TextInputType.number,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Please enter the length';
                          }
                          return null;
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: TextFormField(
                        controller: widthController,
                        inputFormatters: [
                          FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
                        ],
                        decoration: const InputDecoration(labelText: 'Width'),
                        keyboardType: TextInputType.number,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Please enter the width';
                          }
                          return null;
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: TextFormField(
                        controller: heightController,
                        inputFormatters: [
                          FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
                        ],
                        decoration: const InputDecoration(labelText: 'Height'),
                        keyboardType: TextInputType.number,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Please enter the height';
                          }
                          return null;
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: TextFormField(
                        controller: numberOfPiecesController,
                        inputFormatters: [
                          FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
                        ],
                        decoration: const InputDecoration(
                            labelText: 'Number of Pieces'),
                        keyboardType: TextInputType.number,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Please enter the number of pieces';
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
                    Padding(
                      padding: const EdgeInsets.all(25.0),
                      child: ElevatedButton(
                        onPressed: () {
                          _submitForm();
                        },
                        child: const Text("Place Order"),
                      ),
                    ),
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

  void _submitForm() async {
    final form = _formKey.currentState;
    if (form!.validate()) {
      form.save();
      bool hasEmptyFields = productNameController.text.isEmpty ||
          durationController.text.isEmpty ||
          descriptionController.text.isEmpty ||
          lengthController.text.isEmpty ||
          widthController.text.isEmpty ||
          heightController.text.isEmpty ||
          numberOfPiecesController.text.isEmpty;

      if (!hasEmptyFields) {
        await db.collection('user').add({
          "name": productNameController.text.trim(),
          "duration": durationController.text.trim(),
          "description": descriptionController.text.trim(),
          "length": lengthController.text.trim(),
          "width": widthController.text.trim(),
          "height": heightController.text.trim(),
          "numberofpeices": numberOfPiecesController.text.trim(),
          "price": "",
          "status": "Pending"
        }).then((DocumentReference<Map<String, dynamic>> value) {
          debugPrint("value:-> ${value.id}");
        });
        Navigator.pushNamed(context, "home");

//to get data and print a single record to the text feild
        // await db.collection('user').get().then((value) {
        //   int i = 0;
        //   value.docs.forEach((element) {
        //     if (element.data()['email'] != null) {
        //       productNameController.text = element.data()['email'] ?? "";
        //       setState(() {});
        //     }
        //     i++;
        //     debugPrint("element:-> ${element.data()}");
        //   });
        // });
        // Navigator.pushNamed(context, "home");
      } else {
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: const Text('Form Incomplete'),
              content: const Text('Please fill in all the required fields.'),
              actions: [
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: const Text('OK'),
                ),
              ],
            );
          },
        );
      }
    }
  }
}
