void main() {
  var set = {"Abhishek", "Amit", "Abhishek"};
  //it will remove duplicate elements
  print(set);

  //It can also be made in Java form
  Set<int> set2 = new Set();
  set2.add(100);
  set2.add(20);
  set2.add(30);
  set2.add(10);
  set2.add(40);
  set2.add(50);

  set2.forEach((element) => print(element));
  // set2.clear();//clear the whole list
  set2.contains(20);
  set.elementAt(1);

  //properties and is similar to that of list
  set.first;
  set.last;
  set.length;
  set.isEmpty;

  //special methods that are not in list
  var s = set2.difference({10}); //this gives a new set of uncommon elements
  print(s);
  var s2 = set2.intersection({10, 50}); //which is common between two
  print('Intersection $s2');

  s.any((element) => element > 30);

  set2
      .skipWhile((value) => value > 20)
      .forEach((element) => print('Skip while $element'));
  //based on condition it skips the values of leading elements
  //once the condition is false then it will give rest of the methods

  set2.takeWhile((ele) => ele > 30).forEach((ele) => print('Take while $ele'));
  //until the condtion is not satisfied print the element i.e. take the elements till the condition is true

  s.toList().sort();//convet the set to list
}
