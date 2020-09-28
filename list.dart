//import 'dart:core'; //it is implicit so no need to import
void main() {
  List<int> list = [1, 10, 5, 2, 11, 9, 20, 10];
  // list.forEach((ele)=>print(ele));
  //to create a subset of a list
  print(list.sublist(3, 5)); // >= 3 and <5
  //startIndex, lastIndex - 1;

  // + adds the two list

  //sklipping a list from an index
  Iterable<int> itr = list.skip(3); //it gives a iterable
  itr.forEach((ele) => print(ele));

  //can be done as below
  list.skip(3).forEach((ele) => print(ele));
  String str = list.join('=>'); //it will segregate the elements and put =>
  print('Join is $str'); //Join is 1=>10=>5=>2=>11=>9=>20=>10

  //sort
  list.sort((a, b) => a - b);
  /*
  1. 1 - 10 = -ve so it is in ascending
  2. 10 - 5 = +ve then it will do the exchanging
  3. If we want to do descending then b - a
  */
  print('After sort $list');

  //summarization
  List<String> name = ['Abhishek', 'Shyam', 'Amit'];
  var x1 = name.firstWhere((name) => name.startsWith('A'));
  print('First one $x1');

  var y = [10,20,30,40,50,60];

  print("Fold....");
  int r1 = y.fold(0, (previousValue, element) => previousValue);
  print(r1);

  //property 
  list.length;
  list.isEmpty;
  list.isNotEmpty;
}

printIt(ele) {
  print('Element is $ele');
}

void traversalFn() {
  //traversing a list
  List<int> arr = [10, 2, 30, 20, 101];
  //1. old school
  for (int i = 0; i < arr.length; i++) {
    print(arr[i]);
  }

  //2. Iterator
  for (int element in arr) {
    //no start point no end point
    //works on hasNext() and next()
    print(element);
  }

  //3. forEach
  arr.forEach(printIt); //we are passing a function
  //and with every element it extracts from array then add it to printIt function

  //4. Define the funciton inside forEach
  arr.forEach((ele) {
    print('Element is $ele');
  });

  //5. using fat arrow
  arr.forEach((ele) => print(ele));

  //nested list
  List<List<int>> arr2 = [
    [10, 20],
    [30, 40],
    [50, 60, 70]
  ];

  var arr3 = [
    [10, 20],
    [1, 2, 3],
    [50, 60, 70, 90]
  ];

  //printing multidimensional elements
  arr3.forEach((ele) {
    ele.forEach((element) {
      print('2d element: $element');
    });
  });
  // print('\$$$$$$$$$$$$$$$$$$$$$$$$$$');
  arr3.forEach((ele) => ele.forEach((element) => print('Element : $element')));
}

void listFn2() {
  List<int> arr = [10, 20, 30, 40, 50];
  int result = add(arr.elementAt(0), arr.last);
  print(result);
  print(adder(40, 50));
  print(adder('Abhishek ', 'Sharma'));

  //Anonymous Functions - Functions that does not have any name
  var w = () {
    print('W is a variable of Functions type');
  }; //it should be local function
  print(w); //Closure: () => Null
  //as it is not returning anything
  w(); //this will call the function

  /*
  Thus variavle can hold 1. Data 2. Functions
  i.e. variable can hold logic as it contains functions
  it can be passed to a functions and return a function
  Thus Variable is much much powerful and it is due to anonymous functions
  */

  //we Also have a Type Funciton
  Function x = () {
    print('X is also an Anonymous Function ');
  };
  x();
  print(x.runtimeType); //it will print the thing which we are returning
  print(add.runtimeType); // (int, int) => int

  //Fat Arrow style inspired from Arrow function
  var add2 = (x, y) => x + y; //only one liner
}

//functions declarations style
int add(int x, int y) {
  return x + y;
}

adder(x, y) {
  //no datatype and it can accept anything
  return x + y;
}

void listFn() {
  //defining an array
  var arr = [10, 20, 30, 40, 50];
  //var --> keyword, arr --> variable, [] --> it is a list
  //dart's array is more powerfull as it is list which is class behind so it has pre build
  //features such as sorting, insertions, deletion etc
  // List list = [10, 20, 30, 40, 50];

  //array is collection of object not similar elements
  var mix = [10, 'Abhishek', true, 90.2];

  //Generic list
  List<String> ls = ['Abhishek', 'Sharma', 'Hello world'];
  List<int> li = [1, 2, 3, 4, 5];
  List<String> items = ['Mobiles', 'Led TV', 'Other  shopping items'];
  print("Printing all the items from a list $items");

  List<int> list = [10, 20, 30, 40, 50]; //explicit way
  //extracting elements from the list
  int first = list[0]; //accessing
  //another method
  list.elementAt(0);
  list[1] = 1000; //updating
  print(list);
  //whenever we are printing it is converting object.toString()
  print(list.toString());
  print(list.runtimeType); //List<int>
  var listVar = [10, 20, 30]; //implicit way ->
  print(listVar.runtimeType);

  //add in list
  list.add(2000); //add at last
  list.insert(1, 999);

  print('After add list is $list');
  //searching
  int index = list.indexOf(20);
  print('Index of 20 is $index');
  //look from last index
  print('Index from last is ${list.lastIndexOf(40)}');

  list.removeAt(0);
  list.removeLast();
  list.remove(1000);
  list.removeRange(2, 3);
  list.clear(); //clear all elements
  list.contains(100); //boolean result
}
