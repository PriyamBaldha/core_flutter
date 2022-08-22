import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:printing/printing.dart';
import 'package:path_provider/path_provider.dart';
import 'globals.dart';
import 'modals/products.dart';

class PDFpage extends StatefulWidget {
  const PDFpage({Key? key}) : super(key: key);

  @override
  State<PDFpage> createState() => _PDFpageState();
}

class _PDFpageState extends State<PDFpage> {
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

  final pdf = pw.Document();

  final image = pw.MemoryImage(
    File(Global.photoPath!.path).readAsBytesSync(),
  );

  List<Products> get soldProducts => [];
  @override
  initState() {
    super.initState();
    pdf.addPage(
      pw.Page(
        pageFormat: PdfPageFormat.a4,
        build: (pw.Context context) {
          return pw.Container(
            child: pw.Column(
                crossAxisAlignment: pw.CrossAxisAlignment.start,
                children: [
                  pw.Text(
                    "INVOICE:",
                    style: const pw.TextStyle(
                      fontSize: 15,
                      color: PdfColors.grey,
                    ),
                  ),
                  pw.Divider(color: PdfColors.grey),
                  pw.SizedBox(height: 5),
                  pw.Row(children: [
                    pw.Container(
                      height: 50,
                      width: 50,
                      child: pw.Image(image),
                    ),
                    pw.Spacer(),
                    pw.Column(
                      children: [
                        pw.Text(
                          "Pramukh Electronics",
                          style: pw.TextStyle(
                            fontSize: 20,
                            fontWeight: pw.FontWeight.bold,
                            color: PdfColors.blue,
                          ),
                        ),
                        pw.SizedBox(height: 5),
                        pw.Text(
                          "shop no G-102,103,104,Cristial Plaza,Sliver chock,Surat",
                          style: pw.TextStyle(
                            fontSize: 15,
                            fontWeight: pw.FontWeight.bold,
                            color: PdfColors.grey,
                          ),
                        )
                      ],
                    ),
                    pw.Spacer(),
                    pw.Container(
                      height: 50,
                      width: 50,
                      child: pw.Image(image),
                    ),
                  ]),
                  pw.SizedBox(height: 5),
                  pw.Divider(color: PdfColors.grey),
                  pw.Row(
                    crossAxisAlignment: pw.CrossAxisAlignment.start,
                    children: [
                      pw.Expanded(
                        flex: 2,
                        child: pw.Column(
                          crossAxisAlignment: pw.CrossAxisAlignment.start,
                          children: [
                            pw.SizedBox(height: 5),
                            pw.Text(
                              "BILL TO",
                              style: pw.TextStyle(
                                fontSize: 12,
                                fontWeight: pw.FontWeight.bold,
                                color: PdfColors.black,
                              ),
                            ),
                            pw.SizedBox(height: 2),
                            pw.Text("${Global.name}",
                                style: const pw.TextStyle(
                                  fontSize: 12,
                                  color: PdfColors.grey,
                                )),
                            pw.SizedBox(height: 2),
                            pw.Text(
                              "${Global.phone}",
                              style: const pw.TextStyle(
                                fontSize: 12,
                                color: PdfColors.grey,
                              ),
                            ),
                          ],
                        ),
                      ),
                      pw.Expanded(
                        child: pw.Column(
                          crossAxisAlignment: pw.CrossAxisAlignment.start,
                          children: [
                            pw.SizedBox(height: 5),
                            pw.Text("Issue Date and Time",
                                style: pw.TextStyle(
                                  fontSize: 12,
                                  fontWeight: pw.FontWeight.bold,
                                  color: PdfColors.black,
                                )),
                            pw.SizedBox(height: 2),
                            pw.Text("${Global.issuedate}",
                                style: const pw.TextStyle(
                                  fontSize: 12,
                                  color: PdfColors.grey,
                                )),
                            pw.SizedBox(height: 5),
                            pw.Text("Due Date and Time",
                                style: pw.TextStyle(
                                  fontSize: 12,
                                  fontWeight: pw.FontWeight.bold,
                                  color: PdfColors.black,
                                )),
                            pw.SizedBox(height: 2),
                            pw.Text(
                              "${Global.duedate}",
                              style: const pw.TextStyle(
                                fontSize: 12,
                                color: PdfColors.grey,
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  pw.SizedBox(height: 20),
                  pw.Container(
                    color: PdfColors.lightBlue,
                    height: 25,
                    child: pw.Row(
                      mainAxisAlignment: pw.MainAxisAlignment.start,
                      children: [
                        pw.Expanded(
                          flex: 8,
                          child: pw.Text(
                            "Description",
                            style: pw.TextStyle(
                              fontSize: 12,
                              fontWeight: pw.FontWeight.bold,
                              color: PdfColors.black,
                            ),
                          ),
                        ),
                        pw.Expanded(
                            child: pw.Text("Qty",
                                style: pw.TextStyle(
                                  fontSize: 12,
                                  fontWeight: pw.FontWeight.bold,
                                  color: PdfColors.black,
                                ))),
                        pw.Expanded(
                            child: pw.Text("Unit Price",
                                style: pw.TextStyle(
                                  fontSize: 12,
                                  fontWeight: pw.FontWeight.bold,
                                  color: PdfColors.black,
                                ))),
                        pw.Expanded(
                          child: pw.Text(
                            "Amount",
                            style: pw.TextStyle(
                              fontSize: 12,
                              fontWeight: pw.FontWeight.bold,
                              color: PdfColors.black,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  pw.Divider(color: PdfColors.black, thickness: 1),
                  pw.Row(
                    children: [
                      pw.Column(
                        children: [
                          pw.Text("Mobile"),
                          pw.Text("Watch"),
                          pw.Text("Tablet"),
                          pw.Text("Laptop"),
                          pw.Text("PC"),
                          pw.Text("Earphone"),
                          pw.Text("Machine"),
                          pw.Text("Headphone"),
                          pw.Text("Speaker"),
                          pw.Text("XeroxMachine"),
                        ],
                      ),
                      pw.SizedBox(width: 280),
                      pw.Column(
                        children: [
                          pw.Text("1"),
                          pw.Text("2"),
                          pw.Text("1"),
                          pw.Text("1"),
                          pw.Text("2"),
                          pw.Text("2"),
                          pw.Text("1"),
                          pw.Text("2"),
                          pw.Text("2"),
                          pw.Text("1"),
                        ],
                      ),
                      pw.SizedBox(width: 14),
                      pw.Column(
                        children: [
                          pw.Text("16500"),
                          pw.Text("1500"),
                          pw.Text("10500"),
                          pw.Text("66500"),
                          pw.Text("35500"),
                          pw.Text("500"),
                          pw.Text("16500"),
                          pw.Text("1500"),
                          pw.Text("16500"),
                          pw.Text("6500"),
                        ],
                      ),
                      pw.SizedBox(width: 14),
                      pw.Column(
                        children: [
                          pw.Text("16500"),
                          pw.Text("3000"),
                          pw.Text("10500"),
                          pw.Text("66500"),
                          pw.Text("71000"),
                          pw.Text("1000"),
                          pw.Text("16500"),
                          pw.Text("3000"),
                          pw.Text("33000"),
                          pw.Text("6500"),
                        ],
                      ),
                    ],
                  ),
                  pw.Divider(color: PdfColors.black, thickness: 1),
                  pw.Container(
                    color: PdfColors.lightBlue,
                    height: 25,
                    child: pw.Row(
                      mainAxisAlignment: pw.MainAxisAlignment.start,
                      children: [
                        pw.Expanded(
                          flex: 8,
                          child: pw.Text(
                            "Total Amount",
                            style: pw.TextStyle(
                              fontSize: 12,
                              fontWeight: pw.FontWeight.bold,
                              color: PdfColors.black,
                            ),
                          ),
                        ),
                        pw.SizedBox(width: 47),
                        pw.Expanded(
                            child: pw.Text("15",
                                style: pw.TextStyle(
                                  fontSize: 12,
                                  fontWeight: pw.FontWeight.bold,
                                  color: PdfColors.black,
                                ))),
                        //  pw.SizedBox(width: 1),
                        pw.Expanded(flex: 2, child: pw.Text("")),
                        //pw.SizedBox(width: 1),
                        pw.Expanded(
                          child: pw.Text(
                            "227500",
                            style: pw.TextStyle(
                              fontSize: 12,
                              fontWeight: pw.FontWeight.bold,
                              color: PdfColors.black,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  pw.Divider(
                    color: PdfColors.black,
                    thickness: 1,
                    borderStyle: const pw.BorderStyle(phase: 2),
                  ),
                  pw.Text(
                    "Total Tax:11375.0",
                  )
                ]),
          );
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "PDF",
            style: TextStyle(fontSize: 25, color: Colors.white),
          ),
          leading: IconButton(
            onPressed: () {
              Navigator.of(context).pushNamed('HomePage');
            },
            icon: Icon(Icons.arrow_back_ios),
            color: Colors.white,
          ),
          centerTitle: true,
          actions: [
            IconButton(
              onPressed: () async {
                Directory? dir = await getExternalStorageDirectory();

                File file = File("${dir!.path}/resume.pdf");

                print("Priyam");
                print(file);
                print("Baldha");

                await file.writeAsBytes(await pdf.save());
              },
              icon: const Icon(Icons.save_alt),
            ),
            IconButton(
              onPressed: () async {
                Uint8List bytes = await pdf.save();
                await Printing.layoutPdf(onLayout: ((format) => bytes));
              },
              icon: Icon(Icons.print),
            )
          ],
        ),
        body: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "INVOICE",
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.grey,
                ),
              ),
              const Divider(color: Colors.grey),
              const SizedBox(height: 5),
              Row(
                children: [
                  CircleAvatar(
                    backgroundImage: FileImage(Global.photoPath!),
                    radius: 20,
                    backgroundColor: Colors.grey,
                  ),
                  const Spacer(),
                  Column(
                    children: const [
                      Text(
                        "Pramukh Electronics",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue,
                        ),
                      ),
                      SizedBox(height: 5),
                      Text(
                        "shop no G-102,103,104,Cristial Plaza,Sliver chock,Surat",
                        style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey,
                        ),
                      )
                    ],
                  ),
                  const Spacer(),
                  CircleAvatar(
                    backgroundImage: FileImage(Global.photoPath!),
                    radius: 20,
                    backgroundColor: Colors.grey,
                  ),
                ],
              ),
              const SizedBox(height: 5),
              const Divider(color: Colors.grey),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 2,
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(height: 5),
                          const Text(
                            "BILL TO",
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                          const SizedBox(
                            height: 2,
                          ),
                          Text(
                            "${Global.name}",
                            style: const TextStyle(
                              fontSize: 12,
                              color: Colors.grey,
                            ),
                          ),
                          Text(
                            "${Global.phone}",
                            style: const TextStyle(
                              fontSize: 12,
                              color: Colors.grey,
                            ),
                          ),
                        ]),
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 5),
                        const Text("Issue Date and Time",
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            )),
                        const SizedBox(height: 2),
                        Text("${Global.issuedate}",
                            style: const TextStyle(
                              fontSize: 12,
                              color: Colors.grey,
                            )),
                        const SizedBox(height: 5),
                        const Text("Due Date and Time",
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            )),
                        const SizedBox(height: 2),
                        Text("${Global.duedate}",
                            style: const TextStyle(
                              fontSize: 12,
                              color: Colors.grey,
                            )),
                      ],
                    ),
                  )
                ],
              ),
              SizedBox(height: 20),
              Container(
                color: Colors.lightBlue,
                height: 25,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const [
                    Expanded(
                      flex: 8,
                      child: Text(
                        "Description",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    Expanded(
                        child: Text("Qty",
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ))),
                    Expanded(
                        child: Text("Unit Price",
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ))),
                    Expanded(
                      child: Text(
                        "Amount",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const Divider(color: Colors.black, thickness: 1),
              Row(
                children: [
                  Column(
                    children: const [
                      Text("Mobile"),
                      Text("Watch"),
                      Text("Tablet"),
                      Text("PC"),
                      Text("Earphone"),
                      Text("Machine"),
                      Text("Headphone"),
                      Text("Speaker"),
                      Text("XeroxMachine"),
                    ],
                  ),
                  const SizedBox(
                    width: 175,
                  ),
                  Column(
                    children: const [
                      Text("1"),
                      Text("2"),
                      Text("1"),
                      Text("1"),
                      Text("2"),
                      Text("2"),
                      Text("1"),
                      Text("2"),
                      Text("2"),
                      Text("1"),
                    ],
                  ),
                  const SizedBox(width: 10),
                  Column(
                    children: const [
                      Text("16500"),
                      Text("1500"),
                      Text("10500"),
                      Text("66500"),
                      Text("33500"),
                      Text("500"),
                      Text("16500"),
                      Text("1500"),
                      Text("16500"),
                      Text("6500"),
                    ],
                  ),
                  const SizedBox(width: 10),
                  Column(
                    children: const [
                      Text("16500"),
                      Text("3000"),
                      Text("10500"),
                      Text("66500"),
                      Text("71000"),
                      Text("1000"),
                      Text("16500"),
                      Text("3000"),
                      Text("33000"),
                      Text("6500"),
                    ],
                  ),
                ],
              ),
              const Divider(color: Colors.black, thickness: 1),
              Container(
                color: Colors.lightBlue,
                height: 25,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const [
                    Expanded(
                      flex: 8,
                      child: Text(
                        "Total Amount",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    Expanded(
                        child: Text("15",
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ))),
                    Expanded(flex: 2, child: Text("")),
                    Expanded(
                      child: Text(
                        "RS.227500",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const Divider(
                color: Colors.black,
                thickness: 1,
              ),
              const Text(
                "Total Tax:11375.0",
              )
            ],
          ),
        ),
      ),
    );
  }

  String getTotal(List<Products> products) {
    return products
        .fold(
            0,
            (int prev, element) =>
                prev + (element.productPrice * element.productQuantity))
        .toStringAsFixed(0);
  }
}
