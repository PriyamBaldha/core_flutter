import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:product_14_2/pages/Add_card_page.dart';
import 'package:product_14_2/pages/Homepage.dart';
import 'package:product_14_2/pages/Splash_screen.dart';
import 'package:product_14_2/pages/addd_detail_page.dart';
import 'package:product_14_2/pages/invoice_detail.dart';
import 'package:product_14_2/pdf_page.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
      .then((value) => runApp(MaterialApp(
            debugShowCheckedModeBanner: false,
            initialRoute: 'Splash_Screen',
            routes: {
              'HomePage': (context) => const HomePage(),
              'Splash_Screen': (context) => const Splash_Screen(),
              'AddCard': (context) => const AddCard(),
              'AddDetail': (context) => const AddDetail(),
              'InvoiceDetails': (context) => const InvoiceDetails(),
              'PDFpage': (context) => const PDFpage(),
            },
          )));
}
