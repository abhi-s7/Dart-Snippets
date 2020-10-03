//alizing
//using library as a custom name using as operator
import 'dart:io' as myio;

//now myio can be used to extract th methods present in 'dart:io'
void main() {
  String name;
  //null aware operator
  print(name ?? "Name is not present");
  //otherwise

  // if(name == null){
  //   print('Name is null');
  // }else{
  //   print(name);
  // }

  //or
  //print(name != null ? '$name' : 'Name is not present');

  //null aware assignment operator
  int x1;
  x1 ??= 100;
  // i.e. if x1 is null then assign 100 to null
}

operator2() {
  String a = 'Abhishek';
  print(a is String); // it looks up for - a is operator of which class
  //equivalent to instanceOf
  //another way
  print(a is! List);
}

//usage of is operator
// void show(t){//implicit
void show(dynamic t) {
  //explicit

  if (t is String) {
    print('T is String ${t.toUpperCase()}');
  } else {
    if (t is List) {
      t.forEach((element) => print(element));
    }
  }
  //dart can perform overloading using dynamic type
  //as argument can be of any type
}

//cascae notations
void cascade(){
  List<int> list = List();
  // list.add(100);
  // list.add(200);
  // list.add(300);
  // list.add(100).add(200).add(300);//this gives error
     list..add(100)..add(200)..add(300);//this is possible as it ignores the result of previous add and keeps on adding
     



  /*
  Design Strategy - chaining pattern
  String name = 'Abhishek';
  Every method on String returns a String
  so name.toUpperCase().trim().substring();
  But this cannot be applied to normal list as its methods does not return the list
  so to discard list or result use ..
  because list.add(10); returns void 
  */

}
