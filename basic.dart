import 'dart:core'; //it is optional to import as it by default gets imported
import 'dart:io';
void main(){
  //main function is where the programs starts 
  // similar to main() methods of c++ and java

//print(object);
  //since everything in in dart is an object 
  //print is coming from dart:core
  //print on console

  //print internally converts any object into the string
  //internally it does toString()
  //eg. print(10);//10 is integer object it converts to string

  //printToZone() --> it identifies the zonal  prints from(right to left of left to right) based on the language setting on your system

  /* String Interpolation

    1. To include a variable in a String dynamically
  */

  var a = 100; //type inference
  print('Hello Dart $a');
  print(a.runtimeType); //runtimeType tells what the variable has become during the runtime

  int a2 = 100;//it is the explicit way of specifying any variables
  //above one is the implicit way to define variable
  //var inspired from JS/Python
  //int, String inspired from c++, Java, c#

  print(a.runtimeType.runtimeType);//this give _Type as output
  // _Type is supertype .. it is daddy of all the types

  //we can also do + for printing as in Java
  print('Hello ' + ' World');
  String name = 'Abhishek';
  print('Hello ' + name);
  //but it is only possible if the one which is getting concatenated is of type String otherwise it will generate an error
  int number = 1000;
  //print('I\'m trying to add String with integer ' + number);
  print("Now this is possible " + number.toString());//as we have converted  number to String using .toString() methods
  //print method prints in new line

  //************************************************ */

  //to print in same line use write() method
  //it comes from 'dart:io' and we have to import it 
  stdout.write("hello dart");
  stdout.write("i'm printing in the same line");

  //to take input from the Screen
  var number2 = stdin.readLineSync();//this is responsible to read the line
  //and it will return String

  //so to convert any number to int
  int num = int.parse(number2);

}

void sum(){
  stdout.write("Enter first number\n");
  int firstNumber = int.parse(stdin.readLineSync());

  stdout.write("Enter second number\n");
  int secondNumber = int.parse(stdin.readLineSync());

  int result = firstNumber + secondNumber;
  //or to directly do that in print use $ with {}
  print('Sum of the number is ${firstNumber + secondNumber}');
}