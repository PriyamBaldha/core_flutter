import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isGridView = false;

  List<Map> products = [
    {
      'id': 1,
      'name': 'mobile',
      'price': 16500,
      'source': 'assets/images/phone.png',
    },
    {
      'id': 2,
      'name': 'watch',
      'price': 1500,
      'source': 'assets/images/watch.png'
    },
    {
      'id': 3,
      'name': 'Tablet',
      'price': 10500,
      'source': 'assets/images/tablet.png'
    },
    {
      'id': 4,
      'name': 'Laptop',
      'price': 66500,
      'source': 'assets/images/laptop.png'
    },
    {'id': 5, 'name': 'PC', 'price': 35500, 'source': 'assets/images/pc.png'},
    {
      'id': 6,
      'name': 'Earphone',
      'price': 500,
      'source': 'assets/images/earphone.png'
    },
    {
      'id': 7,
      'name': 'Washing-machine',
      'price': 16500,
      'source': 'assets/images/washing machine.png'
    },
    {
      'id': 8,
      'name': 'Headphone',
      'price': 1500,
      'source': 'assets/images/Headphone.png'
    },
    {
      'id': 9,
      'name': 'Speaker',
      'price': 16500,
      'source': 'assets/images/speaker.png'
    },
    {
      'id': 10,
      'name': 'XeroxMachine',
      'price': 6500,
      'source': 'assets/images/xerox-machine.png'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "PRODUCT",
          style: TextStyle(fontSize: 25, color: Colors.black),
        ),
        actions: [
          IconButton(
              onPressed: () {
                setState(() {
                  isGridView = !isGridView;
                });
              },
              icon: const Icon(Icons.grid_view)),
          IconButton(
              onPressed: () {
                Navigator.of(context).pushNamed('AddCard');
              },
              icon: const Icon(Icons.add_card))
        ],
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
      body: (isGridView == false)
          ? ListView.builder(
              itemCount: products.length,
              itemBuilder: (context, i) {
                return Card(
                  elevation: 3,
                  child: ListTile(
                    leading: Text("${i + 1}"),
                    title: Text("${products[i]['name']}"),
                    subtitle: Text("${products[i]['price']}"),
                    trailing: Image.asset("${products[i]['source']}"),

                    //  onTap: Navigator.of(context).pushNamed(routeName),
                  ),
                );
              })
          : GridView.builder(
              itemCount: products.length,
              padding: const EdgeInsets.all(5),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 5,
                crossAxisSpacing: 5,
              ),
              itemBuilder: (context, i) {
                return Container(
                    height: 200,
                    alignment: Alignment.center,
                    // color: Colors.amber,
                    child: Stack(alignment: Alignment.bottomCenter, children: [
                      SizedBox(
                        height: 200,
                        width: 200,
                        child: Image.asset(
                          "${products[i]['source']}",
                          fit: BoxFit.cover,
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        padding: const EdgeInsets.all(5),
                        height: 50,
                        alignment: Alignment.center,
                        color: Colors.white.withOpacity(0.8),
                        child: Row(
                          children: [
                            Text(
                              "${products[i]['name']}",
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const Spacer(),
                            Text(
                              "Rs. ${products[i]['price']}",
                              style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey),
                            ),
                          ],
                        ),
                      )
                    ]));
              }),
    );
  }
}
