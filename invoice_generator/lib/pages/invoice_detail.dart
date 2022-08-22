import 'package:flutter/material.dart';

import '../globals.dart';

class InvoiceDetails extends StatefulWidget {
  const InvoiceDetails({Key? key}) : super(key: key);

  @override
  State<InvoiceDetails> createState() => _InvoiceDetailsState();
}

class _InvoiceDetailsState extends State<InvoiceDetails> {
  final GlobalKey<FormState> invoicenoKey = GlobalKey<FormState>();
  final TextEditingController invoicenoController = TextEditingController();

  final GlobalKey<FormState> issuedateKey = GlobalKey<FormState>();
  final TextEditingController issuedateController = TextEditingController();

  final GlobalKey<FormState> duedateKey = GlobalKey<FormState>();
  final TextEditingController duedateController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double _height = MediaQuery.of(context).size.height;
    double _width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white70,
      body: Column(
        children: [
          Expanded(
              flex: 3,
              child: Container(
                padding: EdgeInsets.only(top: 50),
                width: _width,
                height: _height,
                alignment: Alignment.center,
                color: Colors.blueAccent,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.of(context).pushNamed('AddDetail');
                      },
                      icon: const Icon(Icons.arrow_back_ios),
                      color: Colors.white,
                    ),
                    const SizedBox(
                      width: 67,
                    ),
                    const Text(
                      "INVOICE DETAIL",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                      ),
                    ),
                    Spacer(),
                    IconButton(
                        onPressed: () {
                          Navigator.of(context).pushNamed('PDFpage');
                        },
                        icon: const Icon(Icons.picture_as_pdf))
                  ],
                ),
              )),
          Expanded(
            flex: 12,
            child: Container(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                        margin: EdgeInsets.all(20),
                        height: _height * 0.650,
                        width: _width,
                        color: Colors.white,
                        child: Container(
                            alignment: Alignment.bottomLeft,
                            margin: const EdgeInsets.only(top: 10, left: 21),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  "INVOICE NO:",
                                  style: TextStyle(
                                      color: Colors.blueAccent,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                                Container(
                                  margin: const EdgeInsets.only(
                                    left: 2,
                                    right: 20,
                                    top: 5,
                                    bottom: 10,
                                  ),
                                  height: 50,
                                  width: _width,
                                  decoration: BoxDecoration(
                                    //   color: Colors.amber,
                                    border: Border.all(
                                        color: Colors.grey.withOpacity(0.5)),
                                  ),
                                  child: Form(
                                    key: invoicenoKey,
                                    child: TextFormField(
                                      keyboardType: TextInputType.number,
                                      controller: invoicenoController,
                                      validator: (val) {
                                        if (val!.isEmpty) {
                                          return "Please Enter your Invoice No first";
                                        }
                                        return null;
                                      },
                                      onSaved: (val) {
                                        setState(() {
                                          Global.invoiceno = val;
                                        });
                                      },
                                      decoration: const InputDecoration(
                                        border: InputBorder.none,
                                        // label: Text(
                                        //   "    B.Tech Information Technology",
                                        //   style: TextStyle(color: Colors.grey),
                                        // ),
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 5),
                                const Text(
                                  "ISSUE DATE:",
                                  style: TextStyle(
                                      color: Colors.blueAccent,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                                Container(
                                  margin: const EdgeInsets.only(
                                    left: 2,
                                    right: 20,
                                    top: 5,
                                    bottom: 10,
                                  ),
                                  height: 50,
                                  width: _width,
                                  decoration: BoxDecoration(
                                    //   color: Colors.amber,
                                    border: Border.all(
                                        color: Colors.grey.withOpacity(0.5)),
                                  ),
                                  child: Form(
                                    key: issuedateKey,
                                    child: TextFormField(
                                      keyboardType: TextInputType.number,
                                      controller: issuedateController,
                                      validator: (val) {
                                        if (val!.isEmpty) {
                                          return "Please Enter your Issue Date first";
                                        }
                                        return null;
                                      },
                                      onSaved: (val) {
                                        setState(() {
                                          Global.issuedate = val;
                                        });
                                      },
                                      decoration: const InputDecoration(
                                        border: InputBorder.none,
                                        // label: Text(
                                        //   "    Bhagavan Mahavir University",
                                        //   style: TextStyle(color: Colors.grey),
                                        // ),
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 5),
                                const Text(
                                  "DUE DATE:",
                                  style: TextStyle(
                                      color: Colors.blueAccent,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                                Container(
                                  margin: const EdgeInsets.only(
                                    left: 2,
                                    right: 20,
                                    top: 5,
                                    bottom: 10,
                                  ),
                                  height: 50,
                                  width: _width,
                                  decoration: BoxDecoration(
                                    //   color: Colors.amber,
                                    border: Border.all(
                                        color: Colors.grey.withOpacity(0.5)),
                                  ),
                                  child: Form(
                                    key: duedateKey,
                                    child: TextFormField(
                                      keyboardType: TextInputType.number,
                                      controller: duedateController,
                                      validator: (val) {
                                        if (val!.isEmpty) {
                                          return "Please Enter your due date first";
                                        }
                                        return null;
                                      },
                                      onSaved: (val) {
                                        setState(() {
                                          Global.duedate = val;
                                        });
                                      },
                                      decoration: const InputDecoration(
                                        border: InputBorder.none,
                                        // label: Text(
                                        //   "    70% (or) 7.0 CGPA",
                                        //   style: TextStyle(color: Colors.grey),
                                        // ),
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 5),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    ElevatedButton(
                                        child: const Text("Save"),
                                        onPressed: () {
                                          if (invoicenoKey.currentState!
                                              .validate()) {
                                            invoicenoKey.currentState!.save();

                                            if (issuedateKey.currentState!
                                                .validate()) {
                                              issuedateKey.currentState!.save();
                                            }

                                            if (duedateKey.currentState!
                                                .validate()) {
                                              duedateKey.currentState!.save();
                                            }

                                            print(
                                                "Invoice No : ${Global.invoiceno}");
                                            print(
                                                "Issue Date: ${Global.issuedate}");
                                            print(
                                                "Due Date: ${Global.duedate}");
                                          }
                                        }),
                                    ElevatedButton(
                                        onPressed: () {
                                          invoicenoKey.currentState!.validate();
                                          issuedateKey.currentState!.reset();
                                          duedateKey.currentState!.validate();

                                          invoicenoController.clear();
                                          issuedateController.clear();
                                          duedateController.clear();

                                          setState(() {
                                            Global.invoiceno = "";
                                            Global.issuedate = "";
                                            Global.duedate = "";
                                          });
                                        },
                                        child: const Text("Clear")),
                                  ],
                                ),
                              ],
                            )))
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
