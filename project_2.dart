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

  for (i = 0; i < n; i++) {
    if (a[0] < a[i]) {
      a[0] = a[i];
    }
  }
  stdout.write("Largest elements array is = ${a[0]}");
}
