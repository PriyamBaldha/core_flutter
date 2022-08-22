import 'dart:io';

void main() {
  var a = [];
  var choice, i, n, val, pos;

  stdout.write("enter total number of array = ");
  n = int.parse(stdin.readLineSync()!);

  for (i = 0; i < n; i++) {
    stdout.write("enter Value of a[$i]=");
    a.add(int.parse(stdin.readLineSync()!));
  }
  print("\n1) insert\n2) update\n3) delete\nenter your choice = ");
  do {
    stdout.write("\nEnter Your Choice=");
    choice = int.parse(stdin.readLineSync()!);
    switch (choice) {
      case 1:
        print("enter the position to insert = ");
        val = int.parse(stdin.readLineSync()!);

        print("enter the value = ");
        pos = int.parse(stdin.readLineSync()!);

        for (i = n - 1; i >= pos; i--) {
          a.add(a[i]);
        }
        a[pos] = val;
        n++;

        for (i = 0; i < n; i++) {
          print("a[i]");
        }
        break;

      case 2:
        print("enter the position to update = ");
        pos = int.parse(stdin.readLineSync()!);
        print("enter the value = ");
        val = int.parse(stdin.readLineSync()!);

        a[pos] = val;
        for (i = 0; i < n; i++) {
          print("a[i]");
        }

        break;

      case 3:
        print("enter the position to delete = ");
        pos = int.parse(stdin.readLineSync()!);

        for (i = pos; i <= n - 1; i++) {
          a[i] = a[i + 1];
        }
        n--;
        print("\nAfter deleting value");
        for (i = 0; i < n; i++) {
          print("a[i]");
        }
        break;

      default:
        print("enter the valid choice");
        break;
    }
  } while (choice != 0);
}
