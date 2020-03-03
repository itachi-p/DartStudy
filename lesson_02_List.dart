main() {
  // List

  var list1 = <int>[];
  // The following notation has the same meaning.
  var list2 = List<int>();
  List<int> list3 = [];

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

  // Set  Unordered collection of unique values

  Set set1 = {};
  set1.add(1000);
  Set set2 = const {};
  // Attempting to assign to a const variable results in a runtime error.
  //set2.add(200);

  Set<String> set3 = {};
  var set4 = <String>[];

  // Map  The object that associates the key with the value

  var map1 = Map<String, int>();
  map1['foo'] = 100;
  map1['bar'] = 200;
  print("\n map1 $map1");

  var map2 = {
    // Key:     Value
    "firstKey": "firstValue"
  }; // In this notation, it is a Map, not a Set.
  map2['secondKey'] = 'secondValue';
  print("\n map2 $map2");
}
