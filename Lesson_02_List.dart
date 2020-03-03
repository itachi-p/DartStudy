main() {
  var list = <int>[];
  list.add(100);
  list.add(200);
  list.add(100 + list[1]);
  print(list);

  list[1] = 101;
  list[2] = list[1] + 100;
  list.add(list[2] + 100);
  print(list);
}
