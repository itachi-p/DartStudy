main() {
  var list1 = <int>[];
  // The following notation has the same meaning.
  //var list2 = List<int>();
  //List<int> list3 = [];

  list1.add(100);
  list1.add(200);
  list1.add(100 + list1[1]);
  print(list1);

  list1[1] = 101;
  list1[2] = list1[1] + 100;
  list1.add(list1[2] + 100);
  print(list1);
  assert(list1.elementAt(1) == 101);

  // The following is a runtime error:
  // RangeError (index): Invalid value: Not in range 0..3, inclusive: 4
  //print(list[4]);
  //list[4] = 400;

  var list4 = Iterable<int>.generate(5);
  print("\n list4 : \n $list4 (Iterable) \n ${list4.toList()} (.toList())");

  var list5 = List<String>.generate(10, (i) => "num" + i.toString());
  print('\n list5 : $list5');
}
