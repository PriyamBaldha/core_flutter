void main() {
  var a = [
    [1, 2, 3],
    [4, 5, 6],
    [7, 8, 9],
  ];
  var b = [
    [1, 2, 3],
    [4, 5, 6],
    [7, 8, 9],
  ];

  int i, j;
  var c = [
    [0, 0, 0],
    [0, 0, 0],
    [0, 0, 0],
  ];

  for (i = 0; i < 3; i++) {
    for (j = 0; j < 3; j++) {
      c[i][j] = a[i][j] + b[i][j];
    }
  }
  print(c);
}