import 'dart:io';

import 'modals/products.dart';

class Global {
  static List<Products> appProductsList = [];

  static String? productName;
  static String? productPrice;
  static String? name;
  static String? email;
  static String? phone;
  static String? address1;
  static String? address2;
  static String? address3;
  static File? photoPath;
  static int? initialTaxValue;
  static String? invoiceno;
  static String? issuedate;
  static String? duedate;
}
