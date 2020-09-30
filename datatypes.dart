
void main(){
  int a  =100;
  String t = a.toString();
  String w = "11";
  int b = int.parse(w);

  //to convert it into hexadecimal style
  //it is used as an conversion method
  //it is a convention
  //int result = int.parse(w, radix:16); //8 for octal
  //by default conversion number is 10
  print(b);

  int e; //as we have not assignment any value to it then it's value is null
  //The type of null is capital Null
  print(e);//null
  print(e.runtimeType);//Null
  print(e.runtimeType.runtimeType);//_Type as _Type is grandfather of all the types

  double ee = 100.20;//to store fractional value
  bool att = true;//store true false values only
  //boolean in java
  string2();
}

void stringDT(){
  String name = 'Abhishek';
  print(name);
  name = "Abhishek";//both quotes are fine for dart
  String msg = 'Dart also supports to write'
      'the multiline String'
      'as we haven\'t specified ; so it hasn\'t ended';
  print(msg);//behind the scene it is one line of String

  //to create a multi line string
  String msg2 = """ Hello
  this is a multi line String
  example """;

  String msg3 = ''' We can do above 
  using single quotes instead of using
  double quotes''';
  //e.g. to write T.c 
  print(msg2);

  //dart also have escape characters e.g. \n for new line

  //to get the single char
  
  print(name[0]);
  print('A Ascii is ${name.codeUnitAt(0)}');
  print('All Ascii ${name.codeUnits}'); //gives the array of ASCII 

  print("current " + name.runtimeType.toString());
  print("Base " + name.runtimeType.runtimeType.toString());

  //to check if the variable belongs to kind of object
  //i.e. to check the instanceOf any object
  print('Is ${name is String}');
  //i.e. we are checking that is name a kind of String
  //name is an object and check whethe it belongs to String class or not

}

void string2(){
    /*
  String are immutable
  immutable - unable to be changed

  1. When a String is declared it creates a memory in heap(memory)
  2. With every manipulation in String (updation, addition) it creates a new memory
  3. Dis. It is very bad for memory
  4. Solution: Use StringBuilder

  */
  String n1 = "Abhishek";
  String n2 = "Abhishek";
  print(n1 == n2);
  n1 = "Mukesh";
  print('After String manipulation ${n1 == n2}');

  /*
  Since memory is shareable and different variable having same value
  as 'Abhishek' then dart assigns same memory address to all 10 varible
  And when a varible gets change which means it's value has been changed
  the dart assigns new memory address to the changed variable
  Thus this way string is immutable
  */

  // StringBuffer doesnot have any single sync methods
}