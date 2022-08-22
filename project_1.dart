import 'dart:io';

void main() {
  List<int> a = [];
  int i, n;

  stdout.write("Enter Value For Size of Array=");
  n = int.parse(stdin.readLineSync()!);

  for (i = 0; i < n; i++) {
    stdout.write("enter Value of a[$i]=");
    a.add(int.parse(stdin.readLineSync()!));
  }
  print("Negative Elements in Array:");

  for (i = 0; i < n; i++) {
    if (a[i] < 0) {
      print(a[i]);
    }
  }
}
