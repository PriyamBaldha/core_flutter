import 'package:flutter/material.dart';

import '../modals/products.dart';

class AddCard extends StatefulWidget {
  const AddCard({Key? key}) : super(key: key);

  @override
  State<AddCard> createState() => _AddCardState();
}

class _AddCardState extends State<AddCard> {
  //final GetInvoice getInvoice = GetInvoice();

  TextStyle myStyle = const TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.bold,
  );

  List<Products> myAllProducts = [
    Products(productNo: '1', productName: 'Mobile', productPrice: 16500),
    Products(productNo: '2', productName: 'watch', productPrice: 1500),
    Products(productNo: '3', productName: 'Tablet', productPrice: 10500),
    Products(productNo: '4', productName: 'Laptop', productPrice: 66500),
    Products(productNo: '5', productName: 'PC', productPrice: 35500),
    Products(productNo: '6', productName: 'Earphone', productPrice: 500),
    Products(productNo: '7', productName: 'Machine', productPrice: 16500),
    Products(productNo: '8', productName: 'Headphone', productPrice: 1500),
    Products(productNo: '9', productName: 'Speaker', productPrice: 16500),
    Products(productNo: '10', productName: 'XeroxMachine', productPrice: 6500),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Add Product",
            style: TextStyle(fontSize: 26, color: Colors.black),
          ),
          centerTitle: true,
          backgroundColor: Colors.grey,
        ),
        body: Column(
          children: [
            Row(
              children: [
                Text(
                  "No",
                  style: myStyle,
                ),
                const Spacer(),
                Text(
                  "Name",
                  style: myStyle,
                ),
                const Spacer(),
                Text(
                  "Price",
                  style: myStyle,
                ),
                const Spacer(),
                Text(
                  "Quantity",
                  style: myStyle,
                ),
              ],
            ),
            Expanded(
              child: ListView.builder(
                itemCount: myAllProducts.length,
                itemBuilder: (context, i) {
                  final currentProduct = myAllProducts[i];

                  return Row(
                    children: [
                      const SizedBox(
                        width: 4,
                      ),
                      Text(
                        currentProduct.productNo,
                        style: const TextStyle(fontSize: 18),
                      ),
                      const Spacer(),
                      Text(
                        currentProduct.productName,
                        style: const TextStyle(fontSize: 18),
                      ),
                      const Spacer(),
                      Text(
                        'Rs.${currentProduct.productPrice}',
                        style: const TextStyle(fontSize: 18),
                      ),
                      const Spacer(),
                      IconButton(
                          onPressed: () {
                            setState(() {
                              if (currentProduct.productQuantity > 0) {
                                currentProduct.productQuantity--;
                              }
                            });
                          },
                          icon: const Icon(
                            Icons.remove,
                            color: Colors.amber,
                          )),
                      Text(
                        'Rs.${currentProduct.productQuantity}',
                        style: const TextStyle(
                            fontSize: 18, color: Colors.redAccent),
                      ),
                      IconButton(
                        onPressed: () {
                          setState(() {
                            currentProduct.productQuantity++;
                          });
                        },
                        icon: const Icon(
                          Icons.add,
                          color: Colors.amber,
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      'total:-',
                      style: myStyle,
                    ),
                    Text(
                      'Rs.${getTotal()}',
                      style: myStyle,
                    ),
                    Spacer(),
                    ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).pushNamed('AddDetail');
                        },
                        child: const Text("ADD Your Detail"))
                  ],
                ),
                // ElevatedButton(
                //     onPressed: () async {
                //       final invoice =
                //           await getInvoice.getInvoice(myAllProducts);
                //       getInvoice.openPDF(invoice);
                //     },
                //     child: const Text('Get invoice'))
              ],
            )
          ],
        ),
      ),
    );
  }

  getTotal() => myAllProducts
      .fold(
          0,
          (int prev, element) =>
              prev + (element.productPrice * element.productQuantity))
      .toStringAsFixed(0);
}
