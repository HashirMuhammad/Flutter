import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class PricingCalculator extends StatefulWidget {
  const PricingCalculator({super.key});

  @override
  State<PricingCalculator> createState() => _PricingCalculatorState();
}

class _PricingCalculatorState extends State<PricingCalculator> {
  List<Product> products = [];
  int productCount = 1; // Variable to track product numbers

  void addProduct() {
    setState(() {
      products.add(Product(productNumber: productCount));
      productCount++; // Increment product number
    });
  }

  void removeProduct(int index) {
    setState(() {
      products.removeAt(index);
    });
  }

  double calculateTotalPrice() {
    double totalPrice = 0.0;
    for (var product in products) {
      totalPrice += product.getTotalPrice();
    }
    return totalPrice;
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
          title: const Text("Pricing Calculator"),
        ),
        body: ListView(
          children: [
            for (var i = 0; i < products.length; i++)
              ProductInputRow(
                product: products[i],
                productNumber: i + 1,
                onRemove: () => removeProduct(i),
              ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: ElevatedButton(
                onPressed: addProduct,
                child: const Text('Add Product'),
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'Total Price: Pkr ${calculateTotalPrice().toStringAsFixed(2)}',
                style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
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
            ),
          ],
        ),
      ),
    );
  }
}

class Product {
  int productNumber;
  int quantity = 0;
  double kgRate = 0;
  double castingPrice = 0;

  Product({required this.productNumber});

  double getTotalPrice() {
    return quantity * kgRate * castingPrice;
  }
}

class ProductInputRow extends StatefulWidget {
  final Product product;
  final int productNumber;
  final VoidCallback onRemove;

  const ProductInputRow({super.key, 
    required this.product,
    required this.productNumber,
    required this.onRemove,
  });

  @override
  _ProductInputRowState createState() => _ProductInputRowState();
}

class _ProductInputRowState extends State<ProductInputRow> {
  late GlobalKey<FormState> _formKey;

  @override
  void initState() {
    super.initState();
    _formKey = GlobalKey<FormState>();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Form(
        key: _formKey,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Product ${widget.productNumber}',
                style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              TextFormField(
                inputFormatters: [
                  FilteringTextInputFormatter.digitsOnly,
                ],
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(labelText: 'Quantity'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter a quantity';
                  }
                  final quantity = int.tryParse(value);
                  if (quantity == null || quantity <= 0) {
                    return 'Quantity must be greater than 0';
                  }
                  return null;
                },
                onChanged: (value) {
                  setState(() {
                    widget.product.quantity = int.tryParse(value) ?? 0;
                  });
                },
              ),
              TextFormField(
                inputFormatters: [
                  FilteringTextInputFormatter.digitsOnly,
                ],
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(labelText: 'Kg/Bag Rate'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter a kg/bag rate';
                  }
                  final kgRate = double.tryParse(value);
                  if (kgRate == null || kgRate <= 0) {
                    return 'Kg/Bag Rate must be greater than 0';
                  }
                  return null;
                },
                onChanged: (value) {
                  setState(() {
                    widget.product.kgRate = double.tryParse(value) ?? 0.0;
                  });
                },
              ),
              TextFormField(
                inputFormatters: [
                  FilteringTextInputFormatter.digitsOnly,
                ],
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(labelText: 'Casting Price'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter a casting price';
                  }
                  final castingPrice = double.tryParse(value);
                  if (castingPrice == null || castingPrice <= 0) {
                    return 'Casting Price must be greater than 0';
                  }
                  return null;
                },
                onChanged: (value) {
                  setState(() {
                    widget.product.castingPrice = double.tryParse(value) ?? 0.0;
                  });
                },
              ),
              const SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    widget.onRemove();
                  }
                },
                child: const Text('Remove'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
