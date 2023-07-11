import 'package:flutter/material.dart';


class aboutus extends StatelessWidget {
  const aboutus({super.key});

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
          title: const Text("About Us"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(
                  height: 5,
                ),
                const Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Company History",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                const Text(
                  "EPS Moulding is a leading company in the EPS manufacturing and moulding industry, boasting an impressive history of nearly four decades. From its humble beginnings, the company has experienced remarkable growth and expansion, diversifying its product portfolio and embracing innovation. With a strong focus on sustainability and customer satisfaction, EPS Moulding has solidified its position as a trusted provider of high-quality EPS products. Through continuous advancement and a customer-centric approach, the company maintains its leadership status, ready to embrace emerging technologies and explore new markets in the future.",
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.normal,
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                const Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "EPS Moulding Idea",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                const Text(
                  "EPS (Expanded Polystyrene) is a versatile and widely used material known for its lightweight and insulating properties. EPS Moulding has harnessed the potential of EPS, utilizing it to manufacture a diverse range of products. From packaging solutions to insulation materials and custom-moulded components, EPS Moulding has demonstrated innovation and expertise in delivering high-quality EPS products. With a focus on sustainability and customer satisfaction, EPS Moulding continues to excel in providing efficient, cost-effective, and environmentally friendly solutions to meet the needs of various industries.",
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.normal,
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                const Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    " Benefits of EPS",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                const Text(
                  "EPS (Expanded Polystyrene) is widely used in the manufacturing of packing materials for safety purposes due to its numerous benefits:",
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.normal,
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                Container(
                  child: const Padding(
                    padding: EdgeInsets.only(left: 8.0),
                    child: Column(
                      children: [
                        Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            "1. Lightweight:",
                            style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.bold,
                              fontStyle: FontStyle.italic,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          " EPS packing materials are incredibly lightweight, making them easy to handle and transport. This characteristic minimizes the overall weight of the package, reducing shipping costs and making it more convenient for users.",
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            "2. Shock Absorption:",
                            style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.bold,
                              fontStyle: FontStyle.italic,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          "EPS has exceptional shock absorption properties, effectively protecting fragile and delicate items during transit. The material acts as a cushion, absorbing impact and preventing damage from vibrations, drops, and other external forces.",
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            "3. Insulation: ",
                            style: TextStyle(
                              fontSize: 13,
                              fontStyle: FontStyle.italic,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          "EPS provides excellent thermal insulation, which is beneficial when shipping temperature-sensitive products. It helps maintain a consistent temperature inside the package, protecting the contents from extreme heat or cold.",
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            "4. Customizable: ",
                            style: TextStyle(
                              fontSize: 13,
                              fontStyle: FontStyle.italic,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          "EPS can be molded into various shapes and sizes to create customized packing solutions. This flexibility allows for a precise fit, ensuring that the packaged items are secure and well-protected within the packaging material.",
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            "5. Versatility: ",
                            style: TextStyle(
                              fontSize: 13,
                              fontStyle: FontStyle.italic,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          "EPS packing materials can be tailored to suit different product types and industries. Whether it's electronics, pharmaceuticals, appliances, or fragile goods, EPS can be designed to provide optimal protection for a wide range of items.",
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            "6. Cost-Effective: ",
                            style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.bold,
                              fontStyle: FontStyle.italic,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          "EPS is an affordable material, making it a cost-effective choice for packing materials. Its lightweight nature also helps reduce shipping costs, making it an economical option for businesses.",
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            "7. Recyclable: ",
                            style: TextStyle(
                              fontSize: 13,
                              fontStyle: FontStyle.italic,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          "EPS is fully recyclable and can be reused or repurposed after its initial use. This makes it an environmentally friendly choice compared to other non-recyclable packaging materials.",
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            "8. Hygienic: ",
                            style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.bold,
                              fontStyle: FontStyle.italic,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          "EPS is non-toxic and resistant to moisture, mold, and bacteria. This characteristic ensures that the packed items remain clean, dry, and free from contamination during storage and transportation.",
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                const Text(
                  "Overall, the benefits of using EPS in packing materials for safety purposes include its lightweight nature, exceptional shock absorption, thermal insulation, customization options, versatility, cost-effectiveness, recyclability, and hygienic properties. These advantages make EPS an ideal choice for protecting valuable and delicate items throughout the shipping and handling process.",
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.normal,
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                // Center(
                //   child: Padding(
                //     padding: const EdgeInsets.all(8.0),
                //     child: Row(
                //       children: [
                //         Center(
                //           child: CircleAvatar(
                //             radius: 20,
                //             backgroundColor: Colors.grey,
                //             child: Center(
                //               child: IconButton(
                //                 icon: Icon(Icons.arrow_back),
                //                 color: Colors.black,
                //                 onPressed: () {
                //                   Navigator.pushNamed(context, "home");
                //                 },
                //               ),
                //             ),
                //           ),
                //         ),
                //         TextButton(
                //           onPressed: () {
                //             Navigator.pushNamed(context, "home");
                //           },
                //           child: Text(
                //             'Back to Home',
                //             style: TextStyle(
                //               fontSize: 10,
                //               color: Colors.black,
                //             ),
                //           ),
                //         ),
                //       ],
                //     ),
                //   ),
                // ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
