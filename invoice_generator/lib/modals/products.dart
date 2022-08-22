class Products {
  final String productNo;
  final String productName;
  final int productPrice;
  int productQuantity = 0;

  Products({
    required this.productNo,
    required this.productName,
    required this.productPrice,
  });
}
